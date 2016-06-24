	.syntax unified
	.cpu cortex-m4
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.thumb
	.file	"mikes_project_main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	Cint,4,4
	.comm	SystemCoreClock,4,4
	.align	2
	.global	SystemCoreClockUpdate
	.thumb
	.thumb_func
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB0:
	.file 1 "mikes_project_main.c"
	.loc 1 307 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
.LCFI1:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI2:
	.cfi_def_cfa_register 7
	.loc 1 308 0
	mov	r3, #0
	str	r3, [r7, #16]
	mov	r3, #0
	str	r3, [r7, #20]
	mov	r3, #2
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r3, #2
	str	r3, [r7, #4]
	.loc 1 311 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	str	r3, [r7, #16]
	.loc 1 313 0
	ldr	r3, [r7, #16]
	cmp	r3, #4
	beq	.L4
	cmp	r3, #8
	beq	.L5
	cmp	r3, #0
	bne	.L9
.L3:
	.loc 1 316 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #9216
	movt	r2, 244
	str	r2, [r3, #0]
	.loc 1 317 0
	b	.L1
.L4:
	.loc 1 319 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	movw	r2, #30784
	movt	r2, 381
	str	r2, [r3, #0]
	.loc 1 320 0
	b	.L1
.L5:
	.loc 1 326 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	lsr	r3, r3, #22
	str	r3, [r7, #8]
	.loc 1 327 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #4]
	.loc 1 329 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L7
	.loc 1 332 0
	movw	r3, #30784
	movt	r3, 381
	ldr	r2, [r7, #4]
	udiv	r2, r3, r2
	mov	r3, #14336
	movt	r3, 16386
	ldr	r1, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r1
	lsr	r3, r3, #6
	mul	r3, r3, r2
	str	r3, [r7, #20]
	b	.L8
.L7:
	.loc 1 337 0
	mov	r3, #9216
	movt	r3, 244
	ldr	r2, [r7, #4]
	udiv	r2, r3, r2
	mov	r3, #14336
	movt	r3, 16386
	ldr	r1, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r1
	lsr	r3, r3, #6
	mul	r3, r3, r2
	str	r3, [r7, #20]
.L8:
	.loc 1 340 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #196608
	lsr	r3, r3, #16
	add	r3, r3, #1
	lsl	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 341 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	udiv	r2, r2, r3
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	str	r2, [r3, #0]
	.loc 1 342 0
	b	.L1
.L9:
	.loc 1 344 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #9216
	movt	r2, 244
	str	r2, [r3, #0]
	.loc 1 345 0
	nop
.L1:
	.loc 1 347 0
	add	r7, r7, #28
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE0:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.comm	msTicks,4,4
	.align	2
	.global	SysTick_Handler
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB3:
	.loc 1 377 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI4:
	.cfi_def_cfa_register 7
	.loc 1 378 0
	movw	r3, #:lower16:msTicks
	movt	r3, #:upper16:msTicks
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:msTicks
	movt	r3, #:upper16:msTicks
	str	r2, [r3, #0]
	.loc 1 379 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE3:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	2
	.global	Delay
	.thumb
	.thumb_func
	.type	Delay, %function
Delay:
.LFB4:
	.loc 1 384 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI6:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI7:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 390 0
	movw	r3, #9029
	movt	r3, 1
	str	r3, [r7, #12]
	.loc 1 391 0
	nop
.L12:
	.loc 1 391 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	ldr	r2, [r7, #12]
	add	r2, r2, #-1
	str	r2, [r7, #12]
	cmp	r3, #0
	bne	.L12
	.loc 1 393 0 is_stmt 1
	add	r7, r7, #20
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE4:
	.size	Delay, .-Delay
	.comm	toneArr,8192,4
	.comm	numTones,4,4
	.comm	testMode,4,4
	.global	encoder_state_lvl1
	.bss
	.type	encoder_state_lvl1, %object
	.size	encoder_state_lvl1, 1
encoder_state_lvl1:
	.space	1
	.global	encoder_state_lvl2
	.type	encoder_state_lvl2, %object
	.size	encoder_state_lvl2, 1
encoder_state_lvl2:
	.space	1
	.global	digitvals
	.data
	.align	2
	.type	digitvals, %object
	.size	digitvals, 20
digitvals:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	13
	.text
	.align	2
	.global	display_num_at_digit
	.thumb
	.thumb_func
	.type	display_num_at_digit, %function
display_num_at_digit:
.LFB5:
	.loc 1 582 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	sub	sp, sp, #16
.LCFI9:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI10:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 583 0
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 585 0
	ldr	r3, [r7, #4]
	cmp	r3, #17
	bhi	.L13
	adr	r2, .L33
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L33:
	.word	.L15+1
	.word	.L16+1
	.word	.L17+1
	.word	.L18+1
	.word	.L19+1
	.word	.L20+1
	.word	.L21+1
	.word	.L22+1
	.word	.L23+1
	.word	.L24+1
	.word	.L25+1
	.word	.L26+1
	.word	.L27+1
	.word	.L28+1
	.word	.L29+1
	.word	.L30+1
	.word	.L31+1
	.word	.L32+1
.L15:
	.loc 1 590 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 591 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #34
	movt	r0, 145
	mov	r1, #851968
	bl	display_bitpattern_at_digit
	.loc 1 592 0
	b	.L13
.L16:
	.loc 1 594 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 595 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #178
	movt	r0, 1
	mov	r1, #5
	movt	r1, 8
	bl	display_bitpattern_at_digit
	.loc 1 596 0
	b	.L13
.L17:
	.loc 1 598 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 599 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #32
	movt	r0, 147
	mov	r1, #9
	movt	r1, 5
	bl	display_bitpattern_at_digit
	.loc 1 600 0
	b	.L13
.L18:
	.loc 1 602 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 603 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #48
	movt	r0, 131
	mov	r1, #1
	movt	r1, 12
	bl	display_bitpattern_at_digit
	.loc 1 604 0
	b	.L13
.L19:
	.loc 1 606 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 607 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #176
	movt	r0, 3
	mov	r1, #4
	movt	r1, 9
	bl	display_bitpattern_at_digit
	.loc 1 608 0
	b	.L13
.L20:
	.loc 1 610 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 611 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #49
	movt	r0, 130
	mov	r1, #851968
	bl	display_bitpattern_at_digit
	.loc 1 612 0
	b	.L13
.L21:
	.loc 1 614 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 615 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #33
	movt	r0, 146
	mov	r1, #851968
	bl	display_bitpattern_at_digit
	.loc 1 616 0
	b	.L13
.L22:
	.loc 1 618 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 619 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #178
	movt	r0, 1
	mov	r1, #1
	movt	r1, 12
	bl	display_bitpattern_at_digit
	.loc 1 620 0
	b	.L13
.L23:
	.loc 1 622 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 623 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #32
	movt	r0, 147
	mov	r1, #851968
	bl	display_bitpattern_at_digit
	.loc 1 624 0
	b	.L13
.L24:
	.loc 1 626 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 627 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #48
	movt	r0, 131
	mov	r1, #851968
	bl	display_bitpattern_at_digit
	.loc 1 628 0
	b	.L13
.L25:
	.loc 1 631 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 632 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #179
	mov	r1, #5
	movt	r1, 8
	bl	display_bitpattern_at_digit
	.loc 1 633 0
	b	.L13
.L28:
	.loc 1 635 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 636 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #179
	mov	r1, #13
	bl	display_bitpattern_at_digit
	.loc 1 637 0
	b	.L13
.L26:
	.loc 1 639 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 640 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #179
	mov	r1, #4
	movt	r1, 1
	bl	display_bitpattern_at_digit
	.loc 1 641 0
	b	.L13
.L29:
	.loc 1 643 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 644 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #34
	movt	r0, 1
	mov	r1, #13
	bl	display_bitpattern_at_digit
	.loc 1 645 0
	b	.L13
.L30:
	.loc 1 647 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 648 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #3
	movt	r0, 32
	mov	r1, #13
	bl	display_bitpattern_at_digit
	.loc 1 649 0
	b	.L13
.L31:
	.loc 1 651 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 652 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #179
	mov	r1, #1
	movt	r1, 4
	bl	display_bitpattern_at_digit
	.loc 1 653 0
	b	.L13
.L32:
	.loc 1 655 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 656 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #33
	movt	r0, 2
	mov	r1, #13
	bl	display_bitpattern_at_digit
	.loc 1 657 0
	b	.L13
.L27:
	.loc 1 659 0
	add	r3, r7, #8
	ldr	r0, [r7, #0]
	mov	r1, r3
	bl	translate_digit_to_anode_bitpattern
	.loc 1 660 0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, #177
	movt	r0, 2
	mov	r1, #13
	bl	display_bitpattern_at_digit
	.loc 1 661 0
	nop
.L13:
	.loc 1 665 0
	add	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	display_num_at_digit, .-display_num_at_digit
	.align	2
	.global	translate_digit_to_anode_bitpattern
	.thumb
	.thumb_func
	.type	translate_digit_to_anode_bitpattern, %function
translate_digit_to_anode_bitpattern:
.LFB6:
	.loc 1 676 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI12:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI13:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 678 0
	ldr	r3, [r7, #4]
	cmp	r3, #7
	bhi	.L34
	adr	r2, .L44
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L44:
	.word	.L36+1
	.word	.L37+1
	.word	.L38+1
	.word	.L39+1
	.word	.L40+1
	.word	.L41+1
	.word	.L42+1
	.word	.L43+1
.L36:
	.loc 1 682 0
	ldr	r3, [r7, #0]
	mov	r2, #51
	str	r2, [r3, #0]
	.loc 1 683 0
	ldr	r3, [r7, #0]
	add	r3, r3, #4
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 684 0
	b	.L34
.L37:
	.loc 1 687 0
	ldr	r3, [r7, #0]
	mov	r2, #51
	str	r2, [r3, #0]
	.loc 1 688 0
	ldr	r3, [r7, #0]
	add	r2, r3, #4
	mov	r3, #12
	movt	r3, 1
	str	r3, [r2, #0]
	.loc 1 689 0
	b	.L34
.L38:
	.loc 1 692 0
	ldr	r3, [r7, #0]
	mov	r2, #51
	str	r2, [r3, #0]
	.loc 1 693 0
	ldr	r3, [r7, #0]
	add	r2, r3, #4
	mov	r3, #5
	movt	r3, 8
	str	r3, [r2, #0]
	.loc 1 694 0
	b	.L34
.L39:
	.loc 1 697 0
	ldr	r2, [r7, #0]
	mov	r3, #49
	movt	r3, 2
	str	r3, [r2, #0]
	.loc 1 698 0
	ldr	r3, [r7, #0]
	add	r3, r3, #4
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 699 0
	b	.L34
.L40:
	.loc 1 702 0
	ldr	r2, [r7, #0]
	mov	r3, #50
	movt	r3, 1
	str	r3, [r2, #0]
	.loc 1 703 0
	ldr	r3, [r7, #0]
	add	r3, r3, #4
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 704 0
	b	.L34
.L41:
	.loc 1 707 0
	ldr	r2, [r7, #0]
	mov	r3, #35
	movt	r3, 16
	str	r3, [r2, #0]
	.loc 1 708 0
	ldr	r3, [r7, #0]
	add	r3, r3, #4
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 709 0
	b	.L34
.L42:
	.loc 1 712 0
	ldr	r2, [r7, #0]
	mov	r3, #19
	movt	r3, 32
	str	r3, [r2, #0]
	.loc 1 713 0
	ldr	r3, [r7, #0]
	add	r3, r3, #4
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 714 0
	b	.L34
.L43:
	.loc 1 717 0
	ldr	r3, [r7, #0]
	mov	r2, #51
	str	r2, [r3, #0]
	.loc 1 718 0
	ldr	r3, [r7, #0]
	add	r2, r3, #4
	mov	r3, #9
	movt	r3, 4
	str	r3, [r2, #0]
	.loc 1 719 0
	nop
.L34:
	.loc 1 723 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE6:
	.size	translate_digit_to_anode_bitpattern, .-translate_digit_to_anode_bitpattern
	.align	2
	.global	mikes_display_update
	.thumb
	.thumb_func
	.type	mikes_display_update, %function
mikes_display_update:
.LFB7:
	.loc 1 732 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	add	r7, sp, #0
.LCFI15:
	.cfi_def_cfa_register 7
	.loc 1 734 0
	movw	r3, #:lower16:position.2495
	movt	r3, #:upper16:position.2495
	ldr	r1, [r3, #0]
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r1
	lsr	r2, r3, #2
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	subs	r2, r1, r3
	add	r2, r2, #1
	movw	r3, #:lower16:position.2495
	movt	r3, #:upper16:position.2495
	str	r2, [r3, #0]
	.loc 1 737 0
	movw	r3, #:lower16:position.2495
	movt	r3, #:upper16:position.2495
	ldr	r3, [r3, #0]
	add	r2, r3, #-1
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, r2, lsl #2]
	movw	r3, #:lower16:position.2495
	movt	r3, #:upper16:position.2495
	ldr	r3, [r3, #0]
	mov	r0, r2
	mov	r1, r3
	bl	display_num_at_digit
	.loc 1 738 0
	movw	r3, #:lower16:position.2495
	movt	r3, #:upper16:position.2495
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:position.2495
	movt	r3, #:upper16:position.2495
	str	r2, [r3, #0]
	.loc 1 739 0
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	mikes_display_update, .-mikes_display_update
	.align	2
	.global	arrtosi
	.thumb
	.thumb_func
	.type	arrtosi, %function
arrtosi:
.LFB8:
	.loc 1 750 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
.LCFI17:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI18:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 751 0
	mov	r3, #0
	str	r3, [r7, #20]
	mov	r3, #3
	str	r3, [r7, #16]
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 754 0
	b	.L47
.L52:
.LBB2:
	.loc 1 756 0
	ldr	r3, [r7, #16]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #12
	bne	.L48
	.loc 1 757 0
	ldr	r3, [r7, #20]
	rsb	r3, r3, #0
	str	r3, [r7, #20]
	.loc 1 758 0
	b	.L49
.L48:
	.loc 1 760 0
	ldr	r3, [r7, #16]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [r7, #8]
	.loc 1 762 0
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L50
.L51:
	.loc 1 762 0 is_stmt 0 discriminator 2
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	lsl	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L50:
	.loc 1 762 0 discriminator 1
	ldr	r3, [r7, #16]
	rsb	r2, r3, #3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L51
	.loc 1 764 0 is_stmt 1
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #20]
	.loc 1 766 0
	ldr	r3, [r7, #16]
	add	r3, r3, #-1
	str	r3, [r7, #16]
.L47:
.LBE2:
	.loc 1 754 0 discriminator 1
	ldr	r3, [r7, #16]
	cmp	r3, #-1
	beq	.L49
	.loc 1 754 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #16]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #13
	bne	.L52
.L49:
	.loc 1 768 0 is_stmt 1
	ldr	r3, [r7, #20]
	.loc 1 769 0
	mov	r0, r3
	add	r7, r7, #28
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE8:
	.size	arrtosi, .-arrtosi
	.align	2
	.global	sitoarr
	.thumb
	.thumb_func
	.type	sitoarr, %function
sitoarr:
.LFB9:
	.loc 1 778 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -4
	.cfi_offset 4, -8
	sub	sp, sp, #24
.LCFI20:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI21:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 779 0
	mov	r3, #0
	str	r3, [r7, #20]
	mov	r3, #0
	str	r3, [r7, #8]
	.loc 1 780 0
	ldr	r3, [r7, #0]
	str	r3, [r7, #16]
	.loc 1 781 0
	mov	r3, #1
	str	r3, [r7, #12]
	.loc 1 784 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L54
	.loc 1 784 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #16]
	rsb	r3, r3, #0
	str	r3, [r7, #16]
.L54:
	.loc 1 786 0 is_stmt 1
	mov	r3, #3
	str	r3, [r7, #20]
	b	.L55
.L58:
	.loc 1 787 0
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	lsl	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 788 0
	ldr	r3, [r7, #20]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r2, r2, r3
	ldr	r3, [r7, #16]
	ldr	r1, [r7, #12]
	sdiv	r1, r3, r1
	ldr	r0, [r7, #12]
	mul	r1, r0, r1
	subs	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 789 0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	lsl	r3, r3, #2
	ldr	r1, [r7, #4]
	adds	r3, r1, r3
	ldr	r3, [r3, #0]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 790 0
	ldr	r3, [r7, #20]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r1, r2, r3
	ldr	r3, [r7, #20]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldr	r0, [r3, #0]
	ldr	r2, [r7, #12]
	movw	r3, #26215
	movt	r3, 26214
	smull	ip, r3, r3, r2
	asr	r4, r3, #2
	asr	r3, r2, #31
	subs	r3, r4, r3
	udiv	r3, r0, r3
	str	r3, [r1, #0]
	.loc 1 792 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L56
	.loc 1 793 0
	ldr	r3, [r7, #20]
	add	r3, r3, #-1
	str	r3, [r7, #20]
	.loc 1 794 0
	b	.L57
.L56:
	.loc 1 786 0
	ldr	r3, [r7, #20]
	add	r3, r3, #-1
	str	r3, [r7, #20]
.L55:
	.loc 1 786 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L58
.L57:
	.loc 1 800 0 is_stmt 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bge	.L60
	.loc 1 801 0
	ldr	r3, [r7, #20]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	mov	r2, #12
	str	r2, [r3, #0]
	.loc 1 802 0
	ldr	r3, [r7, #20]
	add	r3, r3, #-1
	str	r3, [r7, #20]
	.loc 1 806 0
	b	.L60
.L61:
	.loc 1 806 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #20]
	lsl	r3, r3, #2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	mov	r2, #13
	str	r2, [r3, #0]
	ldr	r3, [r7, #20]
	add	r3, r3, #-1
	str	r3, [r7, #20]
.L60:
	.loc 1 806 0 discriminator 1
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L61
	.loc 1 807 0 is_stmt 1
	add	r7, r7, #24
	mov	sp, r7
	pop	{r4, r7}
	bx	lr
	.cfi_endproc
.LFE9:
	.size	sitoarr, .-sitoarr
	.align	2
	.global	decrement_arr
	.thumb
	.thumb_func
	.type	decrement_arr, %function
decrement_arr:
.LFB10:
	.loc 1 815 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI22:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	sub	sp, sp, #16
.LCFI23:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI24:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 817 0
	ldr	r0, [r7, #4]
	bl	arrtosi
	mov	r3, r0
	str	r3, [r7, #12]
	.loc 1 820 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #0]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 823 0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	sitoarr
	.loc 1 825 0
	add	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE10:
	.size	decrement_arr, .-decrement_arr
	.align	2
	.global	increment_arr
	.thumb
	.thumb_func
	.type	increment_arr, %function
increment_arr:
.LFB11:
	.loc 1 833 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	sub	sp, sp, #16
.LCFI26:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI27:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 835 0
	ldr	r0, [r7, #4]
	bl	arrtosi
	mov	r3, r0
	str	r3, [r7, #12]
	.loc 1 838 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #0]
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 841 0
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	sitoarr
	.loc 1 842 0
	add	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	increment_arr, .-increment_arr
	.align	2
	.global	update_fsm_level2
	.thumb
	.thumb_func
	.type	update_fsm_level2, %function
update_fsm_level2:
.LFB12:
	.loc 1 849 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI28:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI29:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI30:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 850 0
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 851 0
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L65
	adr	r2, .L73
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L73:
	.word	.L66+1
	.word	.L67+1
	.word	.L68+1
	.word	.L69+1
	.word	.L70+1
	.word	.L71+1
	.word	.L72+1
.L66:
	.loc 1 854 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L74
	.loc 1 854 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L74
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #1
	strb	r2, [r3, #0]
	b	.L75
.L74:
	.loc 1 855 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L76
	.loc 1 855 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L76
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #4
	strb	r2, [r3, #0]
	b	.L75
.L76:
	.loc 1 856 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 857 0
	b	.L65
.L75:
	b	.L65
.L67:
	.loc 1 860 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L77
	.loc 1 860 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L77
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #1
	strb	r2, [r3, #0]
	b	.L78
.L77:
	.loc 1 861 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L79
	.loc 1 861 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L79
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #2
	strb	r2, [r3, #0]
	b	.L78
.L79:
	.loc 1 862 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 863 0
	b	.L65
.L78:
	b	.L65
.L68:
	.loc 1 866 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L80
	.loc 1 866 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L80
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #2
	strb	r2, [r3, #0]
	b	.L81
.L80:
	.loc 1 867 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L82
	.loc 1 867 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L82
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #3
	strb	r2, [r3, #0]
	b	.L81
.L82:
	.loc 1 868 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 869 0
	b	.L65
.L81:
	b	.L65
.L69:
	.loc 1 872 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L83
	.loc 1 872 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L83
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #3
	strb	r2, [r3, #0]
	b	.L84
.L83:
	.loc 1 873 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L85
	.loc 1 873 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L85
	.loc 1 874 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 876 0
	mov	r3, #1
	str	r3, [r7, #12]
	b	.L84
.L85:
	.loc 1 878 0
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 879 0
	b	.L65
.L84:
	b	.L65
.L70:
	.loc 1 883 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L86
	.loc 1 883 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L86
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #4
	strb	r2, [r3, #0]
	b	.L87
.L86:
	.loc 1 884 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L88
	.loc 1 884 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L88
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #5
	strb	r2, [r3, #0]
	b	.L87
.L88:
	.loc 1 885 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 886 0
	b	.L65
.L87:
	b	.L65
.L71:
	.loc 1 889 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L89
	.loc 1 889 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	bne	.L89
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #5
	strb	r2, [r3, #0]
	b	.L90
.L89:
	.loc 1 890 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L91
	.loc 1 890 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L91
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #6
	strb	r2, [r3, #0]
	b	.L90
.L91:
	.loc 1 891 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 892 0
	b	.L65
.L90:
	b	.L65
.L72:
	.loc 1 895 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L92
	.loc 1 895 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L92
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #6
	strb	r2, [r3, #0]
	b	.L93
.L92:
	.loc 1 896 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L94
	.loc 1 896 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #0
	beq	.L94
	.loc 1 897 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 899 0
	mov	r3, #-1
	str	r3, [r7, #12]
	b	.L93
.L94:
	.loc 1 902 0
	movw	r3, #:lower16:encoder_state_lvl2
	movt	r3, #:upper16:encoder_state_lvl2
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 904 0
	b	.L95
.L93:
.L95:
	nop
.L65:
	.loc 1 908 0
	ldr	r3, [r7, #12]
	.loc 1 909 0
	mov	r0, r3
	add	r7, r7, #20
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE12:
	.size	update_fsm_level2, .-update_fsm_level2
	.align	2
	.global	blink_playmode_led
	.thumb
	.thumb_func
	.type	blink_playmode_led, %function
blink_playmode_led:
.LFB13:
	.loc 1 912 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI31:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	sub	sp, sp, #16
.LCFI32:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI33:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 913 0
	mov	r3, #150
	str	r3, [r7, #12]
	.loc 1 914 0
	bl	getTime
	mov	r3, r0
	str	r3, [r7, #8]
	.loc 1 918 0
	ldr	r3, [r7, #12]
	lsl	r2, r3, #1
	ldr	r3, [r7, #8]
	udiv	r1, r3, r2
	mul	r2, r2, r1
	subs	r3, r3, r2
	cmp	r3, #0
	bne	.L97
	.loc 1 920 0
	ldr	r3, [r7, #4]
	add	r3, r3, #16
	mov	r2, #14
	str	r2, [r3, #0]
	.loc 1 921 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #14
	str	r2, [r3, #16]
	b	.L96
.L97:
	.loc 1 922 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	udiv	r2, r3, r2
	ldr	r1, [r7, #12]
	mul	r2, r1, r2
	subs	r3, r3, r2
	cmp	r3, #0
	bne	.L96
	.loc 1 924 0
	ldr	r3, [r7, #4]
	add	r3, r3, #16
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 925 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #13
	str	r2, [r3, #16]
.L96:
	.loc 1 927 0
	add	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	blink_playmode_led, .-blink_playmode_led
	.global	prevTime
	.bss
	.align	2
	.type	prevTime, %object
	.size	prevTime, 4
prevTime:
	.space	4
	.global	offset
	.align	2
	.type	offset, %object
	.size	offset, 4
offset:
	.space	4
	.text
	.align	2
	.global	blink_reset_led
	.thumb
	.thumb_func
	.type	blink_reset_led, %function
blink_reset_led:
.LFB14:
	.loc 1 936 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI34:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	sub	sp, sp, #24
.LCFI35:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI36:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 937 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	movw	r3, #46021
	movt	r3, 37282
	umull	r1, r3, r3, r2
	lsr	r3, r3, #9
	str	r3, [r7, #20]
	.loc 1 938 0
	mov	r2, #900
	ldr	r3, [r7, #20]
	udiv	r3, r2, r3
	str	r3, [r7, #16]
	.loc 1 939 0
	ldr	r3, [r7, #16]
	lsr	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 940 0
	bl	getTime
	mov	r2, r0
	movw	r3, #:lower16:offset
	movt	r3, #:upper16:offset
	ldr	r3, [r3, #0]
	adds	r3, r2, r3
	str	r3, [r7, #8]
	.loc 1 945 0
	movw	r3, #:lower16:prevTime
	movt	r3, #:upper16:prevTime
	ldr	r3, [r3, #0]
	ldr	r2, [r7, #20]
	cmp	r2, r3
	beq	.L100
	.loc 1 947 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r3, [r3, #16]
	cmp	r3, #16
	bne	.L101
	.loc 1 947 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #13
	str	r2, [r3, #16]
	b	.L102
.L101:
	.loc 1 948 0 is_stmt 1
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r3, [r3, #16]
	cmp	r3, #13
	bne	.L102
	.loc 1 948 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #16
	str	r2, [r3, #16]
.L102:
	.loc 1 950 0 is_stmt 1
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #16]
	udiv	r2, r3, r2
	ldr	r1, [r7, #16]
	mul	r2, r1, r2
	subs	r2, r3, r2
	movw	r3, #:lower16:offset
	movt	r3, #:upper16:offset
	ldr	r3, [r3, #0]
	adds	r2, r2, r3
	movw	r3, #:lower16:offset
	movt	r3, #:upper16:offset
	str	r2, [r3, #0]
	b	.L103
.L100:
	.loc 1 952 0
	ldr	r3, [r7, #12]
	lsl	r2, r3, #1
	ldr	r3, [r7, #8]
	udiv	r1, r3, r2
	mul	r2, r2, r1
	subs	r3, r3, r2
	cmp	r3, #0
	bne	.L104
	.loc 1 953 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #16
	str	r2, [r3, #16]
	b	.L103
.L104:
	.loc 1 954 0
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	udiv	r2, r3, r2
	ldr	r1, [r7, #12]
	mul	r2, r1, r2
	subs	r3, r3, r2
	cmp	r3, #0
	bne	.L103
	.loc 1 956 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #13
	str	r2, [r3, #16]
.L103:
	.loc 1 960 0
	movw	r3, #:lower16:prevTime
	movt	r3, #:upper16:prevTime
	ldr	r2, [r7, #20]
	str	r2, [r3, #0]
	.loc 1 961 0
	add	r7, r7, #24
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE14:
	.size	blink_reset_led, .-blink_reset_led
	.align	2
	.global	reset_intensity
	.thumb
	.thumb_func
	.type	reset_intensity, %function
reset_intensity:
.LFB15:
	.loc 1 966 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI37:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI38:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI39:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 967 0
	ldr	r3, [r7, #4]
	mov	r2, #13
	str	r2, [r3, #0]
	.loc 1 968 0
	ldr	r3, [r7, #4]
	add	r3, r3, #4
	mov	r2, #12
	str	r2, [r3, #0]
	.loc 1 969 0
	ldr	r3, [r7, #4]
	add	r3, r3, #8
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 970 0
	ldr	r3, [r7, #4]
	add	r3, r3, #12
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 971 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE15:
	.size	reset_intensity, .-reset_intensity
	.align	2
	.global	off_disp
	.thumb
	.thumb_func
	.type	off_disp, %function
off_disp:
.LFB16:
	.loc 1 975 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI40:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI41:
	.cfi_def_cfa_register 7
	.loc 1 976 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #13
	str	r2, [r3, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 977 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE16:
	.size	off_disp, .-off_disp
	.align	2
	.global	zero_disp
	.thumb
	.thumb_func
	.type	zero_disp, %function
zero_disp:
.LFB17:
	.loc 1 979 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI42:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI43:
	.cfi_def_cfa_register 7
	.loc 1 980 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #0
	str	r2, [r3, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r3, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 981 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE17:
	.size	zero_disp, .-zero_disp
	.section	.rodata
	.align	2
.LC0:
	.word	13
	.word	12
	.word	1
	.word	0
	.word	17
	.align	2
.LC1:
	.word	0
	.word	1
	.word	2
	.word	5
	.word	10
	.text
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB18:
	.loc 1 988 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
.LCFI44:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 7, -8
	.cfi_offset 5, -12
	.cfi_offset 4, -16
	sub	sp, sp, #144
.LCFI45:
	.cfi_def_cfa_offset 160
	add	r7, sp, #0
.LCFI46:
	.cfi_def_cfa_register 7
	.loc 1 989 0
	mov	r3, #0
	str	r3, [r7, #140]
	mov	r3, #0
	str	r3, [r7, #136]
	.loc 1 990 0
	mov	r3, #0
	str	r3, [r7, #132]
	.loc 1 991 0
	mov	r3, #0
	str	r3, [r7, #128]
	mov	r3, #0
	str	r3, [r7, #124]
	mov	r3, #0
	str	r3, [r7, #120]
	.loc 1 992 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 993 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 994 0
	movw	r3, #:lower16:.LC0
	movt	r3, #:upper16:.LC0
	add	r4, r7, #24
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5, #0]
	str	r3, [r4, #0]
	.loc 1 999 0
	mov	r3, #1
	str	r3, [r7, #68]
	.loc 1 1000 0
	mov	r3, #1
	str	r3, [r7, #64]
	.loc 1 1001 0
	mov	r3, #0
	str	r3, [r7, #60]
	.loc 1 1008 0
	mov	r3, #0
	str	r3, [r7, #116]
	.loc 1 1009 0
	mov	r3, #1
	str	r3, [r7, #112]
	.loc 1 1011 0
	mov	r3, #2
	str	r3, [r7, #108]
	.loc 1 1012 0
	ldr	r3, [r7, #108]
	str	r3, [r7, #104]
	.loc 1 1013 0
	mov	r3, #0
	str	r3, [r7, #100]
	.loc 1 1014 0
	movw	r3, #:lower16:.LC1
	movt	r3, #:upper16:.LC1
	add	r4, r7, #4
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5, #0]
	str	r3, [r4, #0]
	.loc 1 1015 0
	mov	r3, #0
	str	r3, [r7, #96]
	mov	r3, #0
	str	r3, [r7, #92]
	mov	r3, #0
	str	r3, [r7, #88]
	.loc 1 1018 0
	bl	mikes_IO_init
	.loc 1 1023 0
	mov	r0, #17280
	bl	timer_init
	.loc 1 1028 0
	movw	r0, #17476
	bl	wallClk_init
	b	.L221
.L248:
	.loc 1 1449 0
	nop
.L221:
	.loc 1 1038 0
	ldr	r3, [r7, #116]
	cmp	r3, #0
	bne	.L109
	.loc 1 1039 0
	mov	r3, #1
	str	r3, [r7, #88]
	b	.L110
.L114:
	.loc 1 1041 0
	ldr	r3, [r7, #88]
	mov	r0, r3
	bl	mikes_get_switch
	mov	r3, r0
	cmp	r3, #0
	bne	.L111
	.loc 1 1043 0
	mov	r3, #1
	str	r3, [r7, #116]
	.loc 1 1044 0
	mov	r3, #0
	str	r3, [r7, #112]
	.loc 1 1046 0
	mov	r3, #0
	str	r3, [r7, #92]
	b	.L112
.L113:
	.loc 1 1046 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #92]
	add	r3, r3, #1
	str	r3, [r7, #92]
.L112:
	.loc 1 1046 0 discriminator 1
	ldr	r2, [r7, #92]
	movw	r3, #1499
	cmp	r2, r3
	ble	.L113
	.loc 1 1048 0 is_stmt 1
	b	.L109
.L111:
	.loc 1 1039 0
	ldr	r3, [r7, #88]
	add	r3, r3, #1
	str	r3, [r7, #88]
.L110:
	.loc 1 1039 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #88]
	cmp	r3, #12
	ble	.L114
.L109:
	.loc 1 1054 0 is_stmt 1
	ldr	r3, [r7, #116]
	cmp	r3, #0
	beq	.L115
	.loc 1 1054 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #88]
	mov	r0, r3
	bl	mikes_get_switch
	mov	r3, r0
	cmp	r3, #0
	beq	.L115
	.loc 1 1055 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #116]
	.loc 1 1057 0
	mov	r3, #0
	str	r3, [r7, #92]
	b	.L116
.L117:
	.loc 1 1057 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #92]
	add	r3, r3, #1
	str	r3, [r7, #92]
.L116:
	.loc 1 1057 0 discriminator 1
	ldr	r2, [r7, #92]
	movw	r3, #1499
	cmp	r2, r3
	ble	.L117
.L115:
	.loc 1 1061 0 is_stmt 1
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L118
	.loc 1 1062 0
	mov	r3, #1
	str	r3, [r7, #112]
	.loc 1 1063 0
	ldr	r3, [r7, #88]
	add	r3, r3, #-1
	cmp	r3, #11
	bhi	.L118
	adr	r2, .L131
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L131:
	.word	.L119+1
	.word	.L120+1
	.word	.L121+1
	.word	.L122+1
	.word	.L123+1
	.word	.L124+1
	.word	.L125+1
	.word	.L126+1
	.word	.L127+1
	.word	.L128+1
	.word	.L129+1
	.word	.L130+1
.L119:
	.loc 1 1065 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L224
	.loc 1 1065 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L224
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L224
	.loc 1 1066 0 is_stmt 1
	ldr	r3, [r7, #4]
	add	r1, r3, #1
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r1
	lsr	r2, r3, #3
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	lsl	r3, r3, #1
	subs	r2, r1, r3
	str	r2, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 1067 0
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1069 0
	b	.L224
.L120:
	.loc 1 1072 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L225
	.loc 1 1072 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L225
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L225
	.loc 1 1073 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L134
	.loc 1 1074 0
	mov	r3, #9
	str	r3, [r7, #4]
	b	.L135
.L134:
	.loc 1 1076 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	str	r3, [r7, #4]
.L135:
	.loc 1 1078 0
	ldr	r2, [r7, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 1079 0
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1081 0
	b	.L225
.L121:
	.loc 1 1084 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L226
	.loc 1 1084 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L226
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L226
	.loc 1 1085 0 is_stmt 1
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1086 0
	ldr	r3, [r7, #8]
	add	r1, r3, #1
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r1
	lsr	r2, r3, #3
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	lsl	r3, r3, #1
	subs	r2, r1, r3
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	.loc 1 1088 0
	b	.L226
.L122:
	.loc 1 1091 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L227
	.loc 1 1091 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L227
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L227
	.loc 1 1092 0 is_stmt 1
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1093 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L138
	.loc 1 1094 0
	mov	r3, #9
	str	r3, [r7, #8]
	b	.L139
.L138:
	.loc 1 1096 0
	ldr	r3, [r7, #8]
	add	r3, r3, #-1
	str	r3, [r7, #8]
.L139:
	.loc 1 1098 0
	ldr	r2, [r7, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	.loc 1 1100 0
	b	.L227
.L123:
	.loc 1 1103 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L228
	.loc 1 1103 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L228
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L228
	.loc 1 1104 0 is_stmt 1
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1105 0
	ldr	r3, [r7, #12]
	add	r1, r3, #1
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r1
	lsr	r2, r3, #3
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	lsl	r3, r3, #1
	subs	r2, r1, r3
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	.loc 1 1107 0
	b	.L228
.L124:
	.loc 1 1110 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L229
	.loc 1 1110 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L229
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L229
	.loc 1 1111 0 is_stmt 1
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1112 0
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L142
	.loc 1 1113 0
	mov	r3, #9
	str	r3, [r7, #12]
	b	.L143
.L142:
	.loc 1 1115 0
	ldr	r3, [r7, #12]
	add	r3, r3, #-1
	str	r3, [r7, #12]
.L143:
	.loc 1 1117 0
	ldr	r2, [r7, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	.loc 1 1119 0
	b	.L229
.L125:
	.loc 1 1122 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L230
	.loc 1 1122 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L230
	.loc 1 1123 0 is_stmt 1
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1124 0
	ldr	r3, [r7, #16]
	add	r1, r3, #1
	movw	r3, #52429
	movt	r3, 52428
	umull	r2, r3, r3, r1
	lsr	r2, r3, #3
	mov	r3, r2
	lsl	r3, r3, #2
	adds	r3, r3, r2
	lsl	r3, r3, #1
	subs	r2, r1, r3
	str	r2, [r7, #16]
	ldr	r2, [r7, #16]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #12]
	.loc 1 1126 0
	b	.L230
.L126:
	.loc 1 1129 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L231
	.loc 1 1129 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L231
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L231
	.loc 1 1130 0 is_stmt 1
	add	r3, r7, #24
	mov	r0, r3
	bl	reset_intensity
	.loc 1 1131 0
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L146
	.loc 1 1132 0
	mov	r3, #9
	str	r3, [r7, #16]
	b	.L147
.L146:
	.loc 1 1134 0
	ldr	r3, [r7, #16]
	add	r3, r3, #-1
	str	r3, [r7, #16]
.L147:
	.loc 1 1136 0
	ldr	r2, [r7, #16]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #12]
	.loc 1 1138 0
	b	.L231
.L127:
	.loc 1 1141 0
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L232
	.loc 1 1143 0
	mov	r3, #1
	str	r3, [r7, #108]
	.loc 1 1144 0
	mov	r3, #0
	str	r3, [r7, #100]
	.loc 1 1145 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L149
	.loc 1 1145 0 is_stmt 0 discriminator 1
	mov	r3, #17
	str	r3, [r7, #40]
.L149:
	.loc 1 1147 0 is_stmt 1
	ldr	r2, [r7, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 1148 0
	ldr	r2, [r7, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	.loc 1 1149 0
	ldr	r2, [r7, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	.loc 1 1150 0
	ldr	r2, [r7, #16]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #12]
	.loc 1 1151 0
	ldr	r2, [r7, #20]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #16]
	.loc 1 1153 0
	b	.L232
.L128:
	.loc 1 1157 0
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L233
	.loc 1 1159 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	beq	.L152
	cmp	r3, #1
	bcc	.L151
	cmp	r3, #2
	bne	.L150
.L153:
	.loc 1 1162 0
	mov	r3, #0
	str	r3, [r7, #100]
	.loc 1 1163 0
	mov	r3, #17
	str	r3, [r7, #40]
	.loc 1 1164 0
	mov	r3, #0
	str	r3, [r7, #96]
	b	.L154
.L155:
	.loc 1 1164 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #96]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #96]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #96]
	add	r3, r3, #1
	str	r3, [r7, #96]
.L154:
	.loc 1 1164 0 discriminator 1
	ldr	r3, [r7, #96]
	cmp	r3, #4
	ble	.L155
	.loc 1 1165 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #108]
	.loc 1 1166 0
	b	.L150
.L152:
	.loc 1 1169 0
	mov	r3, #0
	str	r3, [r7, #100]
	.loc 1 1170 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L156
	.loc 1 1170 0 is_stmt 0 discriminator 1
	mov	r3, #17
	str	r3, [r7, #40]
.L156:
	.loc 1 1171 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #96]
	b	.L157
.L158:
	.loc 1 1171 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #96]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #96]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #96]
	add	r3, r3, #1
	str	r3, [r7, #96]
.L157:
	.loc 1 1171 0 discriminator 1
	ldr	r3, [r7, #96]
	cmp	r3, #4
	ble	.L158
	.loc 1 1172 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #108]
	.loc 1 1173 0
	b	.L150
.L151:
	.loc 1 1176 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L234
	.loc 1 1177 0
	ldr	r3, [r7, #100]
	cmp	r3, #0
	ite	ne
	movne	r3, #0
	moveq	r3, #1
	str	r3, [r7, #100]
	.loc 1 1178 0
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L160
	.loc 1 1179 0
	mov	r3, #14
	str	r3, [r7, #40]
	.loc 1 1180 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #14
	str	r2, [r3, #16]
	.loc 1 1186 0
	b	.L234
.L160:
	.loc 1 1182 0
	mov	r3, #17
	str	r3, [r7, #40]
	.loc 1 1183 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #17
	str	r2, [r3, #16]
.L234:
	.loc 1 1186 0
	nop
.L150:
	.loc 1 1189 0
	b	.L233
.L129:
	.loc 1 1193 0
	bl	getTime
	mov	r3, r0
	str	r3, [r7, #140]
	.loc 1 1196 0
	ldr	r3, [r7, #108]
	cmp	r3, #2
	beq	.L235
.LBB3:
	.loc 1 1197 0
	bl	getTime
	mov	r3, r0
	str	r3, [r7, #56]
	.loc 1 1198 0
	mov	r3, #0
	str	r3, [r7, #52]
	.loc 1 1199 0
	mov	r3, #0
	str	r3, [r7, #84]
	b	.L178
.L241:
	.loc 1 1266 0
	nop
.L178:
	.loc 1 1202 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	.loc 1 1205 0
	mov	r0, #11
	bl	mikes_get_switch
	mov	r3, r0
	cmp	r3, #0
	beq	.L162
	.loc 1 1205 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #52]
	movw	r3, #899
	cmp	r2, r3
	bgt	.L162
	.loc 1 1206 0 is_stmt 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L236
.L163:
	.loc 1 1207 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L237
	.loc 1 1207 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r3, [r3, #0]
	add	r2, r3, #-1
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	str	r2, [r3, #0]
	.loc 1 1208 0 is_stmt 1 discriminator 1
	b	.L237
.L162:
	.loc 1 1212 0
	ldr	r2, [r7, #52]
	movw	r3, #899
	cmp	r2, r3
	ble	.L165
	.loc 1 1212 0 is_stmt 0 discriminator 1
	ldr	r2, [r7, #52]
	movw	r3, #4499
	cmp	r2, r3
	bgt	.L165
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L165
	.loc 1 1213 0 is_stmt 1
	mov	r3, #1
	str	r3, [r7, #84]
	.loc 1 1214 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r3, [r3, #0]
	cmp	r3, #0
	ble	.L238
.L166:
	.loc 1 1215 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L168
.LBB4:
	.loc 1 1216 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 1218 0
	add	r3, r7, #4
	mov	r0, r3
	bl	arrtosi
	mov	r3, r0
	str	r3, [r7, #128]
	.loc 1 1219 0
	add	r3, r7, #24
	mov	r0, r3
	bl	arrtosi
	mov	r3, r0
	str	r3, [r7, #124]
	.loc 1 1220 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r3, [r3, #0]
	add	r3, r3, #-1
	str	r3, [r7, #120]
	.loc 1 1222 0
	movw	r3, #:lower16:toneArr
	movt	r3, #:upper16:toneArr
	ldr	r2, [r7, #120]
	ldr	r3, [r3, r2, lsl #3]
	add	r2, r7, #4
	mov	r0, r2
	mov	r1, r3
	bl	sitoarr
	.loc 1 1223 0
	movw	r2, #:lower16:toneArr
	movt	r2, #:upper16:toneArr
	ldr	r3, [r7, #120]
	lsl	r3, r3, #3
	adds	r3, r2, r3
	ldr	r3, [r3, #4]
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	sitoarr
	.loc 1 1224 0
	mov	r3, #15
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
	.loc 1 1225 0
	mov	r3, #0
	str	r3, [r7, #80]
	.loc 1 1226 0
	mov	r3, #0
	str	r3, [r7, #80]
	b	.L169
.L170:
	.loc 1 1226 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #80]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #80]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #80]
	add	r3, r3, #1
	str	r3, [r7, #80]
.L169:
	.loc 1 1226 0 discriminator 1
	ldr	r3, [r7, #80]
	cmp	r3, #4
	ble	.L170
	.loc 1 1227 0 is_stmt 1
	ldr	r3, [r7, #108]
	str	r3, [r7, #104]
	.loc 1 1228 0
	mov	r3, #0
	str	r3, [r7, #108]
.LBE4:
	.loc 1 1248 0
	b	.L239
.L168:
	.loc 1 1230 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L239
.LBB5:
	.loc 1 1232 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 1233 0
	ldr	r3, [r7, #104]
	str	r3, [r7, #108]
	.loc 1 1234 0
	add	r3, r7, #4
	mov	r0, r3
	ldr	r1, [r7, #128]
	bl	sitoarr
	.loc 1 1235 0
	mov	r3, #10
	str	r3, [r7, #20]
	.loc 1 1236 0
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #124]
	bl	sitoarr
	.loc 1 1237 0
	mov	r3, #17
	str	r3, [r7, #40]
	.loc 1 1240 0
	mov	r3, #0
	str	r3, [r7, #76]
	.loc 1 1241 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L172
	.loc 1 1242 0
	mov	r3, #0
	str	r3, [r7, #76]
	b	.L173
.L174:
	.loc 1 1242 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #76]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-140]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #76]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #76]
	add	r3, r3, #1
	str	r3, [r7, #76]
.L173:
	.loc 1 1242 0 discriminator 1
	ldr	r3, [r7, #76]
	cmp	r3, #4
	ble	.L174
	.loc 1 1242 0
	b	.L222
.L172:
	.loc 1 1243 0 is_stmt 1
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L239
	.loc 1 1244 0
	mov	r3, #0
	str	r3, [r7, #76]
	b	.L175
.L176:
	.loc 1 1244 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #76]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #76]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #76]
	add	r3, r3, #1
	str	r3, [r7, #76]
.L175:
	.loc 1 1244 0 discriminator 1
	ldr	r3, [r7, #76]
	cmp	r3, #4
	ble	.L176
.LBE5:
	.loc 1 1248 0 is_stmt 1
	b	.L239
.L222:
	b	.L239
.L165:
	.loc 1 1253 0
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L177
	.loc 1 1253 0 is_stmt 0 discriminator 1
	mov	r0, #11
	bl	mikes_get_switch
	mov	r3, r0
	cmp	r3, #0
	bne	.L240
.L177:
	.loc 1 1258 0 is_stmt 1
	ldr	r2, [r7, #52]
	movw	r3, #4499
	cmp	r2, r3
	ble	.L241
	.loc 1 1259 0
	mov	r3, #1
	str	r3, [r7, #132]
	.loc 1 1260 0
	bl	getTime
	mov	r3, r0
	str	r3, [r7, #136]
	.loc 1 1261 0
	b	.L161
.L238:
	.loc 1 1214 0
	nop
	b	.L167
.L239:
	.loc 1 1248 0
	nop
.L167:
	.loc 1 1266 0
	b	.L241
.L236:
	.loc 1 1206 0
	nop
	b	.L161
.L237:
	.loc 1 1208 0
	nop
	b	.L161
.L240:
	.loc 1 1254 0
	nop
.L161:
.LBE3:
	.loc 1 1268 0
	b	.L235
.L130:
	.loc 1 1272 0
	ldr	r3, [r7, #108]
	cmp	r3, #2
	beq	.L242
	.loc 1 1272 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L242
	.loc 1 1273 0 is_stmt 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L180
	.loc 1 1274 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r4, [r3, #0]
	add	r3, r7, #4
	mov	r0, r3
	bl	arrtosi
	mov	r2, r0
	movw	r3, #:lower16:toneArr
	movt	r3, #:upper16:toneArr
	str	r2, [r3, r4, lsl #3]
	.loc 1 1275 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r4, [r3, #0]
	add	r3, r7, #24
	mov	r0, r3
	bl	arrtosi
	mov	r1, r0
	movw	r2, #:lower16:toneArr
	movt	r2, #:upper16:toneArr
	lsl	r3, r4, #3
	adds	r3, r2, r3
	str	r1, [r3, #4]
	.loc 1 1276 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	str	r2, [r3, #0]
	.loc 1 1288 0
	b	.L242
.L180:
	.loc 1 1277 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L242
.LBB6:
	.loc 1 1278 0
	ldr	r3, [r7, #120]
	cmp	r3, #0
	ble	.L181
	.loc 1 1278 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #120]
	add	r3, r3, #-1
	str	r3, [r7, #120]
	b	.L182
.L181:
	.loc 1 1279 0 is_stmt 1
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	ldr	r3, [r3, #0]
	add	r3, r3, #-1
	str	r3, [r7, #120]
.L182:
	.loc 1 1280 0
	movw	r3, #:lower16:toneArr
	movt	r3, #:upper16:toneArr
	ldr	r2, [r7, #120]
	ldr	r3, [r3, r2, lsl #3]
	add	r2, r7, #4
	mov	r0, r2
	mov	r1, r3
	bl	sitoarr
	.loc 1 1281 0
	movw	r2, #:lower16:toneArr
	movt	r2, #:upper16:toneArr
	ldr	r3, [r7, #120]
	lsl	r3, r3, #3
	adds	r3, r2, r3
	ldr	r3, [r3, #4]
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	sitoarr
	.loc 1 1282 0
	mov	r3, #15
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
	.loc 1 1283 0
	mov	r3, #0
	str	r3, [r7, #72]
	.loc 1 1284 0
	mov	r3, #0
	str	r3, [r7, #72]
	b	.L183
.L184:
	.loc 1 1284 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #72]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #72]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #72]
	add	r3, r3, #1
	str	r3, [r7, #72]
.L183:
	.loc 1 1284 0 discriminator 1
	ldr	r3, [r7, #72]
	cmp	r3, #4
	ble	.L184
	.loc 1 1285 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #108]
.LBE6:
	.loc 1 1288 0
	b	.L242
.L224:
	.loc 1 1069 0
	nop
	b	.L118
.L225:
	.loc 1 1081 0
	nop
	b	.L118
.L226:
	.loc 1 1088 0
	nop
	b	.L118
.L227:
	.loc 1 1100 0
	nop
	b	.L118
.L228:
	.loc 1 1107 0
	nop
	b	.L118
.L229:
	.loc 1 1119 0
	nop
	b	.L118
.L230:
	.loc 1 1126 0
	nop
	b	.L118
.L231:
	.loc 1 1138 0
	nop
	b	.L118
.L232:
	.loc 1 1153 0
	nop
	b	.L118
.L233:
	.loc 1 1189 0
	nop
	b	.L118
.L235:
	.loc 1 1268 0
	nop
	b	.L118
.L242:
	.loc 1 1288 0
	nop
.L118:
	.loc 1 1295 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L185
	.loc 1 1296 0 discriminator 1
	add	r3, r7, #4
	mov	r0, r3
	bl	arrtosi
	mov	r3, r0
	.loc 1 1295 0 discriminator 1
	cmp	r3, #124
	ble	.L186
	.loc 1 1296 0
	ldr	r3, [r7, #4]
	cmp	r3, #9
	bne	.L185
	.loc 1 1296 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L185
.L186:
	.loc 1 1297 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 1298 0
	mov	r3, #1
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	.loc 1 1299 0
	mov	r3, #2
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	.loc 1 1300 0
	mov	r3, #5
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #12]
.L185:
	.loc 1 1303 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L187
	.loc 1 1303 0 is_stmt 0 discriminator 1
	add	r3, r7, #4
	mov	r0, r3
	bl	arrtosi
	mov	r3, r0
	cmp	r3, #8000
	ble	.L187
	.loc 1 1304 0 is_stmt 1
	mov	r3, #8
	str	r3, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #0]
	.loc 1 1305 0
	mov	r3, #0
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #4]
	.loc 1 1306 0
	mov	r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #8]
	.loc 1 1307 0
	mov	r3, #0
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	str	r2, [r3, #12]
.L187:
	.loc 1 1328 0
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L188
	.loc 1 1328 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L188
.LBB7:
	.loc 1 1329 0 is_stmt 1
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r3, [r3, #16]
	str	r3, [r7, #48]
	.loc 1 1332 0
	bl	read_encoderA
	mov	r3, r0
	str	r3, [r7, #68]
	.loc 1 1333 0
	bl	read_encoderB
	mov	r3, r0
	str	r3, [r7, #64]
	.loc 1 1336 0
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #64]
	bl	update_fsm_level2
	mov	r3, r0
	str	r3, [r7, #60]
	.loc 1 1339 0
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L191
	cmp	r3, #2
	beq	.L192
	cmp	r3, #0
	bne	.L189
.L190:
	.loc 1 1342 0
	ldr	r3, [r7, #60]
	cmp	r3, #1
	bne	.L193
	.loc 1 1343 0
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	mov	r2, #1
	strb	r2, [r3, #0]
	.loc 1 1349 0
	b	.L243
.L193:
	.loc 1 1344 0
	ldr	r3, [r7, #60]
	cmp	r3, #-1
	bne	.L243
	.loc 1 1345 0
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	mov	r2, #2
	strb	r2, [r3, #0]
	.loc 1 1349 0
	b	.L243
.L191:
	.loc 1 1352 0
	ldr	r3, [r7, #60]
	cmp	r3, #1
	bne	.L195
	.loc 1 1354 0
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bne	.L196
	.loc 1 1354 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bne	.L196
	.loc 1 1354 0 discriminator 1
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L197
.L196:
	add	r3, r7, #24
	mov	r0, r3
	mov	r1, #5
	bl	increment_arr
.L197:
	.loc 1 1355 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #96]
	b	.L198
.L199:
	.loc 1 1355 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #96]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #96]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #96]
	add	r3, r3, #1
	str	r3, [r7, #96]
.L198:
	.loc 1 1355 0 discriminator 1
	ldr	r3, [r7, #96]
	cmp	r3, #4
	ble	.L199
	.loc 1 1356 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 1363 0
	b	.L244
.L195:
	.loc 1 1357 0
	ldr	r3, [r7, #60]
	cmp	r3, #-1
	bne	.L244
	.loc 1 1359 0
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	mov	r2, #2
	strb	r2, [r3, #0]
	.loc 1 1363 0
	b	.L244
.L192:
	.loc 1 1366 0
	ldr	r3, [r7, #60]
	cmp	r3, #1
	bne	.L201
	.loc 1 1368 0
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	mov	r2, #1
	strb	r2, [r3, #0]
	.loc 1 1377 0
	b	.L245
.L201:
	.loc 1 1369 0
	ldr	r3, [r7, #60]
	cmp	r3, #-1
	bne	.L245
	.loc 1 1371 0
	ldr	r3, [r7, #28]
	cmp	r3, #12
	bne	.L203
	.loc 1 1371 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bne	.L203
	.loc 1 1371 0 discriminator 1
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L204
.L203:
	add	r3, r7, #24
	mov	r0, r3
	mov	r1, #5
	bl	decrement_arr
.L204:
	.loc 1 1372 0 is_stmt 1
	mov	r3, #0
	str	r3, [r7, #96]
	b	.L205
.L206:
	.loc 1 1372 0 is_stmt 0 discriminator 2
	ldr	r3, [r7, #96]
	lsl	r3, r3, #2
	add	r2, r7, #144
	adds	r3, r2, r3
	ldr	r1, [r3, #-120]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #96]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #96]
	add	r3, r3, #1
	str	r3, [r7, #96]
.L205:
	.loc 1 1372 0 discriminator 1
	ldr	r3, [r7, #96]
	cmp	r3, #4
	ble	.L206
	.loc 1 1373 0 is_stmt 1
	movw	r3, #:lower16:encoder_state_lvl1
	movt	r3, #:upper16:encoder_state_lvl1
	mov	r2, #0
	strb	r2, [r3, #0]
	.loc 1 1377 0
	b	.L245
.L243:
	.loc 1 1349 0
	nop
	b	.L189
.L244:
	.loc 1 1363 0
	nop
	b	.L189
.L245:
	.loc 1 1377 0
	nop
.L189:
	.loc 1 1379 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r2, [r7, #48]
	str	r2, [r3, #16]
.L188:
.LBE7:
	.loc 1 1385 0
	ldr	r3, [r7, #100]
	cmp	r3, #0
	beq	.L207
	.loc 1 1385 0 is_stmt 0 discriminator 1
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L207
	add	r3, r7, #24
	mov	r0, r3
	bl	blink_playmode_led
.L207:
	.loc 1 1388 0 is_stmt 1
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L208
	.loc 1 1388 0 is_stmt 0 discriminator 1
	ldr	r0, [r7, #140]
	bl	blink_reset_led
.L208:
	.loc 1 1392 0 is_stmt 1
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L209
	.loc 1 1392 0 is_stmt 0 discriminator 1
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #136]
	subs	r2, r2, r3
	movw	r3, #4499
	cmp	r2, r3
	bls	.L209
.LBB8:
	.loc 1 1395 0 is_stmt 1
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #11
	str	r2, [r3, #16]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #20]
	.loc 1 1396 0
	bl	zero_disp
	.loc 1 1397 0
	bl	getTime
	mov	r3, r0
	str	r3, [r7, #44]
	b	.L217
.L247:
	.loc 1 1405 0
	nop
.L217:
	.loc 1 1399 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #44]
	add	r3, r3, #1800
	cmp	r2, r3
	bhi	.L246
.L210:
	.loc 1 1400 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #44]
	add	r3, r3, #1488
	add	r3, r3, #12
	cmp	r2, r3
	bls	.L212
	.loc 1 1400 0 is_stmt 0 discriminator 1
	bl	off_disp
	.loc 1 1405 0 is_stmt 1 discriminator 1
	b	.L247
.L212:
	.loc 1 1401 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #44]
	add	r3, r3, #1200
	cmp	r2, r3
	bls	.L214
	.loc 1 1401 0 is_stmt 0 discriminator 1
	bl	zero_disp
	.loc 1 1405 0 is_stmt 1 discriminator 1
	b	.L247
.L214:
	.loc 1 1402 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #44]
	add	r3, r3, #900
	cmp	r2, r3
	bls	.L215
	.loc 1 1402 0 is_stmt 0 discriminator 1
	bl	off_disp
	.loc 1 1405 0 is_stmt 1 discriminator 1
	b	.L247
.L215:
	.loc 1 1403 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #44]
	add	r3, r3, #600
	cmp	r2, r3
	bls	.L216
	.loc 1 1403 0 is_stmt 0 discriminator 1
	bl	zero_disp
	.loc 1 1405 0 is_stmt 1 discriminator 1
	b	.L247
.L216:
	.loc 1 1404 0
	bl	getTime
	mov	r2, r0
	ldr	r3, [r7, #44]
	add	r3, r3, #300
	cmp	r2, r3
	bls	.L247
	.loc 1 1404 0 is_stmt 0 discriminator 1
	bl	off_disp
	.loc 1 1405 0 is_stmt 1 discriminator 1
	b	.L247
.L246:
	.loc 1 1399 0
	nop
.L223:
	.loc 1 1408 0
	mov	r3, #0
	str	r3, [r7, #4]
	mov	r3, #1
	str	r3, [r7, #8]
	mov	r3, #2
	str	r3, [r7, #12]
	mov	r3, #5
	str	r3, [r7, #16]
	mov	r3, #10
	str	r3, [r7, #20]
	.loc 1 1409 0
	mov	r3, #13
	str	r3, [r7, #24]
	mov	r3, #12
	str	r3, [r7, #28]
	mov	r3, #1
	str	r3, [r7, #32]
	mov	r3, #0
	str	r3, [r7, #36]
	mov	r3, #17
	str	r3, [r7, #40]
	.loc 1 1410 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #0
	str	r2, [r3, #0]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #0
	str	r2, [r3, #4]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #0
	str	r2, [r3, #8]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #0
	str	r2, [r3, #12]
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #13
	str	r2, [r3, #16]
	.loc 1 1413 0
	movw	r3, #:lower16:numTones
	movt	r3, #:upper16:numTones
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 1416 0
	mov	r3, #0
	str	r3, [r7, #100]
	.loc 1 1417 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 1420 0
	mov	r3, #0
	str	r3, [r7, #132]
	.loc 1 1423 0
	mov	r3, #2
	str	r3, [r7, #108]
	.loc 1 1426 0
	movw	r3, #:lower16:prevTime
	movt	r3, #:upper16:prevTime
	mov	r2, #0
	str	r2, [r3, #0]
	movw	r3, #:lower16:prevTime
	movt	r3, #:upper16:prevTime
	ldr	r2, [r3, #0]
	movw	r3, #:lower16:offset
	movt	r3, #:upper16:offset
	str	r2, [r3, #0]
.L209:
.LBE8:
	.loc 1 1431 0
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L248
	.loc 1 1433 0
	mov	r0, #11
	bl	mikes_get_switch
	mov	r3, r0
	cmp	r3, #0
	beq	.L248
	.loc 1 1434 0
	movw	r3, #:lower16:prevTime
	movt	r3, #:upper16:prevTime
	mov	r2, #0
	str	r2, [r3, #0]
	movw	r3, #:lower16:prevTime
	movt	r3, #:upper16:prevTime
	ldr	r2, [r3, #0]
	movw	r3, #:lower16:offset
	movt	r3, #:upper16:offset
	str	r2, [r3, #0]
	.loc 1 1435 0
	mov	r3, #0
	str	r3, [r7, #132]
	.loc 1 1436 0
	movw	r3, #:lower16:testMode
	movt	r3, #:upper16:testMode
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L219
	.loc 1 1437 0
	ldr	r3, [r7, #108]
	cmp	r3, #1
	bne	.L220
	.loc 1 1438 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #10
	str	r2, [r3, #16]
	.loc 1 1449 0
	b	.L248
.L220:
	.loc 1 1439 0
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L248
	.loc 1 1440 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #17
	str	r2, [r3, #16]
	.loc 1 1449 0
	b	.L248
.L219:
	.loc 1 1443 0
	movw	r3, #:lower16:digitvals
	movt	r3, #:upper16:digitvals
	mov	r2, #15
	str	r2, [r3, #16]
	.loc 1 1449 0
	b	.L248
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.bss
	.align	2
position.2495:
	.space	4
	.text
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xabe
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x1
	.4byte	.LASF121
	.4byte	.LASF122
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.byte	0x50
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	0x48
	.4byte	0x86
	.uleb128 0x6
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x88
	.byte	0x1
	.byte	0x39
	.4byte	0x234
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x1
	.byte	0x3c
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3d
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"CIR\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3f
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x40
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x41
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x42
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x43
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x44
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x45
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x46
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x47
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x49
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4c
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x4d
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x1
	.byte	0x4e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4f
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x50
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x1
	.byte	0x51
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x52
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x1
	.byte	0x53
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x54
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x56
	.4byte	0x76
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x57
	.4byte	0x48
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x58
	.4byte	0x48
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1
	.byte	0x59
	.4byte	0x86
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF38
	.uleb128 0xa
	.4byte	.LASF123
	.byte	0x8
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x272
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x68
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1be
	.4byte	0x246
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x29a
	.uleb128 0xe
	.4byte	.LASF42
	.sleb128 0
	.uleb128 0xe
	.4byte	.LASF43
	.sleb128 1
	.uleb128 0xe
	.4byte	.LASF44
	.sleb128 2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x27e
	.uleb128 0xd
	.byte	0x1
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x2da
	.uleb128 0xe
	.4byte	.LASF46
	.sleb128 0
	.uleb128 0xf
	.ascii	"UP1\000"
	.sleb128 1
	.uleb128 0xf
	.ascii	"UP2\000"
	.sleb128 2
	.uleb128 0xf
	.ascii	"UP3\000"
	.sleb128 3
	.uleb128 0xe
	.4byte	.LASF47
	.sleb128 4
	.uleb128 0xe
	.4byte	.LASF48
	.sleb128 5
	.uleb128 0xe
	.4byte	.LASF49
	.sleb128 6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x2a6
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x132
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.4byte	0x34c
	.uleb128 0x11
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x134
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x179
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST1
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x180
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST2
	.4byte	0x39b
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x180
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x181
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x246
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST3
	.4byte	0x3e3
	.uleb128 0x15
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x246
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x246
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x247
	.4byte	0x3e3
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.4byte	0x68
	.4byte	0x3f3
	.uleb128 0x6
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x2a4
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST4
	.4byte	0x42c
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x42c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x68
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x2dc
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST5
	.4byte	0x45e
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x6f
	.byte	0x5
	.byte	0x3
	.4byte	position.2495
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x2ee
	.byte	0x1
	.4byte	0x68
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST6
	.4byte	0x4ce
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x2ee
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x2ef
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x2f8
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x30a
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST7
	.4byte	0x545
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x30a
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x30a
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x30c
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x30d
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x32f
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST8
	.4byte	0x58d
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x32f
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x32f
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x331
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x341
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST9
	.4byte	0x5d5
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x341
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x341
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x343
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x351
	.byte	0x1
	.4byte	0x68
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST10
	.4byte	0x621
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x351
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x351
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x352
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x390
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST11
	.4byte	0x669
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x390
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x391
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x392
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x3a8
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST12
	.4byte	0x6cf
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x3a8
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x3a9
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x3aa
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x12
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x3ab
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x3ac
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x3c6
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST13
	.4byte	0x6f9
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x4ce
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x3cf
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST14
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x3d3
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST15
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x3dc
	.byte	0x1
	.4byte	0x68
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST16
	.4byte	0x941
	.uleb128 0x12
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x3dd
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x3de
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x3df
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x3df
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x3df
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x3e2
	.4byte	0x941
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x3e7
	.4byte	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x3e8
	.4byte	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x3e9
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x3f0
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x3f1
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x3f3
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x12
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x3f4
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x6f
	.byte	0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x3f6
	.4byte	0x941
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x11
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x68
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x404
	.4byte	0x68
	.byte	0x1
	.4byte	0x875
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x8ea
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x4ad
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x4ae
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x4af
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x8d0
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x4c9
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x19
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x11
	.ascii	"it\000"
	.byte	0x1
	.2byte	0x4d8
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x908
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x503
	.4byte	0x68
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0x926
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x531
	.4byte	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x19
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x575
	.4byte	0x6f
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x6f
	.4byte	0x951
	.uleb128 0x6
	.4byte	0x6f
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1d
	.4byte	0x48
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x175
	.4byte	0x96c
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x272
	.4byte	0x982
	.uleb128 0x21
	.4byte	0x6f
	.2byte	0x3ff
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x971
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x68
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x29a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x2da
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1de
	.4byte	0x941
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x3a6
	.4byte	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x6f
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.4byte	.LASF119
	.byte	0x1
	.byte	0x13
	.4byte	0x68
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Cint
	.uleb128 0x22
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1d
	.4byte	0x48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x175
	.4byte	0x96c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	msTicks
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x971
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	toneArr
	.uleb128 0x23
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x68
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numTones
	.uleb128 0x23
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x68
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	testMode
	.uleb128 0x23
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x29a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	encoder_state_lvl1
	.uleb128 0x23
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x2da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	encoder_state_lvl2
	.uleb128 0x23
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x1de
	.4byte	0x941
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	digitvals
	.uleb128 0x23
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x3a6
	.4byte	0x6f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	prevTime
	.uleb128 0x23
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x3a7
	.4byte	0x6f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	offset
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 160
	.4byte	.LCFI46-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x3
	.byte	0x77
	.sleb128 160
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF66:
	.ascii	"curVal\000"
.LASF22:
	.ascii	"APB1ENR\000"
.LASF75:
	.ascii	"encA\000"
.LASF76:
	.ascii	"encB\000"
.LASF100:
	.ascii	"curDisplayMode\000"
.LASF30:
	.ascii	"APB2LPENR\000"
.LASF16:
	.ascii	"APB2RSTR\000"
.LASF77:
	.ascii	"fsm_lvl2_output\000"
.LASF64:
	.ascii	"int_arr\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF114:
	.ascii	"encoder_state_lvl1\000"
.LASF115:
	.ascii	"encoder_state_lvl2\000"
.LASF69:
	.ascii	"modVal\000"
.LASF32:
	.ascii	"BDCR\000"
.LASF92:
	.ascii	"resetPending\000"
.LASF93:
	.ascii	"curFreq\000"
.LASF81:
	.ascii	"curTime\000"
.LASF39:
	.ascii	"frequency\000"
.LASF26:
	.ascii	"AHB2LPENR\000"
.LASF68:
	.ascii	"curNum\000"
.LASF113:
	.ascii	"testMode\000"
.LASF101:
	.ascii	"playMode\000"
.LASF126:
	.ascii	"wallClk_init\000"
.LASF87:
	.ascii	"inten_array\000"
.LASF117:
	.ascii	"prevTime\000"
.LASF36:
	.ascii	"uint32_t\000"
.LASF119:
	.ascii	"Cint\000"
.LASF58:
	.ascii	"display_num_at_digit\000"
.LASF116:
	.ascii	"digitvals\000"
.LASF54:
	.ascii	"pllm\000"
.LASF52:
	.ascii	"pllp\000"
.LASF18:
	.ascii	"AHB1ENR\000"
.LASF34:
	.ascii	"SSCGR\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF111:
	.ascii	"toneArr\000"
.LASF40:
	.ascii	"intensity\000"
.LASF88:
	.ascii	"off_disp\000"
.LASF96:
	.ascii	"intenvals\000"
.LASF13:
	.ascii	"AHB3RSTR\000"
.LASF122:
	.ascii	"C:\\\\arm_stuff\\\\Schultz440SP13_project\000"
.LASF82:
	.ascii	"blink_reset_led\000"
.LASF118:
	.ascii	"offset\000"
.LASF65:
	.ascii	"returnNum\000"
.LASF95:
	.ascii	"numTonesPos\000"
.LASF37:
	.ascii	"RCC_TypeDef\000"
.LASF41:
	.ascii	"Tone\000"
.LASF20:
	.ascii	"AHB3ENR\000"
.LASF51:
	.ascii	"pllvco\000"
.LASF42:
	.ascii	"INITIAL_LVL1\000"
.LASF15:
	.ascii	"APB1RSTR\000"
.LASF45:
	.ascii	"Encoder_state_lvl1\000"
.LASF50:
	.ascii	"Encoder_state_lvl2\000"
.LASF57:
	.ascii	"curTicks\000"
.LASF38:
	.ascii	"char\000"
.LASF89:
	.ascii	"zero_disp\000"
.LASF46:
	.ascii	"INITIAL\000"
.LASF73:
	.ascii	"arrtosi\000"
.LASF63:
	.ascii	"bitpatterns\000"
.LASF86:
	.ascii	"reset_intensity\000"
.LASF97:
	.ascii	"buttonIsBeingHit\000"
.LASF94:
	.ascii	"curInten\000"
.LASF98:
	.ascii	"actionPerformed\000"
.LASF112:
	.ascii	"numTones\000"
.LASF103:
	.ascii	"i_sw\000"
.LASF6:
	.ascii	"long long int\000"
.LASF29:
	.ascii	"APB1LPENR\000"
.LASF47:
	.ascii	"DOWN1\000"
.LASF48:
	.ascii	"DOWN2\000"
.LASF49:
	.ascii	"DOWN3\000"
.LASF124:
	.ascii	"SysTick_Handler\000"
.LASF62:
	.ascii	"translate_digit_to_anode_bitpattern\000"
.LASF70:
	.ascii	"decrement_arr\000"
.LASF83:
	.ascii	"timeOfLastReset\000"
.LASF108:
	.ascii	"origLedPattern\000"
.LASF71:
	.ascii	"step\000"
.LASF110:
	.ascii	"msTicks\000"
.LASF121:
	.ascii	"mikes_project_main.c\000"
.LASF72:
	.ascii	"increment_arr\000"
.LASF74:
	.ascii	"update_fsm_level2\000"
.LASF23:
	.ascii	"APB2ENR\000"
.LASF91:
	.ascii	"resetPendingBeginTime\000"
.LASF43:
	.ascii	"UP_DETENT1\000"
.LASF25:
	.ascii	"AHB1LPENR\000"
.LASF104:
	.ascii	"timeStart\000"
.LASF102:
	.ascii	"freqvals\000"
.LASF80:
	.ascii	"blinkTime\000"
.LASF109:
	.ascii	"SystemCoreClock\000"
.LASF12:
	.ascii	"AHB2RSTR\000"
.LASF84:
	.ascii	"timeSinceLastReset\000"
.LASF14:
	.ascii	"RESERVED0\000"
.LASF17:
	.ascii	"RESERVED1\000"
.LASF21:
	.ascii	"RESERVED2\000"
.LASF24:
	.ascii	"RESERVED3\000"
.LASF28:
	.ascii	"RESERVED4\000"
.LASF31:
	.ascii	"RESERVED5\000"
.LASF33:
	.ascii	"RESERVED6\000"
.LASF2:
	.ascii	"short int\000"
.LASF4:
	.ascii	"long int\000"
.LASF44:
	.ascii	"DOWN_DETENT1\000"
.LASF106:
	.ascii	"alreadyHere\000"
.LASF105:
	.ascii	"timeHeld\000"
.LASF10:
	.ascii	"CFGR\000"
.LASF123:
	.ascii	"tone\000"
.LASF125:
	.ascii	"mikes_display_update\000"
.LASF9:
	.ascii	"PLLCFGR\000"
.LASF79:
	.ascii	"intenvals_param\000"
.LASF27:
	.ascii	"AHB3LPENR\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF19:
	.ascii	"AHB2ENR\000"
.LASF78:
	.ascii	"blink_playmode_led\000"
.LASF120:
	.ascii	"GNU C 4.6.2\000"
.LASF35:
	.ascii	"PLLI2SCFGR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF56:
	.ascii	"Delay\000"
.LASF67:
	.ascii	"sitoarr\000"
.LASF53:
	.ascii	"pllsource\000"
.LASF61:
	.ascii	"an_bitpatterns\000"
.LASF107:
	.ascii	"iter\000"
.LASF0:
	.ascii	"signed char\000"
.LASF85:
	.ascii	"period\000"
.LASF99:
	.ascii	"displayMode\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF90:
	.ascii	"main\000"
.LASF59:
	.ascii	"dlyTicks\000"
.LASF55:
	.ascii	"SystemCoreClockUpdate\000"
.LASF60:
	.ascii	"position\000"
.LASF11:
	.ascii	"AHB1RSTR\000"
	.ident	"GCC: (GNU) 4.6.2"
