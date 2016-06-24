@; Michael W. Schultz | ENEE440 - Dr. Hawkins | Sec: 0101
@; UID: 109896238 | Aug. 10, 2013 | Homework 5

@; This file contains the following functions called from main.c (prototypes in main.c)				

@; Mike's Procedure Call Standard:
@; 1) Callee-saves convention used for all registers except R0, which must be overwritten with
@;    the  return value.  Even if a function is void and therefore returns no value, R0 is
@;	  still assumed to be overwritten, and so must always be considered a caller-saves register.
@; 2) All functions begin with a standard prologue and end with a standard epilogue.
@; 3) The instruction BL is used to call subroutines.

@; Important Notes For Posterity:
@; 1) ODR register sets with logic-0 (inverted), but you set BSRR register with logic-1 (normal).
@; 2) The anode driver uses low voltage to ultimately get
@;    high voltage to the LED (I think the transistor circuit inverts it).  In Conclusion:
@;	  WE MUST OUTPUT LOW VOLTAGE AT THE CATHODE PINS AND THE ANODE PINS TO TURN ON THE LEDS!!!!!!!!!!!!!
@; 3) The switches connect an output pin and an input pin.  
@;    Output pins: B9, C10, C11.  Input pins: B0, B1, B6, D2
@;    The switch output pins are high by default (high voltage, ODR reads 1).  The switch input pins
@;    are also high by default.  This means if we make the ouput pin low and the input pin goes low,
@;    then that switch has been hit.
@; 4) If I use the register renaming directive .req (which simply relabels a processor register like r0
@;	  to something more memorable, like avg), then I will use the convention of preceding the name with 
@;    a lower case r, e.g. "rAvg", to avoid confusion. (example: rRet .req r0)


	.syntax unified			@; ARM Unified Assembler Language
	.thumb					@; Use thumb instructions only.
	
@; Begin RAM allocation for variables--------------------------------------
	.data
	.align 4
@;cycleCnt:	.word	0x00000000	
wallClk:	.word	0x00000000

	
@; Begin constant definitions (symbol macros: do not use storage)----------
@; Base addresses are found on page 53 of rm0090
	.equ NVIC_BASE1,			0xE000E100
	.equ NVIC_BASE2,			0xE000E104

	.equ TIM2_INTERRUPT,		0x000000B0

	.equ GPIOA_BASE, 			0x40020000
	.equ GPIOB_BASE, 			0x40020400
	.equ GPIOC_BASE, 			0x40020800
	.equ GPIOD_BASE, 			0x40020C00
	.equ GPIOE_BASE, 			0x40021000
	.equ GPIOF_BASE, 			0x40021400
	.equ GPIOG_BASE, 			0x40021800
	.equ GPIOH_BASE, 			0x40021C00
	.equ GPIOI_BASE, 			0x40022000
	.equ RCC_BASE, 				0x40023800
	.equ TIM2_BASE,				0x40000000
	.equ TIM3_BASE,				0x40000400
	
	.equ GPIO_MODER_OFFSET,		0x0
	.equ GPIO_IDR_OFFSET,		0x10
	.equ GPIO_ODR_OFFSET, 		0x14
	.equ GPIO_BSRR_OFFSET,		0x18
	.equ RCC_AHB1ENR_OFFSET, 	0x30

	.equ GPIOA_MODER,			0x40020000
	.equ GPIOA_OTYPER,			0x40020004
	.equ GPIOA_ODR,				0x40020014
	.equ GPIOA_BSRR,			0x40020018
	.equ GPIOB_MODER,			0x40020400
	.equ GPIOB_OTYPER,			0x40020404
	.equ GPIOB_IDR,				0x40020410
	.equ GPIOB_BSRR,			0x40020418
	.equ GPIOC_IDR,				0x40020810
	.equ GPIOC_ODR,				0x40020814
	.equ GPIOC_BSRR,			0x40020818
	.equ GPIOC_MODER,			0x40020800
	.equ GPIOC_OTYPER,			0x40020804
	.equ GPIOD_MODER,			0x40020C00
	.equ GPIOD_IDR,				0x40020C10
	.equ GPIOD_PUPDR,			0x40020C0C
	
	.equ RCC_AHB1ENR,			0x40023830
	.equ RCC_APB1ENR,			0x40023840
	
	.equ TIM2_CR1,				0x40000000
	.equ TIM2_DIER,				0x4000000c
	.equ TIM2_SR,				0x40000010
	.equ TIM2_EGR,				0x40000014
	.equ TIM2_CNT, 				0x40000024
	.equ TIM2_PSC,				0x40000028
	.equ TIM2_ARR,				0x4000002c
	
	.equ TIM3_CR1,				0x40000400
	.equ TIM3_DIER,				0x4000040c
	.equ TIM3_SR,				0x40000410
	.equ TIM3_EGR,				0x40000414
	.equ TIM3_CNT, 				0x40000424
	.equ TIM3_PSC,				0x40000428
	.equ TIM3_ARR,				0x4000042c
	
	.equ C_OTYPER_MASK,			0xfffff3c0
	
	.macro sampleSwitchMacro bsrrAdr, idrAdr, bsrrVal
		@; Make switch's output pin low.
		str \bsrrVal, [\bsrrAdr]
		@; Wait for output value to settle through.
		bl wait						
		@; get value at switch's input pin.
		ldr r0, [\idrAdr]			@; r9: GPIOD_IDR value
		and r0, r0, r10				@; mask out input bit
		@; Remember to put switch back to high!
		lsr \bsrrVal, #16
		str \bsrrVal, [\bsrrAdr]
	.endm
	
@; Begin code section------------------------------------------------------
@; I'm going to use a strict callee-saves convention to make life easier.
	.text
	
	@; External function, from C file (mikes_project_main.c)
	.extern mikes_display_update
	
	@; This function initializes the pins used for the display output.  The steps are:
	@; 1) Enable it in the RCC register group.
	@; 2) Go to GPIO register set; set MODER to output.
	@; 3) Set OTYPER (output type) to push-pull.
	@; 4) Set OSPEEDR (output speed) to fast - 50MHz.
	@; 5) Set PUPDR (pull-up / pull-down) to pull-up.
	@; We must do this for 8 output pins - A0, A1, A4, A5, A7, and C0, C2, C3 // deprecated?
	.global mikes_IO_init
	.thumb_func
mikes_IO_init:

	@; 1) Standard prologue.
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
	
	@; 2) Enable pins in RCC->AHB1ENR.  O disables, 1 enables.
	ldr r0, =RCC_AHB1ENR		@; r0: RCC_AHB1ENR address
	ldr r1, [r0]				@; r1: value at ahb1enr.
	@; OR this value with bitpattern for pins to be turned on.
	orr r1, r1, 0xf				@; r1: old ahb1enr bitpattern with A B, c, and D turned on.
	str r1, [r0]
	
	
	@; 3) Set MODER.
	ldr r0, =GPIOA_MODER		@; r0: GPIOA_MODER address
	ldr r1, [r0]				@; r1: GPIOA_MODER value
	@; We must first reset bit duplets we want to 0, so that an OR bitmask will overwrite them entirely.
	@; This is done with an AND bitmask.
	@; Start with GPIOA->MODER
	ldr r2, =0xffff00f0
	and r1, r1, r2				@; Relevant values cleared to receive.
	ldr r2, =0x00005505
	orr r1, r1, r2				@; Relevant values received.
	str r1, [r0]				@; GPIOA_MODER set!
	@; Time to do gpioC->MODER.
	ldr r3, =GPIOC_MODER		@; r3: GPIOC_MODER address
	ldr r1, [r3]
	ldr r2, =0xfc0ff000
	and r1, r1, r2
	ldr r2, =0x00500555
	orr r1, r1, r2
	str r1, [r3]				@; GPIOC_MODER set!
	@; Time to do gpioB->MODER.
	ldr r3, =GPIOB_MODER		@; r3: GPIOB_MODER address
	ldr r1, [r3]
	ldr r2, =0xfff3c3f0
	and r1, r1, r2
	ldr r2, =0x00040000
	orr r1, r1, r2
	str r1, [r3]				@; GPIOB_MODER set!
	@; Time to do gpioD->MODER.
	ldr r3, =GPIOD_MODER		@; r3: GPIOD_MODER address
	ldr r1, [r3]
	ldr r2, =0xffffffcf
	and r1, r1, r2
	str r1, [r3]				@; GPIOD_MODER set!
	
	
	@; 4) set GPIOA->OTYPER and GPIOC->OTYPER.
	ldr r0, =GPIOA_OTYPER		@; r0: GPIOA->OTYPER address
	@; Zero out pins 0,1,4,5,6,7.
	ldr r1, [r0]
	and r1, r1, #0xffffff0c
	str r1, [r0]
	@; Now do reg C.  Zero pins 0,1,2,3,4,5, 10,11.
	ldr r3, =GPIOC_OTYPER		@; r3: GPIOC->OTYPER address
	ldr r1, [r3]				@; r1: gpioc-otyper value
	ldr r2, =C_OTYPER_MASK
	and r1, r1, r2
@;	and r1, r1, #0xfffff3c0
	str r1, [r3]
	@; Now do reg B.  Zero pin 9.
	ldr r4, =GPIOB_OTYPER		@; r2: GPIOb->OTYPER address
	ldr r1, [r4]				@; r1: gpiob-otyper value
	and r1, r1, #0xfffffdff
	str r1, [r4] 
	
	@; remember: r0=GPIOA_OTYPER, r1=tmp, r2=tmp, r3=GPIOC_OTYPER, r4 =GPIOB_OTYPER
	
	
	@; 5) Set OSPEEDR.
	adds r0, r0, #4
	adds r4, r4, #4
	adds r3, r3, #4
	ldr r1, [r0]				@; r1: gpioA-ospeedr value
	ldr r2, =0xffff00f0
	and r1, r1, r2				@; Relevant values cleared to receive.
	ldr r2, =0x0000aa0a
	orr r1, r1, r2				@; Relevant values received.
	str r1, [r0]				@; gpioA-ospeedr set!
	@; On to gpio C.
	ldr r1, [r3]
	ldr r2, =0xff0ff000
	and r1, r1, r2				@; Relevant values cleared to receive.
	ldr r2, =0x00a00aaa
	orr r1, r1, r2				@; Relevant values received.
	str r1, [r3]				@; gpioA-ospeedr set!
	@; On to gpio B.
	ldr r1, [r4]				@; r1: value at GPIOB_OTYPER
	ldr r2, =0xfff3ffff
	and r1, r1, r2				@; relevant values cleared to receive
	ldr r2, =0x00080000
	orr r1, r1, r2
	str r1, [r4]
	
	@; 6) Set PUPDR to pull-up (01).
	adds r0, r0, #4
	adds r4, r4, #4
	adds r3, r3, #4
	ldr r1, [r0]
	ldr r2, =0xffff00f0
	and r1, r1, r2				@; Relevant values cleared to receive.
	ldr r2, =0x00005505
	orr r1, r1, r2				@; Relevant values received.
	str r1, [r0]				@; GPIOA_PUPDR set!
	@; Time to do gpioC->PUPDR.
	ldr r1, [r3]
	ldr r2, =0xfc0ff000
	and r1, r1, r2
	ldr r2, =0x01500555
	orr r1, r1, r2
	str r1, [r3]				@; GPIOC_PUPDR set!
	@; Time to do gpioB_PUPDR.
	ldr r1, [r4]
	ldr r2, =0xfff3c3f0
	and r1, r1, r2				@; relevant values cleared to receive
	ldr r2, =0x00041405
	orr r1, r1, r2
	str r1, [r4]
	@; Time to do gpioD_PUPDR.
	ldr r5, =GPIOD_PUPDR
	ldr r1, [r5]				@;value
	ldr r2, =0xffffffcf			@;and mask
	and r1, r1, r2				@; r1: pupdr value with rel value zeroed
	ldr r2, =0x00000010
	orr r1, r1, r2
	str r1, [r5]
	
	@; 7) Standard epilogue.
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	


	@; In timer_init, we initialize the TIM2 general-purpose timer.   This bad boy is gonna count down continuously,
	@; resetting and triggering an interrupt everytime it underflows.  
	.global timer_init
	.thumb_func
timer_init:

	@; 1) Standard prologue.
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
	@; 2) Enable TIM2 from RCC_APB1ENR.
	ldr r1, =RCC_APB1ENR
	ldr r2, [r1]
	mov r3, #1
	orr r2, r2, r3
	str r2, [r1]
	
	@; Set TIM2 prescaler to 0
	ldr r1, =TIM2_PSC
	mov r2, #0
	str r2, [r1]
	
	@; 4) Enable update interrupt for TIM2, using TIM2_DIER.
	ldr r1, =TIM2_DIER
	mov r2, #0x1
	str r2, [r1]	
	
	@; Pre-load countdown value.
	ldr r1, =TIM2_ARR
	str r0, [r1]
	
	@; 3) Configure TIM2 settings from TIM2_CR1.
	ldr r1, =TIM2_CR1
	mov r2, #0x81
	str r2, [r1]
	
	@; trigger update event to reload timer registers (TIM2_EGR)
	ldr r1, =TIM2_EGR
	mov r2, #1
	str r2, [r1]
	
	@; Reset TIM2_SR (status register)
	mov r1, #0
	ldr r2, =TIM2_SR
	str r1, [r2]
	
	@; 5) enable the TIM2 interrupt in the NVIC table
	ldr r1, =NVIC_BASE1			@; ISER1 (interrupt set-enable register) r1: address of ISER1
	ldr r2, [r1]				@; r2: value of ISER1
	mov r3, #0x10000000		    @; or mask for TIM2 IRQ enable
	orr r2, r3, r2				@; r2: new ISER1 value
	str r2, [r1]
	
	@; 7) Standard epilogue.
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	
	
	
	
	
	
	
	@; In wallClk_init, we initialize the TIM3 general-purpose timer.   This bad boy is gonna count down continuously,
	@; resetting and triggering an interrupt everytime it underflows.  
	.global wallClk_init
	.thumb_func
wallClk_init:

	@; 1) Standard prologue.
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
	@; 2) Enable TIM2 from RCC_APB1ENR.
	ldr r1, =RCC_APB1ENR
	ldr r2, [r1]
	mov r3, #2
	orr r2, r2, r3
	str r2, [r1]
	
	@; Set TIM3 prescaler so that we get 16^4 times slower 
	ldr r1, =TIM3_PSC
	mov r2, #0
	str r2, [r1]
	
	@; 4) Enable update interrupt for TIM3, using TIM3_DIER.
	ldr r1, =TIM3_DIER
	mov r2, #0x1
	str r2, [r1]	
	
	@; Pre-load countdown value.
	ldr r1, =TIM3_ARR
	str r0, [r1]
	
	@; 3) Configure TIM3 settings from TIM3_CR1.
	ldr r1, =TIM3_CR1
	mov r2, #0x81
	str r2, [r1]
	
	@; trigger update event to reload timer registers (TIM3_EGR)
	ldr r1, =TIM3_EGR
	mov r2, #1
	str r2, [r1]
	
	@; Reset TIM3_SR (status register)
	mov r1, #0
	ldr r2, =TIM3_SR
	str r1, [r2]
	
	@; 5) enable the TIM3 interrupt in the NVIC table
	ldr r1, =NVIC_BASE1			@; ISER1 (interrupt set-enable register) r1: address of ISER1
	ldr r2, [r1]				@; r2: value of ISER1
	mov r3, #0x20000000		    @; or mask for TIM3 IRQ enable
	orr r2, r3, r2				@; r2: new ISER1 value
	str r2, [r1]	
	
	@; 7) Standard epilogue.
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	
	
	
	
	@; This is the interrupt request handler for the general-purpose timer, TIM2.  When TIM2 counts up to a predetermined
	@; value, an interrupt flag is raised and we're redirected to this function.
	@; DON'T TOUCH R0.
	.global TIM2_IRQHandler
	.thumb_func
TIM2_IRQHandler:
	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
	@; Reset TIM2_SR (status register)
	mov r1, #0
	ldr r2, =TIM2_SR
	str r1, [r2]
	
	@; Pause clock
	
	@; update display
	bl mikes_display_update
	
	@; reset clock
	mov r1, #0
	ldr r2, =TIM2_CNT
	str r1, [r2]

	@; 7) Standard epilogue.
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	
	
	pop {pc}
	
	
	
	
	
	
		@; This is the interrupt request handler for the general-purpose timer, TIM3.  When TIM2 counts up to a predetermined
	@; value, an interrupt flag is raised and we're redirected to this function.
	@; DON'T TOUCH R0.
	
	@; More specifically, we're using TIM3 interrupt to trigger the incrementing of our "wall clock" global var.
	.global TIM3_IRQHandler
	.thumb_func
TIM3_IRQHandler:
	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
		@; Reset TIM2_SR (status register)
	mov r1, #0
	ldr r2, =TIM3_SR
	str r1, [r2]
	
	@; increment counter
	ldr r1, =wallClk			@; r1: address of wallClk var
	ldr r2, [r1]				@; r2: value of wallClk var
	adds r2, r2, #1				@; increment value
	str r2, [r1]				@; put back
	
	@; reset clock
	mov r1, #0
	ldr r2, =TIM3_CNT
	str r1, [r2]

	@; 7) Standard epilogue.
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	
	pop {pc}
	
	
	
	

	@; In this function, I make a given bitpattern appear on the digit1 7-seg LED (and make everything else dark).
	@; param R0 - bitpattern to be placed in GPIOA_BSRR.
	@; param R1 - bitpattern to be placed in GPIOC-BSRR.
	.global display_bitpattern_at_digit
	.thumb_func
display_bitpattern_at_digit:

	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
	@; 2) Disable display drivers by setting OE-bar high on both cathode and anode.
								@; r0: GPIOA_BSSR value for cathode bit-pattern
								@; r1: GPIOC_BSSR value for cathode bit-pattern
								@; r2: GPIOA_BSSR value for anode bit-pattern
								@; r3: GPIOC_BSSR value for anode bit-pattern

	ldr r4, =GPIOA_BSRR			@; r4: GPIOA_BSRR address
	ldr r5, =GPIOC_BSRR			@; r5: GPIOC_BSRR address
	ldr r6, =0x00000040			@; disable cathode via register A
	str r6, [r4]
	ldr r6, =0x00000002			@; disable anode via register C
	str r6, [r5]
	
	@; 3) Put appropriate bit pattern to cathodes (remember to both activate desired segments AND to deactivate undesired segments).
	str r0, [r4]				@; bit pattern for cathode register A
	str r1, [r5]				@; bit pattern for cathode reigster C
	
	@; 4) Trip cathode clock lo/hi (rising edge supposedly triggers).
	ldr r6, =0x00200000
	str r6, [r5]
	ldr r6, =0x00000020
	str r6, [r5]
	
	@; 5) Put appropriate pattern to anodes (activate just digit1, deactivate all others).
	@; caller saves r0:
	str r2, [r4]				@; put to reg A
	str r3, [r5]				@; put to reg C
	
	@; 5) Trip anode clock lo/hi.
	ldr r6, =0x00100000
	str r6, [r5]
	ldr r6, =0x00000010
	str r6, [r5]
	
	@; 6) Re-enable display drivers.
	ldr r6, =0x00400000			@; disable cathode via register A
	str r6, [r4]
	ldr r6, =0x00020000			@; disable anode via register C
	str r6, [r5]
	
	@; 7) Standard epilogue:
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	
	
	
	@; In this function, check to see if switch @PARAM is on.  If it is, return 0.  If it is not,
	@; return 1.  
	@; Algorithm: basically a big switch statement, where we read a different switch's value for each
	@;            parameter value (1-12), and save the state to R0.  The way we read if a switch is on or not
	@;            is by setting his output pin low, and then checking to see if his input pin is low.  Really,
	@;            we'll just return the value of his input pin.
	@; param R0: The switch whose on/off value we wish to retrieve. MUST be between 1-12 (inclusive).
	@; return R0: 0 if switch is on, 1 if it is off.
	.global mikes_get_switch
	.thumb_func
mikes_get_switch:
	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.	
	
	@; 2) Setup values used in the switch statement.
	ldr r1, =GPIOB_BSRR			@; r1: address of set-reset register for GPIO B
	ldr r2, =GPIOC_BSRR			@; r2: address of set-reset register for GPIO C
	
	ldr r3, =GPIOB_IDR			@; r3: address of input-data register for GPIO B
	ldr r4, =GPIOD_IDR			@; r4: address of input-data register for GPIO D
	
	@;  The following three registers are altered by the switch statement.
	ldr r5, =0x02000000			@; r5: B9 BSRR value
	ldr r6, =0x04000000			@; r6: C10 BSRR value
	ldr r8, =0x08000000			@; r8: C11 BSRR value
		
		
	@; 3) Twelve-part switch statement; Registers r9-r12 free to use.
	@; If arg is 1:
	cmp r0, #1
	ldr r10, =0x00000001			@; r10: IDR and-mask for B0
	beq one
	b	notOne
one:
	sampleSwitchMacro r1,r3,r5
	b endSwitch	
	
notOne:
	@; Else, if arg is 2:
	cmp r0, #2
	ldr r10, =0x00000004			@; r10: IDR and-mask for D2
	beq two
	b notTwo
two:
	sampleSwitchMacro r1,r4,r5
	b endSwitch
notTwo:
	@; Else, if arg is 3:
	cmp r0, #3
	ldr r10, =0x00000002			@; r10: IDR and-mask for B1
	beq three
	b notThree
three:
	sampleSwitchMacro r1,r3,r5
	b endSwitch
notThree:
	@; Else, if arg is 4:
	cmp r0, #4
	ldr r10, =0x00000040			@; r10: IDR and-mask for B6
	beq four
	b notFour
four:
	sampleSwitchMacro r1,r3,r5
	b endSwitch
notFour:
	@; Else, if arg is 5:
	cmp r0, #5
	ldr r10, =0x00000001			@; r10: IDR and-mask for B0
	beq five
	b notFive
five:
	sampleSwitchMacro r2,r3,r6
	b endSwitch
notFive:
	@; Else, if arg is 6:
	cmp r0, #6
	ldr r10, =0x00000004			@; r10: IDR and-mask for D2
	beq six
	b notSix
six:
	sampleSwitchMacro r2,r4,r6
	b endSwitch
notSix:
	@; Else, if arg is 7:
	cmp r0, #7
	ldr r10, =0x00000002			@; r10: IDR and-mask for B1
	beq seven
	b notSeven
seven:
	sampleSwitchMacro r2,r3,r6
	b endSwitch
notSeven:
	@; Else, if arg is 8:
	cmp r0, #8
	ldr r10, =0x00000040			@; r10: IDR and-mask for B6
	beq eight
	b notEight
eight:
	sampleSwitchMacro r2,r3,r6
	b endSwitch
notEight:
	@; Else, if arg is 9:
	cmp r0, #9
	ldr r10, =0x00000001			@; r10: IDR and-mask for B0
	beq nine
	b notNine
nine:
	sampleSwitchMacro r2,r3,r8
	b endSwitch
notNine:
	@; Else, if arg is 10:
	cmp r0, #10
	ldr r10, =0x00000004			@; r10: IDR and-mask for D2
	beq ten
	b notTen
ten:
	sampleSwitchMacro r2,r4,r8
	b endSwitch
notTen:
	@; Else, if arg is 11:
	cmp r0, #11
	ldr r10, =0x00000002			@; r10: IDR and-mask for B1
	beq eleven
	b notEleven
eleven:
	sampleSwitchMacro r2,r3,r8
	b endSwitch
notEleven:
	@; Else, if arg is 12:
	cmp r0, #12
	ldr r10, =0x00000040			@; r10: IDR and-mask for B6
	beq twelve
	b endSwitch
twelve:
	sampleSwitchMacro r2,r3,r8
	
endSwitch:
	@; 4) Standard epilogue:
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}





@; The following function simply reads the value being output by the encoder's "signal A" pin.
	.global read_encoderA
	.thumb_func
read_encoderA:
	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.
	
	@; 2) Read pin C12 (IDR register)
	ldr r0, =GPIOC_IDR			@; r0: address of gpioc values
	ldr r0, [r0]				@; r0: value of gpioc values
	and r0, r0, 0x00001000
	lsr r0, #12
	

	@; Standard epilogue:
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	
	
	
	@; The following function simply reads the value being output by the encoder's "signal A" pin.
	.global read_encoderB
	.thumb_func
read_encoderB:
	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.
	
	@; 2) Read pin B5 (IDR register)
	ldr r0, =GPIOB_IDR			@; r0: address of gpiob values
	ldr r0, [r0]				@; r0: value of gpiob values
	and r0, r0, 0x00000020
	lsr r0, #5
	

	@; Standard epilogue:
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	
	
	
	
		@; Just returns the wallClk value.  Every 900 ticks is about a second.
	.global getTime
	.thumb_func
getTime:
	@; 1) Standard prologue:
	push {lr}
	push {r0-r12}				@; Total of 13 Saved Registers at the beginning of the stack.
	adds r7, sp, #0				@; Make current stack pointer the new base pointer.
	
	@; 2) Read pin B5 (IDR register)
	ldr r0, =wallClk
	ldr r0, [r0]
	
	@; 3) Standard epilogue:
	subs r1, sp, r7				@; r1: sp - bp
	movs r2, #0					@; r2: 0
	subs r1, r2, r1				@; r1: bp - sp
	adds sp, sp, r1				@; sp: sp - (gap between sp and bp).  Stack frame cleared!
	adds sp, sp, #4				@; Decrement sp past Saved Register R0, since that is the one Caller-Saves register.
	pop {r1-r12}				@; Assume ALL function calls overwrite r0 (i.e. it will not be restored).
	pop {pc}
	
	
	
@; Wait Function (caller saves, simple format, like a mini-function)
wait:
	push {r0}
	ldr r0, =0x0
increment:
	add r0, r0, #1
	cmp r0, #100
	bne increment
	pop {r0}
	bx lr
	
	