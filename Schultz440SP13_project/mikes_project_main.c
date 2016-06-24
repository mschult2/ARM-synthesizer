/* MIKE'S NOTES
	LED display data:
		The default format for storage of the total pattern to be displayed on the LEDs is
	an unsigned int array of size five.  Index 0 stores the red/green colored LED pattern, index 1
	stores the rightmost digit on the 7 seg display, and subsequent array indices store
	the next most sig digit on the 7 seg display.  The colon pattern is not stored, it's
	just always off.
		The numbers 0-9 represent those same numbers, but I use different numbers (#defined with
	names to avoid confusion) to also indicate OFF, NEG_SIGN, and various patterns for the
	non-numeric colored LEDs.
		I have a couple functions for converting between the unsigned int array form of the 
		number to be displayed and the normal numerical int representation (note that the numerical
		representation does not encode the red/green LED pattern, since that is not numerical).
	*/



//global variables used in CortexM4asmOps_01.asm but defined here
	int Cint;

//!!added stuff to get it to compile
  #include <stdint.h>	//various versions of this in yagarto -- gives unint32_t and other definitions

  //disable some bothersome type identifiers 
  #define __IO  		
  #define __I
  #define __O

  uint32_t SystemCoreClock; 	//!!found in system_stm32f4xx.c, added here as global but initialized in main()
  
  //things we found in stm32f4xx.h and copied here to to squelch compiler complaints
  #define PERIPH_BASE           ((uint32_t)0x40000000)
  #define AHB1PERIPH_BASE       (PERIPH_BASE + 0x00020000)  
  #define RCC_BASE              (AHB1PERIPH_BASE + 0x3800)
  #define GPIOA_BASE            (AHB1PERIPH_BASE + 0x0000)
	#define GPIOB_BASE            (GPIOA_BASE + 0x0400)
	#define GPIOC_BASE            (GPIOB_BASE + 0x0400)
	
typedef struct
{
  __IO uint32_t MODER;    /*!< GPIO port mode register,               Address offset: 0x00      */
  __IO uint32_t OTYPER;   /*!< GPIO port output type register,        Address offset: 0x04      */
  __IO uint32_t OSPEEDR;  /*!< GPIO port output speed register,       Address offset: 0x08      */
  __IO uint32_t PUPDR;    /*!< GPIO port pull-up/pull-down register,  Address offset: 0x0C      */
  __IO uint32_t IDR;      /*!< GPIO port input data register,         Address offset: 0x10      */
  __IO uint32_t ODR;      /*!< GPIO port output data register,        Address offset: 0x14      */
  __IO uint16_t BSRRL;    /*!< GPIO port bit set/reset low register,  Address offset: 0x18      */
  __IO uint16_t BSRRH;    /*!< GPIO port bit set/reset high register, Address offset: 0x1A      */
  __IO uint32_t LCKR;     /*!< GPIO port configuration lock register, Address offset: 0x1C      */
  __IO uint32_t AFR[2];   /*!< GPIO alternate function registers,     Address offset: 0x20-0x24 */
} GPIO_TypeDef; 

  #define GPIOA               	((GPIO_TypeDef *) GPIOA_BASE)
  #define GPIOB               	((GPIO_TypeDef *) GPIOB_BASE)
  #define GPIOC               	((GPIO_TypeDef *) GPIOC_BASE)
  
typedef struct
{
  __IO uint32_t CR;            /*!< RCC clock control register,                                  Address offset: 0x00 */
  __IO uint32_t PLLCFGR;       /*!< RCC PLL configuration register,                              Address offset: 0x04 */
  __IO uint32_t CFGR;          /*!< RCC clock configuration register,                            Address offset: 0x08 */
  __IO uint32_t CIR;           /*!< RCC clock interrupt register,                                Address offset: 0x0C */
  __IO uint32_t AHB1RSTR;      /*!< RCC AHB1 peripheral reset register,                          Address offset: 0x10 */
  __IO uint32_t AHB2RSTR;      /*!< RCC AHB2 peripheral reset register,                          Address offset: 0x14 */
  __IO uint32_t AHB3RSTR;      /*!< RCC AHB3 peripheral reset register,                          Address offset: 0x18 */
  uint32_t      RESERVED0;     /*!< Reserved, 0x1C                                                                    */
  __IO uint32_t APB1RSTR;      /*!< RCC APB1 peripheral reset register,                          Address offset: 0x20 */
  __IO uint32_t APB2RSTR;      /*!< RCC APB2 peripheral reset register,                          Address offset: 0x24 */
  uint32_t      RESERVED1[2];  /*!< Reserved, 0x28-0x2C                                                               */
  __IO uint32_t AHB1ENR;       /*!< RCC AHB1 peripheral clock register,                          Address offset: 0x30 */
  __IO uint32_t AHB2ENR;       /*!< RCC AHB2 peripheral clock register,                          Address offset: 0x34 */
  __IO uint32_t AHB3ENR;       /*!< RCC AHB3 peripheral clock register,                          Address offset: 0x38 */
  uint32_t      RESERVED2;     /*!< Reserved, 0x3C                                                                    */
  __IO uint32_t APB1ENR;       /*!< RCC APB1 peripheral clock enable register,                   Address offset: 0x40 */
  __IO uint32_t APB2ENR;       /*!< RCC APB2 peripheral clock enable register,                   Address offset: 0x44 */
  uint32_t      RESERVED3[2];  /*!< Reserved, 0x48-0x4C                                                               */
  __IO uint32_t AHB1LPENR;     /*!< RCC AHB1 peripheral clock enable in low power mode register, Address offset: 0x50 */
  __IO uint32_t AHB2LPENR;     /*!< RCC AHB2 peripheral clock enable in low power mode register, Address offset: 0x54 */
  __IO uint32_t AHB3LPENR;     /*!< RCC AHB3 peripheral clock enable in low power mode register, Address offset: 0x58 */
  uint32_t      RESERVED4;     /*!< Reserved, 0x5C                                                                    */
  __IO uint32_t APB1LPENR;     /*!< RCC APB1 peripheral clock enable in low power mode register, Address offset: 0x60 */
  __IO uint32_t APB2LPENR;     /*!< RCC APB2 peripheral clock enable in low power mode register, Address offset: 0x64 */
  uint32_t      RESERVED5[2];  /*!< Reserved, 0x68-0x6C                                                               */
  __IO uint32_t BDCR;          /*!< RCC Backup domain control register,                          Address offset: 0x70 */
  __IO uint32_t CSR;           /*!< RCC clock control & status register,                         Address offset: 0x74 */
  uint32_t      RESERVED6[2];  /*!< Reserved, 0x78-0x7C                                                               */
  __IO uint32_t SSCGR;         /*!< RCC spread spectrum clock generation register,               Address offset: 0x80 */
  __IO uint32_t PLLI2SCFGR;    /*!< RCC PLLI2S configuration register,                           Address offset: 0x84 */
} RCC_TypeDef;
  
  #define RCC                 ((RCC_TypeDef *) RCC_BASE)
  
//!!things we commented out to squelch compiler complaints
#include <stdio.h>				
//#include "STM32F4xx.h"

//!!things we cribbed from "STM32F4xx.h" to squelch complaints
#define  RCC_CFGR_SWS                        ((uint32_t)0x0000000C)        /*!< SWS[1:0] bits (System Clock Switch Status) */
#define HSI_VALUE    ((uint32_t)16000000) /*!< Value of the Internal oscillator in Hz*/
#define HSE_VALUE    ((uint32_t)25000000) /*!< Value of the External oscillator in Hz */
#define  RCC_PLLCFGR_PLLSRC                  ((uint32_t)0x00400000)
#define  RCC_PLLCFGR_PLLM                    ((uint32_t)0x0000003F)
#define  RCC_PLLCFGR_PLLN                     ((uint32_t)0x00007FC0)
#define  RCC_PLLCFGR_PLLP                    ((uint32_t)0x00030000)
#define __NVIC_PRIO_BITS          4       /*!< STM32F4XX uses 4 Bits for the Priority Levels */
typedef enum IRQn
{
/******  Cortex-M4 Processor Exceptions Numbers ****************************************************************/
  NonMaskableInt_IRQn         = -14,    /*!< 2 Non Maskable Interrupt                                          */
  MemoryManagement_IRQn       = -12,    /*!< 4 Cortex-M4 Memory Management Interrupt                           */
  BusFault_IRQn               = -11,    /*!< 5 Cortex-M4 Bus Fault Interrupt                                   */
  UsageFault_IRQn             = -10,    /*!< 6 Cortex-M4 Usage Fault Interrupt                                 */
  SVCall_IRQn                 = -5,     /*!< 11 Cortex-M4 SV Call Interrupt                                    */
  DebugMonitor_IRQn           = -4,     /*!< 12 Cortex-M4 Debug Monitor Interrupt                              */
  PendSV_IRQn                 = -2,     /*!< 14 Cortex-M4 Pend SV Interrupt                                    */
  SysTick_IRQn                = -1,     /*!< 15 Cortex-M4 System Tick Interrupt                                */
/******  STM32 specific Interrupt Numbers **********************************************************************/
  WWDG_IRQn                   = 0,      /*!< Window WatchDog Interrupt                                         */
  PVD_IRQn                    = 1,      /*!< PVD through EXTI Line detection Interrupt                         */
  TAMP_STAMP_IRQn             = 2,      /*!< Tamper and TimeStamp interrupts through the EXTI line             */
  RTC_WKUP_IRQn               = 3,      /*!< RTC Wakeup interrupt through the EXTI line                        */
  FLASH_IRQn                  = 4,      /*!< FLASH global Interrupt                                            */
  RCC_IRQn                    = 5,      /*!< RCC global Interrupt                                              */
  EXTI0_IRQn                  = 6,      /*!< EXTI Line0 Interrupt                                              */
  EXTI1_IRQn                  = 7,      /*!< EXTI Line1 Interrupt                                              */
  EXTI2_IRQn                  = 8,      /*!< EXTI Line2 Interrupt                                              */
  EXTI3_IRQn                  = 9,      /*!< EXTI Line3 Interrupt                                              */
  EXTI4_IRQn                  = 10,     /*!< EXTI Line4 Interrupt                                              */
  DMA1_Stream0_IRQn           = 11,     /*!< DMA1 Stream 0 global Interrupt                                    */
  DMA1_Stream1_IRQn           = 12,     /*!< DMA1 Stream 1 global Interrupt                                    */
  DMA1_Stream2_IRQn           = 13,     /*!< DMA1 Stream 2 global Interrupt                                    */
  DMA1_Stream3_IRQn           = 14,     /*!< DMA1 Stream 3 global Interrupt                                    */
  DMA1_Stream4_IRQn           = 15,     /*!< DMA1 Stream 4 global Interrupt                                    */
  DMA1_Stream5_IRQn           = 16,     /*!< DMA1 Stream 5 global Interrupt                                    */
  DMA1_Stream6_IRQn           = 17,     /*!< DMA1 Stream 6 global Interrupt                                    */
  ADC_IRQn                    = 18,     /*!< ADC1, ADC2 and ADC3 global Interrupts                             */
  CAN1_TX_IRQn                = 19,     /*!< CAN1 TX Interrupt                                                 */
  CAN1_RX0_IRQn               = 20,     /*!< CAN1 RX0 Interrupt                                                */
  CAN1_RX1_IRQn               = 21,     /*!< CAN1 RX1 Interrupt                                                */
  CAN1_SCE_IRQn               = 22,     /*!< CAN1 SCE Interrupt                                                */
  EXTI9_5_IRQn                = 23,     /*!< External Line[9:5] Interrupts                                     */
  TIM1_BRK_TIM9_IRQn          = 24,     /*!< TIM1 Break interrupt and TIM9 global interrupt                    */
  TIM1_UP_TIM10_IRQn          = 25,     /*!< TIM1 Update Interrupt and TIM10 global interrupt                  */
  TIM1_TRG_COM_TIM11_IRQn     = 26,     /*!< TIM1 Trigger and Commutation Interrupt and TIM11 global interrupt */
  TIM1_CC_IRQn                = 27,     /*!< TIM1 Capture Compare Interrupt                                    */
  TIM2_IRQn                   = 28,     /*!< TIM2 global Interrupt                                             */
  TIM3_IRQn                   = 29,     /*!< TIM3 global Interrupt                                             */
  TIM4_IRQn                   = 30,     /*!< TIM4 global Interrupt                                             */
  I2C1_EV_IRQn                = 31,     /*!< I2C1 Event Interrupt                                              */
  I2C1_ER_IRQn                = 32,     /*!< I2C1 Error Interrupt                                              */
  I2C2_EV_IRQn                = 33,     /*!< I2C2 Event Interrupt                                              */
  I2C2_ER_IRQn                = 34,     /*!< I2C2 Error Interrupt                                              */  
  SPI1_IRQn                   = 35,     /*!< SPI1 global Interrupt                                             */
  SPI2_IRQn                   = 36,     /*!< SPI2 global Interrupt                                             */
  USART1_IRQn                 = 37,     /*!< USART1 global Interrupt                                           */
  USART2_IRQn                 = 38,     /*!< USART2 global Interrupt                                           */
  USART3_IRQn                 = 39,     /*!< USART3 global Interrupt                                           */
  EXTI15_10_IRQn              = 40,     /*!< External Line[15:10] Interrupts                                   */
  RTC_Alarm_IRQn              = 41,     /*!< RTC Alarm (A and B) through EXTI Line Interrupt                   */
  OTG_FS_WKUP_IRQn            = 42,     /*!< USB OTG FS Wakeup through EXTI line interrupt                     */    
  TIM8_BRK_TIM12_IRQn         = 43,     /*!< TIM8 Break Interrupt and TIM12 global interrupt                   */
  TIM8_UP_TIM13_IRQn          = 44,     /*!< TIM8 Update Interrupt and TIM13 global interrupt                  */
  TIM8_TRG_COM_TIM14_IRQn     = 45,     /*!< TIM8 Trigger and Commutation Interrupt and TIM14 global interrupt */
  TIM8_CC_IRQn                = 46,     /*!< TIM8 Capture Compare Interrupt                                    */
  DMA1_Stream7_IRQn           = 47,     /*!< DMA1 Stream7 Interrupt                                            */
  FSMC_IRQn                   = 48,     /*!< FSMC global Interrupt                                             */
  SDIO_IRQn                   = 49,     /*!< SDIO global Interrupt                                             */
  TIM5_IRQn                   = 50,     /*!< TIM5 global Interrupt                                             */
  SPI3_IRQn                   = 51,     /*!< SPI3 global Interrupt                                             */
  UART4_IRQn                  = 52,     /*!< UART4 global Interrupt                                            */
  UART5_IRQn                  = 53,     /*!< UART5 global Interrupt                                            */
  TIM6_DAC_IRQn               = 54,     /*!< TIM6 global and DAC1&2 underrun error  interrupts                 */
  TIM7_IRQn                   = 55,     /*!< TIM7 global interrupt                                             */
  DMA2_Stream0_IRQn           = 56,     /*!< DMA2 Stream 0 global Interrupt                                    */
  DMA2_Stream1_IRQn           = 57,     /*!< DMA2 Stream 1 global Interrupt                                    */
  DMA2_Stream2_IRQn           = 58,     /*!< DMA2 Stream 2 global Interrupt                                    */
  DMA2_Stream3_IRQn           = 59,     /*!< DMA2 Stream 3 global Interrupt                                    */
  DMA2_Stream4_IRQn           = 60,     /*!< DMA2 Stream 4 global Interrupt                                    */
  ETH_IRQn                    = 61,     /*!< Ethernet global Interrupt                                         */
  ETH_WKUP_IRQn               = 62,     /*!< Ethernet Wakeup through EXTI line Interrupt                       */
  CAN2_TX_IRQn                = 63,     /*!< CAN2 TX Interrupt                                                 */
  CAN2_RX0_IRQn               = 64,     /*!< CAN2 RX0 Interrupt                                                */
  CAN2_RX1_IRQn               = 65,     /*!< CAN2 RX1 Interrupt                                                */
  CAN2_SCE_IRQn               = 66,     /*!< CAN2 SCE Interrupt                                                */
  OTG_FS_IRQn                 = 67,     /*!< USB OTG FS global Interrupt                                       */
  DMA2_Stream5_IRQn           = 68,     /*!< DMA2 Stream 5 global interrupt                                    */
  DMA2_Stream6_IRQn           = 69,     /*!< DMA2 Stream 6 global interrupt                                    */
  DMA2_Stream7_IRQn           = 70,     /*!< DMA2 Stream 7 global interrupt                                    */
  USART6_IRQn                 = 71,     /*!< USART6 global interrupt                                           */ 
  I2C3_EV_IRQn                = 72,     /*!< I2C3 event interrupt                                              */
  I2C3_ER_IRQn                = 73,     /*!< I2C3 error interrupt                                              */
  OTG_HS_EP1_OUT_IRQn         = 74,     /*!< USB OTG HS End Point 1 Out global interrupt                       */
  OTG_HS_EP1_IN_IRQn          = 75,     /*!< USB OTG HS End Point 1 In global interrupt                        */
  OTG_HS_WKUP_IRQn            = 76,     /*!< USB OTG HS Wakeup through EXTI interrupt                          */
  OTG_HS_IRQn                 = 77,     /*!< USB OTG HS global interrupt                                       */
  DCMI_IRQn                   = 78,     /*!< DCMI global interrupt                                             */
  CRYP_IRQn                   = 79,     /*!< CRYP crypto global interrupt                                      */
  HASH_RNG_IRQn               = 80,      /*!< Hash and Rng global interrupt                                     */
  FPU_IRQn                    = 81      /*!< FPU global interrupt                                              */
} IRQn_Type;



//!!things we left in to squelch compiler complaints
 //#include "LED.h"

 //!!code and definitions cribbed from C:\Keil_MDK460\ARM\CMSIS\Include\core_cm4.h
 /** \brief  Structure type to access the System Timer (SysTick).
 */
typedef struct
{
  __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Register */
  __IO uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register       */
  __IO uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register      */
  __I  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register        */
} SysTick_Type;
#define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address               */
#define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration struct       */

/** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 */
typedef struct
{
  __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register           */
       uint32_t RESERVED0[24];
  __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register         */
       uint32_t RSERVED1[24];
  __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register          */
       uint32_t RESERVED2[24];
  __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register        */
       uint32_t RESERVED3[24];
  __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register           */
       uint32_t RESERVED4[56];
  __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bit wide) */
       uint32_t RESERVED5[644];
  __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Register     */
}  NVIC_Type;
#define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address                  */
#define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struct          */

/** \brief  Structure type to access the System Control Block (SCB).
 */
typedef struct
{
  __I  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register                                   */
  __IO uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Register                  */
  __IO uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register                          */
  __IO uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset Control Register      */
  __IO uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register                               */
  __IO uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register                        */
  __IO uint8_t  SHP[12];                 /*!< Offset: 0x018 (R/W)  System Handlers Priority Registers (4-7, 8-11, 12-15) */
  __IO uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State Register             */
  __IO uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Register                    */
  __IO uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register                             */
  __IO uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register                           */
  __IO uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register                      */
  __IO uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register                             */
  __IO uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register                       */
  __I  uint32_t PFR[2];                  /*!< Offset: 0x040 (R/ )  Processor Feature Register                            */
  __I  uint32_t DFR;                     /*!< Offset: 0x048 (R/ )  Debug Feature Register                                */
  __I  uint32_t ADR;                     /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register                            */
  __I  uint32_t MMFR[4];                 /*!< Offset: 0x050 (R/ )  Memory Model Feature Register                         */
  __I  uint32_t ISAR[5];                 /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Register                   */
       uint32_t RESERVED0[5];
  __IO uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Register                   */
} SCB_Type;
#define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Base Address  */
#define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct           */


#define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Base Address  */

/* SysTick Control / Status Register Definitions */
#define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysTick CTRL: COUNTFLAG Position */
#define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysTick CTRL: COUNTFLAG Mask */

#define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysTick CTRL: CLKSOURCE Position */
#define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysTick CTRL: CLKSOURCE Mask */

#define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysTick CTRL: TICKINT Position */
#define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysTick CTRL: TICKINT Mask */

#define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysTick CTRL: ENABLE Position */
#define SysTick_CTRL_ENABLE_Msk            (1UL << SysTick_CTRL_ENABLE_Pos)               /*!< SysTick CTRL: ENABLE Mask */

/* SysTick Reload Register Definitions */
#define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysTick LOAD: RELOAD Position */
#define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL << SysTick_LOAD_RELOAD_Pos)        /*!< SysTick LOAD: RELOAD Mask */

/* SysTick Current Register Definitions */
#define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysTick VAL: CURRENT Position */
#define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysTick VAL: CURRENT Mask */

/* SysTick Calibration Register Definitions */
#define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysTick CALIB: NOREF Position */
#define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysTick CALIB: NOREF Mask */

#define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysTick CALIB: SKEW Position */
#define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysTick CALIB: SKEW Mask */

#define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysTick CALIB: TENMS Position */
#define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysTick CALIB: TENMS Mask */

/*@} end of group CMSIS_SysTick */

void SystemCoreClockUpdate(void)
{
  uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;
  
  /* Get SYSCLK source -------------------------------------------------------*/
  tmp = RCC->CFGR & RCC_CFGR_SWS; //!!in simulator says "*** error 65: access violation at 0x40023808 : no 'read' permission"

  switch (tmp)
  {
    case 0x00:  /* HSI used as system clock source */
      SystemCoreClock = HSI_VALUE;
      break;
    case 0x04:  /* HSE used as system clock source */
      SystemCoreClock = HSE_VALUE;
      break;
    case 0x08:  /* PLL used as system clock source */

      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLL_M) * PLL_N
         SYSCLK = PLL_VCO / PLL_P
         */    
      pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) >> 22;
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
      
      if (pllsource != 0)
      {
        /* HSE used as PLL clock source */
        pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);      
      }

      pllp = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >>16) + 1 ) *2;
      SystemCoreClock = pllvco/pllp;
      break;
    default:
      SystemCoreClock = HSI_VALUE;
      break;
  }
}
 

//__STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    SCB->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set Priority for Cortex-M  System Interrupts */
  else {
    NVIC->IP[(uint32_t)(IRQn)] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff);    }        /* set Priority for device specific Interrupts  */
}
 
 //__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks) - change to gcc 'static inline' convention
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > SysTick_LOAD_RELOAD_Msk)  return (1);      /* Reload value impossible */

  SysTick->LOAD  = ticks - 1;                                  /* set reload register */
  NVIC_SetPriority (SysTick_IRQn, (1<<__NVIC_PRIO_BITS) - 1);  /* set Priority for Systick Interrupt */
  SysTick->VAL   = 0;                                          /* Load the SysTick Counter Value */
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                    /* Enable SysTick IRQ and SysTick Timer */
  return (0);                                                  /* Function successful */
}

volatile uint32_t msTicks;                      /* counts 1ms timeTicks       */
/*----------------------------------------------------------------------------
  SysTick_Handler
 *----------------------------------------------------------------------------*/
void SysTick_Handler(void) {
  msTicks++;
}

/*----------------------------------------------------------------------------
  delays number of tick Systicks (happens every 1 ms)
 *----------------------------------------------------------------------------*/
void Delay (uint32_t dlyTicks) {                                              
  uint32_t curTicks;

//!!temporary -- replaced delay mediated by SysTick_Handler() with software delay
//  curTicks = msTicks;
//  while ((msTicks - curTicks) < dlyTicks);
  curTicks = 0x12345;
  while(curTicks-- > 0);
  return;
}














































/*----------------------------------------------------------------------------
   Mike's Datatypes
	 *----------------------------------------------------------------------------*/
typedef struct tone {
	int frequency;
	int intensity;
} Tone;


/*----------------------------------------------------------------------------
   Mike's Global Variables
	 *----------------------------------------------------------------------------*/
Tone toneArr[1024];
int numTones;
int testMode;
	 
	 // The encoder Hierarchical State Machine states; easiest if made global.
	typedef enum {INITIAL_LVL1, UP_DETENT1, DOWN_DETENT1} Encoder_state_lvl1;
  Encoder_state_lvl1 encoder_state_lvl1 = INITIAL_LVL1;
	typedef enum {INITIAL, UP1, UP2, UP3, DOWN1, DOWN2, DOWN3} Encoder_state_lvl2;
	Encoder_state_lvl2 encoder_state_lvl2 = INITIAL;

	// digitvals holds the four digits to be displayed, PLUS the red LED pattern to be displayed.
// In general, the array numbers translate to the following patterns:
// 0-9: numbers 0-9
// 10: top left red LED lit; i.e., the LED pattern for freq
// 12: negative sign (hyphen)
// 13: off
// I'll go ahead and make macros so this is less confusing.
#define FREQ_LED 10
#define RESET_LED 11
#define NEG_SIGN 12
#define OFF 13
#define PLAY_LED 14
#define REVIEW_LED 15
#define WARNING_LED 16
#define INTEN_LED 17
	
	unsigned int digitvals[5]= {0,0,0,0, OFF};			 

/*----------------------------------------------------------------------------
   Mike's Constants
	 *----------------------------------------------------------------------------*/
	
// Here are some constants representing the display modes.
#define INTEN_DISP_MODE 0
#define FREQ_DISP_MODE 1
#define OFF_DISP_MODE 2

#define AN_BITPATTERN_A_NONE					0x00000033
#define AN_BITPATTERN_C_NONE					0x0000000d
#define AN_BITPATTERN_A_DIG1					0x00000033
#define AN_BITPATTERN_C_DIG1					0x0001000c
#define AN_BITPATTERN_A_DIG2					0x00000033
#define AN_BITPATTERN_C_DIG2					0x00080005
#define AN_BITPATTERN_A_DIG3					0x00020031
#define AN_BITPATTERN_C_DIG3					0x0000000d
#define AN_BITPATTERN_A_DIG4					0x00010032
#define AN_BITPATTERN_C_DIG4					0x0000000d
#define AN_BITPATTERN_A_COL						0x00000033
#define AN_BITPATTERN_C_COL						0x00040009
#define AN_BITPATTERN_A_RED						0x00100023
#define AN_BITPATTERN_C_RED						0x0000000d
#define AN_BITPATTERN_A_GREEN					0x00200013
#define AN_BITPATTERN_C_GREEN					0x0000000d

#define CA_BITPATTERN_A_OFF				  	0x000000b3
#define CA_BITPATTERN_C_OFF					  0x0000000d
#define CA_BITPATTERN_A_ZERO					0x00910022
#define CA_BITPATTERN_C_ZERO					0x000d0000
#define CA_BITPATTERN_A_ONE						0x000100b2
#define CA_BITPATTERN_C_ONE						0x00080005
#define CA_BITPATTERN_A_TWO						0x00930020
#define CA_BITPATTERN_C_TWO						0x00050009
#define CA_BITPATTERN_A_THREE					0x00830030
#define CA_BITPATTERN_C_THREE					0x000c0001
#define CA_BITPATTERN_A_NEG						0x000200b1
#define CA_BITPATTERN_C_NEG						0x0000000d
#define CA_BITPATTERN_A_FOUR					0x000300b0
#define CA_BITPATTERN_C_FOUR					0x00090004
#define CA_BITPATTERN_A_FIVE					0x00820031					
#define CA_BITPATTERN_C_FIVE					0x000d0000
#define CA_BITPATTERN_A_SIX						0x00920021
#define CA_BITPATTERN_C_SIX						0x000d0000
#define CA_BITPATTERN_A_SEVEN					0x000100b2
#define CA_BITPATTERN_C_SEVEN					0x000c0001
#define CA_BITPATTERN_A_EIGHT					0x00930020
#define CA_BITPATTERN_C_EIGHT					0x000d0000
#define CA_BITPATTERN_A_NINE					0x00830030
#define CA_BITPATTERN_C_NINE					0x000d0000
#define CA_BITPATTERN_A_LED1					0x000000b3
#define CA_BITPATTERN_C_LED1					0x00080005

#define CA_BITPATTERN_A_LED2					0x00020021
#define CA_BITPATTERN_C_LED2					0x0000000d

#define CA_BITPATTERN_A_LED3					0x00200003
#define CA_BITPATTERN_C_LED3					0x0000000d

#define CA_BITPATTERN_A_LED4					0x000000b3
#define CA_BITPATTERN_C_LED4					0x00010004
#define CA_BITPATTERN_A_LED5					0x000000b3
#define CA_BITPATTERN_C_LED5					0x00040001
#define CA_BITPATTERN_A_LED6					0x00010022
#define CA_BITPATTERN_C_LED6					0x0000000d


/*----------------------------------------------------------------------------
   Mike's Function Prototypes
	 *----------------------------------------------------------------------------*/

void mikes_IO_init();
void timer_init(unsigned int reloadVal);
void display_num_at_digit(unsigned int num, unsigned int position);
void display_bitpattern_at_digit(int gpioA_bsrr_cathode_bitpattern, int gpioC_bsrr_cathode_bitpattern, 
																 int gpioA_bsrr_anode_bitpattern, int gpioC_bsrr_anode_bitpattern);
void translate_digit_to_anode_bitpattern(unsigned int position, int * bitpatterns);
unsigned int mikes_get_switch(unsigned int swtch);
unsigned int read_encoderA();
unsigned int read_encoderB();
void sitoarr(unsigned int * int_arr, int num);
int arrtosi(unsigned int *int_arr);
void decrement_arr(unsigned int * int_arr, int step);
void increment_arr(unsigned int * int_arr, int step);
int update_fsm_level2(unsigned int encA, unsigned int encB);
void blink_playmode_led(unsigned int * intenvals_param);
unsigned int getTime();
void reset_intensity(unsigned int * inten_array);


/*----------------------------------------------------------------------------
  Auxiliary Functions
	 *----------------------------------------------------------------------------*/

/* This function takes a number, and converts it to the BSRR cathode bit-pattern which 
	 lights up the LED in the image of that number. 
	 The first value of the array returned is the value that goes into GPIOA_BSRR; the
	 second value goes into GPIOC_BSRR. 
	 param num: The number to be displayed [0-9].  10 is a special case, for lighting up LED1.
	 param position: The digit position we want the number to be displayed at [1-6]. 
	               A 1 corresponds to digit1, 2 to digit2, 3 to digit3, 4 to digit4,
								 5 to colon+degree sign, 6 to an_r, and 7 to an_g.  */
void display_num_at_digit(unsigned int num, unsigned int position) {
	int an_bitpatterns[2] = {0};

	switch (num) {
		
		// If assigned to the colon position, a zero will turn on the colon dots and the degree dot.

		case 0:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_ZERO, CA_BITPATTERN_C_ZERO, an_bitpatterns[0], an_bitpatterns[1]);
			break;
		case 1:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_ONE, CA_BITPATTERN_C_ONE, an_bitpatterns[0], an_bitpatterns[1]);
			break;
		case 2:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_TWO, CA_BITPATTERN_C_TWO, an_bitpatterns[0], an_bitpatterns[1]);
			break;
		case 3:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_THREE, CA_BITPATTERN_C_THREE, an_bitpatterns[0], an_bitpatterns[1]);
			break;
		case 4:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_FOUR, CA_BITPATTERN_C_FOUR, an_bitpatterns[0], an_bitpatterns[1]);
			break;	
		case 5:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_FIVE, CA_BITPATTERN_C_FIVE, an_bitpatterns[0], an_bitpatterns[1]);
			break;	
		case 6:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_SIX, CA_BITPATTERN_C_SIX, an_bitpatterns[0], an_bitpatterns[1]);
			break;	
		case 7:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_SEVEN, CA_BITPATTERN_C_SEVEN, an_bitpatterns[0], an_bitpatterns[1]);
			break;	
		case 8:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_EIGHT, CA_BITPATTERN_C_EIGHT, an_bitpatterns[0], an_bitpatterns[1]);
			break;
		case 9:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_NINE, CA_BITPATTERN_C_NINE, an_bitpatterns[0], an_bitpatterns[1]);
			break;
		// This case is only for the LED position (red or green).
		case FREQ_LED:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_LED1, CA_BITPATTERN_C_LED1, an_bitpatterns[0], an_bitpatterns[1]);
		break;
		case OFF:
			translate_digit_to_anode_bitpattern(position, an_bitpatterns);
			display_bitpattern_at_digit(CA_BITPATTERN_A_OFF, CA_BITPATTERN_C_OFF, an_bitpatterns[0], an_bitpatterns[1]);
		break;
		case RESET_LED:
				translate_digit_to_anode_bitpattern(position, an_bitpatterns);
				display_bitpattern_at_digit(CA_BITPATTERN_A_LED4, CA_BITPATTERN_C_LED4, an_bitpatterns[0], an_bitpatterns[1]);
				break;
		case PLAY_LED:
				translate_digit_to_anode_bitpattern(position, an_bitpatterns);
				display_bitpattern_at_digit(CA_BITPATTERN_A_LED6, CA_BITPATTERN_C_LED6, an_bitpatterns[0], an_bitpatterns[1]);
				break;
		case REVIEW_LED:
				translate_digit_to_anode_bitpattern(position, an_bitpatterns);
				display_bitpattern_at_digit(CA_BITPATTERN_A_LED3, CA_BITPATTERN_C_LED3, an_bitpatterns[0], an_bitpatterns[1]);
				break;
		case WARNING_LED:
				translate_digit_to_anode_bitpattern(position, an_bitpatterns);
				display_bitpattern_at_digit(CA_BITPATTERN_A_LED5, CA_BITPATTERN_C_LED5, an_bitpatterns[0], an_bitpatterns[1]);
				break;
		case INTEN_LED:
				translate_digit_to_anode_bitpattern(position, an_bitpatterns);
				display_bitpattern_at_digit(CA_BITPATTERN_A_LED2, CA_BITPATTERN_C_LED2, an_bitpatterns[0], an_bitpatterns[1]);
				break;
		case NEG_SIGN:
				translate_digit_to_anode_bitpattern(position, an_bitpatterns);
				display_bitpattern_at_digit(CA_BITPATTERN_A_NEG, CA_BITPATTERN_C_NEG, an_bitpatterns[0], an_bitpatterns[1]);
				break;
	}
	

}

/* This function takes a digit as its first parameter, translates it into two bitpatterns
	 (one for GPIOA_BSRR, and one for GPIOC_BSRR), and then stores those bitpatterns in
    the pointer-to-an-array-of-size-two passed in as its second argument. 
		Signal to turn all anodes off:  gpioA_bsrr <- 0x 0000 0033
																		gpioC_bsrr <- 0x 0000 000d
		PARAM1 position: This is the position whose digit we wish to illuminate.
		PARAM2 bitpatterns: This is the array where we store the 2 bitpatterns: 
												one for the gpioA_bsrr register, and one for the gpioC_bsrr register. 
*/
void translate_digit_to_anode_bitpattern(unsigned int position, int * bitpatterns) {
	
		switch (position) {
			
			// all off:
			case 0:
				bitpatterns[0] = AN_BITPATTERN_A_NONE;
				bitpatterns[1] = AN_BITPATTERN_C_NONE;
				break;
			// digit1 position:	
			case 1:
				bitpatterns[0] = AN_BITPATTERN_A_DIG1;
				bitpatterns[1] = AN_BITPATTERN_C_DIG1;		
				break;
			// digit2 position:
			case 2:
				bitpatterns[0] = AN_BITPATTERN_A_DIG2;
				bitpatterns[1] = AN_BITPATTERN_C_DIG2;
				break;
			// digit3 position:
			case 3:
				bitpatterns[0] = AN_BITPATTERN_A_DIG3;
				bitpatterns[1] = AN_BITPATTERN_C_DIG3;
				break;
			// digit4 position:
			case 4:
				bitpatterns[0] = AN_BITPATTERN_A_DIG4;
				bitpatterns[1] = AN_BITPATTERN_C_DIG4;
				break;
			// an_r position:			
			case 5:
				bitpatterns[0] = AN_BITPATTERN_A_RED;
				bitpatterns[1] = AN_BITPATTERN_C_RED;
				break;
			// an_g position:
			case 6:
				bitpatterns[0] = AN_BITPATTERN_A_GREEN;
				bitpatterns[1] = AN_BITPATTERN_C_GREEN;
				break;
			// colon+degree position:
			case 7:
				bitpatterns[0] = AN_BITPATTERN_A_COL;
				bitpatterns[1] = AN_BITPATTERN_C_COL;
				break;
			
	}
	
}




/* This function causes the digit associated with a position (according to digitvals, the global variable)
   to be displayed at that position.  It then increments the position, so that the
	 next time around the NEXT position will be displayed.  In this way, it displays
   all digits round-robin style. */
void mikes_display_update() {
	unsigned static int position = 0;
	position = (position % 5) + 1;
	// position cycles between the values of 1 and 5, incrementing with each call
	// to this function.  It indications the digit position to be lit up.
	display_num_at_digit(digitvals[position-1], position);	
	position++;
}




/* Converts array to signed integer, returns that integer. 
	 arr[4] is for the LED pattern so we don't touch that,
	 arr[3] is the least sig digit (start here),
	 and the most sig digit could be anywhere beyond that; we just
	 stop when we see a NEG_SIGN or an OFF array value.
*/
int arrtosi(unsigned int *int_arr) {
	int returnNum = 0, i = 3, j = 0;
	
	// Add digits to the total until we encounter stop digit.
	while (i != -1 && int_arr[i] != OFF) {
		// If neg sign, negate whole thing and finish accumulating
		if (int_arr[i] == NEG_SIGN) {
			returnNum *= -1;
			break;
		}
		int curVal = int_arr[i];
		// get value of cur digit
		for (j = 0; j < (3-i); j++) curVal *= 10;
		// add cur digit to total
		returnNum += curVal;
		// increment array position
		i--;
	}
	return returnNum;
}


/* This function takes a number, and puts it in array form.
	 The array we populate is given to us as an argument 
   (we give back the altered array pass-by-reference style). 
	  Note that this function returns an array OFF-padded
		rather than zero-padded from the left (which is currently
	  the convention only for the display of the intensity value). */
void sitoarr(unsigned int * int_arr, int num) {
	int i = 0, j = 0;
	int curNum = num;
	int modVal = 1;
	
	// Take abs value of curNum
	if (curNum < 0) curNum *= -1;
	
	for (i = 3; i >= 0; i--) {
		modVal *= 10;
		int_arr[i] = (curNum % modVal);
		curNum -= int_arr[i];
		int_arr[i] = int_arr[i] / (modVal/10);
		
		if (curNum == 0) {
			i--;
			break;
		}
	}
	
	// If the original number was negative, than add the neg sign
	// to the current array position and decrement the array position.
	if (num < 0) {
		int_arr[i] = NEG_SIGN;
		i--;
	}
	
	// OFF-pad remaining digits
	for (i; i >= 0; i--) int_arr[i] = OFF;
}



/* This function takes a 3-digit number stored as a size-3 array,
	 converts it to a number, decrements it by 5, and then converts
	 it to an array again. No return value since we'll be passing by reference.
*/
void decrement_arr(unsigned int * int_arr, int step) {
	// 1. Convert array to number (saturation values are -10 and 110).
	int num = arrtosi(int_arr);
	
	// 2. Increment by step var.
	num -= step;
	
	// 3. Convert number back to array, put in original array.
	sitoarr(int_arr, num);
	
}



/* This function takes a 3-digit number stored as a size-3 array,
	 converts it to a number, INCREMENTS it by the step parameter, and then converts
	 it to an array again. No return value since we'll be passing by reference.
*/
void increment_arr(unsigned int * int_arr, int step) {
	// 1. Convert array to number (saturation values are -10 and 110).
	int num = arrtosi(int_arr);
	
	// 2. Increment by step var.
	num += step;
	
	// 3. Convert number back to array, put in original array.
	sitoarr(int_arr, num);
}


/* This function modifies the fsm level 2 state, a global variable. 
    Input parameters are the two encoder signals.
		Return value represents fsm_level2 output: 1 for the up-detent signal,
	  -1 for the down-detent signal, and 0 if no signal generated. */
int update_fsm_level2(unsigned int encA, unsigned int encB) {
	int fsm_lvl2_output = 0;
					switch (encoder_state_lvl2) {			
					// If at state INITIAL, just check to see if we can move to state UP1 or DOWN1.
					case INITIAL:
						if       (!encA && encB)  encoder_state_lvl2 = UP1;
						else if  (encA && !encB)  encoder_state_lvl2 = DOWN1;
						else                      encoder_state_lvl2 = INITIAL;
						break;
					
					case UP1:		
						if       (!encA && encB)   encoder_state_lvl2 = UP1;
						else if  (!encA && !encB)  encoder_state_lvl2 = UP2;
						else                       encoder_state_lvl2 = INITIAL;						
						break;
					
					case UP2:				
						if       (!encA && !encB)   encoder_state_lvl2 = UP2;
						else if  (encA && !encB)    encoder_state_lvl2 = UP3;
						else                        encoder_state_lvl2 = INITIAL;
						break;
					
					case UP3:					
						if       (encA && !encB) {  encoder_state_lvl2 = UP3; }
						else if  (encA && encB) {
							encoder_state_lvl2 = INITIAL;
							// made it through a full detent! INCREMENT as necessary.
							fsm_lvl2_output = 1;
						}	
						else                     {  encoder_state_lvl2 = INITIAL; }
						break;
					
					
					case DOWN1:		
						if       (encA && !encB)   encoder_state_lvl2 = DOWN1;
						else if  (!encA && !encB)  encoder_state_lvl2 = DOWN2;
						else                       encoder_state_lvl2 = INITIAL;
						break;
					
					case DOWN2:		
						if       (!encA && !encB)   encoder_state_lvl2 = DOWN2;
						else if  (!encA && encB)    encoder_state_lvl2 = DOWN3;
						else                        encoder_state_lvl2 = INITIAL;
						break;
					
					case DOWN3:				
						if       (!encA && encB) {  encoder_state_lvl2 = DOWN3; }
						else if  (encA && encB) {
							encoder_state_lvl2 = INITIAL;
							// made it through a full detent! DECREMENT as necessary.
							fsm_lvl2_output = -1;;
						}
						else                     {  
	encoder_state_lvl2 = INITIAL;
						}
						break;
					}
		
			
			return fsm_lvl2_output;
				}
				
				
void blink_playmode_led(unsigned int * intenvals_param) {
	unsigned int blinkTime = 150; // count of 900 is about one second (maybe a little more)
	unsigned int curTime = getTime();
					// change digitvals[4] such that it is alternately in LED6 pattern for 0.17 sec,
					// and OFF for 0.17 sec.
					
					if ( (curTime % (2*blinkTime)) == 0 ) {
						// turn LED6 on
						intenvals_param[4] = PLAY_LED;
						digitvals[4] = PLAY_LED;
					} else if ( (curTime % (blinkTime)) == 0 ) {
					// turn LED6 off
					intenvals_param[4] = OFF;
					digitvals[4] = OFF;
				}
			}
			
			
// This function blinks the reset led.  It does so by periodically altering the value
// of digitvals[4], which is a global variable.
// Specifically, it turns off index 4 (which controls the single LEDs) every blinkTime,
// and then turns it back on.
unsigned int prevTime = 0;
unsigned int offset = 0;
void blink_reset_led(unsigned int timeOfLastReset) {
	unsigned int timeSinceLastReset = (getTime() - timeOfLastReset) / 900;
	unsigned int period = 900 / timeSinceLastReset;
	unsigned int blinkTime = period/2; // count of 900 is about one second
	unsigned int curTime = getTime() + offset;
					// change digitvals[4] such that it is alternately in LED6 pattern for 0.17 sec,
					// and OFF for 0.17 sec.
	
					// if the timeSinceLastReset increments by a second, then alternate blink once
					if (timeSinceLastReset != prevTime) {
						// alternate
						if (digitvals[4] == WARNING_LED) digitvals[4] = OFF;
						else if (digitvals[4] == OFF) digitvals[4] = WARNING_LED;
						// create cumulative time offset that pushes curTime up to next multiple of current period
						offset += curTime % period;
					} else {
						if ( (curTime % (2*blinkTime)) == 0 ) {
							digitvals[4] = WARNING_LED;
						} else if ( (curTime % (blinkTime)) == 0 ) {
						// turn LED6 off
						digitvals[4] = OFF;
					}
			}
				
				prevTime = timeSinceLastReset;
			}
			
			
			
			
void reset_intensity(unsigned int * inten_array) {
	inten_array[0] = OFF;
	inten_array[1] = NEG_SIGN;
	inten_array[2] = 1;
	inten_array[3] = 0;
}



void off_disp() {
	digitvals[0] = digitvals[1] = digitvals[2] = digitvals[3] = OFF;
}

void zero_disp() {
	digitvals[0] = digitvals[1] = digitvals[2] = digitvals[3] = 0;
}


/*----------------------------------------------------------------------------
  MAIN Function
	 *----------------------------------------------------------------------------*/

int main (void) {	
	unsigned int timeOfLastReset = 0, resetPendingBeginTime = 0;
	int resetPending = 0;
	int curFreq = 0, curInten = 0, numTonesPos = 0;
	testMode = 1; // start off in test mode(as opposed to review mode)
	numTones = 0; // init numTones
	unsigned int intenvals[5] = {OFF, NEG_SIGN, 1, 0, INTEN_LED}; // intensity display array
	
	// The encoder FSM input/output variables. 
	
	// fsm level2 i/o:
	unsigned int encA = 1;
	unsigned int encB = 1;
	int fsm_lvl2_output = 0;
	
	// (fsm level1 input is fsm_lvl2_output, and level1 output doesn't need a variable
	// since it's just an action which is immediately taken)
	
	// The first four elements of freqvals[] correspond to digits on the 7seg display,
	// and the last element is the pattern of red LEDs to be displayed.
	unsigned int buttonIsBeingHit = 0; //buttonIsBeingHit is default FALSE
	unsigned int actionPerformed = 1;  // actionPerformed is default TRUE
	// Display mode - 0 = intensity, 1 = frequency
	unsigned int displayMode = OFF_DISP_MODE; // default frequency display mode
	unsigned int curDisplayMode = displayMode;
  unsigned int playMode = 0;  //default play mode (0 = off, 1 = on)
	unsigned int freqvals[5] = {0, 1, 2, 5, FREQ_LED};	
	int i=0, j=0, i_sw = 0;
	
	// Initialize ST32F4 I/O pins controlling LEDs, switches (aka buttons), and rotary encoder.
	mikes_IO_init();	
	
// Initialize display refresh timer interrupt.
// Clock runs at 2.6 MHz apparently (this is how frequently the timer increments according to
// experimental data), so counting up to 0xA28 should give us a 1000kHz interrupt.
	timer_init(0x4380);				
	
	// Initialize timekeeping timer interrupt.  Counting up to 0x107AC40 should give us a 0.01 second
	// interrupt, upon which we increment the wall clock.  So the wall clock will be the time passed
	// in hundredths of seconds.
	wallClk_init(0x4444);		


		// Infinite driver loop.  This consists of three major segments:
		// 1 - Check to see if a switch has just been hit.
		// 2 - Check to see if a switch has just been released.
		// 3 - Perform the associated action once if a switch has just been hit.
	while(1) {   
					
			/**** Check to see if a button has just been hit. ****/
			if(!buttonIsBeingHit) {
				for (i_sw=1; i_sw<=12; i_sw++) {	
					// If a button is hit when no other button is being hit: 
					if (!mikes_get_switch(i_sw)) {
						// 1) Set being-hit status.
						buttonIsBeingHit = 1;
						actionPerformed = 0;
						// 2) Wait out the bounce.
						for (j = 0; j < 1500; j++) {};		
						// 3) Exit loop (note that i will still be the number of the switch that was hit). 
						break;
					}
				}
			}

			/*** Check to see if the button has just been released. ****/
			if (buttonIsBeingHit && mikes_get_switch(i_sw)) {
				buttonIsBeingHit = 0;
				// Wait out the bounce here, too.
				for (j = 0; j < 1500; j++) {};
			}
	
			/**** Perform the action associated with a particular button being hit. ****/
			if (!actionPerformed) {
				actionPerformed = 1;
				switch (i_sw) {
					case 1:		
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							digitvals[0] = freqvals[0] = (freqvals[0] + 1) % 10;
							reset_intensity(intenvals);
						}
						break;		
						
					case 2:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							if (!freqvals[0]) {
								freqvals[0] = 9;
							} else {
								freqvals[0]--;
							}
							digitvals[0] = freqvals[0];
							reset_intensity(intenvals);
						}
						break;
						
					case 3:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							reset_intensity(intenvals);
							digitvals[1] = freqvals[1] = (freqvals[1] + 1) % 10;
					  }
						break;
						
					case 4:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							reset_intensity(intenvals);
							if (!freqvals[1]) {
								freqvals[1] = 9;
							} else {
								freqvals[1]--;
							}
							digitvals[1] = freqvals[1];
						}
						break;
						
					case 5:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							reset_intensity(intenvals);
							digitvals[2] = freqvals[2] = (freqvals[2] + 1) % 10;
						}
						break;
						
					case 6:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							reset_intensity(intenvals);
							if (!freqvals[2]) {
								freqvals[2] = 9;
							} else {
								freqvals[2]--;
							}
							digitvals[2] = freqvals[2];
						}
						break;
						
					case 7:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							reset_intensity(intenvals);
							digitvals[3] = freqvals[3] = (freqvals[3] + 1) % 10;
						}
						break;
						
					case 8:
						if (displayMode == FREQ_DISP_MODE && testMode && !resetPending) {
							reset_intensity(intenvals);
							if (!freqvals[3]) {
								freqvals[3] = 9;
							} else {
								freqvals[3]--;
							}
							digitvals[3] = freqvals[3];
						}
						break;
						
					case 9:
						if(!resetPending) {
						// Change display values to Test Frequency.
						displayMode = FREQ_DISP_MODE;
					  playMode = 0;
						if (testMode) intenvals[4] = INTEN_LED;
					
					  digitvals[0] = freqvals[0];
						digitvals[1] = freqvals[1];
						digitvals[2] = freqvals[2];
						digitvals[3] = freqvals[3];
						digitvals[4] = freqvals[4];
						}
						break;
					
					case 10:
						// Intensity display button has just been hit.
					if(!resetPending) {
					// Do different stuff for each 
						switch (displayMode) {
							
							case OFF_DISP_MODE:
							playMode = 0;
							intenvals[4] = INTEN_LED;
							for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
							displayMode = INTEN_DISP_MODE;
							break;
							
						  case FREQ_DISP_MODE:
							playMode = 0;
							if (testMode) intenvals[4] = INTEN_LED;
							for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
							displayMode = INTEN_DISP_MODE;
							break;
							
						  case INTEN_DISP_MODE:
							if (testMode) {
								playMode = !playMode;
								if (playMode) {
									intenvals[4] = PLAY_LED;
									digitvals[4] = PLAY_LED;
								} else {
									intenvals[4] = INTEN_LED;
									digitvals[4] = INTEN_LED;
								}
						}
							break;
						}
					}
						break;
					
					case 11:
						// get time button was hit
						timeOfLastReset = getTime();	
					
						/* This button deletes a tone from the tone array (when held < 1s). */
						if (displayMode != OFF_DISP_MODE) {
							int timeStart = getTime();
							int timeHeld = 0;
							int alreadyHere = 0;
							while(1) {
								// update time held			
								timeHeld = getTime() - timeStart;
								
								// if button released before 1s, just delete last tone and break.
								if (mikes_get_switch(11) && timeHeld < 900) {
									if (testMode == 0) break;
									if (numTones > 0) numTones--; // "free"		
									break;
								}								
								// if button held between 1 and 5s, enter review mode and break. (also turn on LED3)
								// TOGGLE REVIEW MODE
								if (timeHeld >= 900 && timeHeld < 4500 && !alreadyHere) {
									alreadyHere = 1;
									if (numTones <= 0) continue;
									if (testMode) {
										testMode = 0;  // now in review Mode!		
										// save the current frequency, intensity
										curFreq = arrtosi(freqvals);
										curInten = arrtosi(intenvals);
										numTonesPos = numTones - 1;
										// update the display vals with the most recent saved intensity / frequency, and set both to LED3
										sitoarr(freqvals, toneArr[numTonesPos].frequency);
										sitoarr(intenvals, toneArr[numTonesPos].intensity);
										intenvals[4] = freqvals[4] = REVIEW_LED;
										int iter = 0;
										for (iter=0; iter<=4; iter++) { digitvals[iter] = intenvals[iter]; }
										curDisplayMode = displayMode;
										displayMode = INTEN_DISP_MODE;
									}
									else if (!testMode) {
										// go back to test mode from review mode
										testMode = 1;
										displayMode = curDisplayMode;
										sitoarr(freqvals, curFreq);
										freqvals[4] = FREQ_LED;
										sitoarr(intenvals, curInten);
										intenvals[4] = INTEN_LED;
										
										// set digitvals back
										int it = 0;
										if (displayMode == FREQ_DISP_MODE) {
											for (it=0; it<=4; it++) digitvals[it] = freqvals[it];
										} else if (displayMode == INTEN_DISP_MODE) {
											for (it=0; it<=4; it++) digitvals[it] = intenvals[it];
										}
										
									}
									continue;
									
								}
								
								// if switch released after review toggle, but before reset, just break
								if (alreadyHere && mikes_get_switch(11)) {
									break;
								}
								
								// if button held longer than 5s, start blinking led5 at rate w (erase warning) and continue
								if (timeHeld >= 4500) {
								  resetPending = 1;
									resetPendingBeginTime= getTime();
								  break;
								}
								// if button held longer than 10s, RESET: inten/freq/digitvals, turn to OFF_DISP_MODE, erase all response,
								// play mode = 0, testMode = 1, set timeOfLastReset						
							
							}
						}						
						break;
					
					case 12:
						/* This button saves a tone to the tone array. */
						if (displayMode != OFF_DISP_MODE && !resetPending) {
							if (testMode == 1) {
							toneArr[numTones].frequency = arrtosi(freqvals);
							toneArr[numTones].intensity = arrtosi(intenvals);
							numTones++; //numTones always points to next free space.
							} else if (testMode == 0) { //in review mode, iterate saved tones
									if (numTonesPos > 0) numTonesPos--;
								else numTonesPos = numTones - 1;
									sitoarr(freqvals, toneArr[numTonesPos].frequency);
									sitoarr(intenvals, toneArr[numTonesPos].intensity);
									intenvals[4] = freqvals[4] = REVIEW_LED;
									int iter = 0;
									for (iter=0; iter<=4; iter++) { digitvals[iter] = intenvals[iter]; }
									displayMode = INTEN_DISP_MODE;
							}								
						}							
						break;				
				}
			}
			
			// If the button-hit/value-update switch statement above has changed the
			// value to something outside of our min/max values 125/8000, then put it 
			// to that min/max.
			if ( displayMode == FREQ_DISP_MODE && 
				(arrtosi(freqvals) < 125 || (freqvals[0] == 9 && freqvals[1] != 0 && freqvals[2] != 0 && freqvals[3] != 0)) ) {
				digitvals[0] = freqvals[0] = 0;
				digitvals[1] = freqvals[1] = 1;
				digitvals[2] = freqvals[2] = 2;
				digitvals[3] = freqvals[3] = 5;
			}
			
			if (displayMode == FREQ_DISP_MODE && arrtosi(freqvals) > 8000) {
				digitvals[0] = freqvals[0] = 8;
				digitvals[1] = freqvals[1] = 0;
				digitvals[2] = freqvals[2] = 0;
				digitvals[3] = freqvals[3] = 0;
			}
		
			
			/*** Analyze Rotary Encoder Output and Update Intensity Accordingly ***/
			
			/* Ok a little description about the state machine here.  There are two levels
					 in this FSM (Finite State Machine).  
					      Level 1 tracks the number of detents.  Inputs are the "up detent just occured"
					 and the "down detent just occured" signals. The one possible output is the action
					 of incrementing or decrementing the intensity value by five.  This output occurs
					 after receiving two of the same detent signals in a row (which is two state transitions,
					 and represents the end of the state transitions after which you start over from INITIAL_LVL1 state).
					      Level 2 exists within one detent.  I.e., it further subdivides one state of level 1
					 into sub-states.  Inputs are rotary encoder signals A and B (the "Gray code").  Possible
					 outputs are the "up detent just occured" and the "down detent just occured", which are
					 sent to the upper level state machine.  These signals occur at the end of
					 the longest sequence of states, when we've finally come full circle and can decide that
					 a full detent occured, generate that signal, and reset the state to INITIAL.
				*/
			
			if (displayMode == INTEN_DISP_MODE && testMode) {
				unsigned int origLedPattern = digitvals[4]; // save the single LED pattern, 
																										// because the switch statement will mess it up
			// get current encoder values
			encA = read_encoderA();
			encB = read_encoderB();
				
				// update fsm level 2.
				fsm_lvl2_output = update_fsm_level2(encA, encB);
					 
			  // update fsm level 1, using level 2's output as input
				switch (encoder_state_lvl1) {
					case INITIAL_LVL1:
						// 1 is up-detent signal, -1 is down-detent, 0 is no signal.
						if (fsm_lvl2_output == 1) {
							encoder_state_lvl1 = UP_DETENT1;
						} else if (fsm_lvl2_output == -1) {
							encoder_state_lvl1 = DOWN_DETENT1;
						} else if (fsm_lvl2_output == 0) {
							// state remains at initial
						}
						break;
						
					case UP_DETENT1:
						if (fsm_lvl2_output == 1) {
							// ding ding ding we have a winner!  2 up detents make an increment
							if (intenvals[1] != 1 || intenvals[2] != 1 || intenvals[3] != 0) increment_arr(intenvals, 5);
							for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
							encoder_state_lvl1 = INITIAL_LVL1;
						} else if (fsm_lvl2_output == -1) {
							// jump to down_detent1
							encoder_state_lvl1 = DOWN_DETENT1;
						} else if (fsm_lvl2_output == 0) {
							// state doesn't change
						}
						break;
					
					case DOWN_DETENT1:
						if (fsm_lvl2_output == 1) {
							// jump to up detent 1
							encoder_state_lvl1 = UP_DETENT1;				
						} else if (fsm_lvl2_output == -1) {
							// ding ding ding we have a winner!  2 down detents make a decrement
							if (intenvals[1] != NEG_SIGN || intenvals[2] != 1 || intenvals[3] != 0) decrement_arr(intenvals, 5);
							for (i=0; i<=4; i++) digitvals[i] = intenvals[i];
							encoder_state_lvl1 = INITIAL_LVL1;
						} else if (fsm_lvl2_output == 0) {
							// state doesn't change
						}
						break;
					}
			digitvals[4] = origLedPattern;
		}
		
		
		
		/*** Handle the flashing of LED6 for when we are in playMode. ***/
		if (playMode && testMode) blink_playmode_led(intenvals);
		
		// flash reset led when reset is pending
		if (resetPending) blink_reset_led(timeOfLastReset);
		
				
		// if reset pending for 5 seconds, reset
		if ( resetPending && (getTime() - resetPendingBeginTime) >= 4500) {
			
			// turn on Reset LED4 for 2 seconds and blank screen.
			freqvals[4] = intenvals[4] = digitvals[4] = RESET_LED;
			zero_disp();
			unsigned int curTime = getTime();
			while(1) {
				if (getTime() > (curTime + 1800)) break;
				else if (getTime() > (curTime + 1500)) off_disp();
				else if (getTime() > (curTime + 1200)) zero_disp();
				else if (getTime() > (curTime + 900)) off_disp();
				else if (getTime() > (curTime + 600)) zero_disp();
				else if (getTime() > (curTime + 300)) off_disp();
			}
			
			// reset display values
			freqvals[0] = 0; freqvals[1] = 1; freqvals[2] = 2; freqvals[3] = 5; freqvals[4] = FREQ_LED;
			intenvals[0] = OFF; intenvals[1] = NEG_SIGN; intenvals[2] = 1; intenvals[3] = 0; intenvals[4] = INTEN_LED;
			digitvals[0] = 0; digitvals[1] = 0; digitvals[2] = 0; digitvals[3] = 0; digitvals[4] = OFF;
			
			// erase responses
			numTones = 0;
			
			// reset modes
			playMode = 0;
			testMode = 1;
			
			// reset reset pending
			resetPending = 0;
			
			//reset display mode
			displayMode = OFF_DISP_MODE;
			
			// reset blink_warning_led global variables
			offset = prevTime = 0;
		}
		
				
		// If reset pending switched off early, then restore proper LED (must be in review mode)
		if (resetPending) {
			
			if (mikes_get_switch(11)) {
				offset = prevTime = 0; // reset blink_warning_led global variables
				resetPending = 0;
				if (testMode) {
					if (displayMode == FREQ_DISP_MODE) {
						digitvals[4] = FREQ_LED;
					} else if (displayMode == INTEN_DISP_MODE) {
						digitvals[4] = INTEN_LED;
					}
				} else { // review mode
					digitvals[4] = REVIEW_LED;
				}
			}
		}
		
		
	}
}
