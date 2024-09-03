.syntax unified
.cpu  cortex-m4
.fpu softvfp
.thumb

/*************************************** Vector table section start ***************************************/

.section .vector_table,"a",%progbits
.type Vector_Table, %object

Vector_Table:

    .word _StackStart
    .word Reset_Handler
    .word NMI_Handler
    .word HardFault_Handler
    .word MemManage_Handler
    .word BusFault_Handler
    .word UsageFault_Handler
    .word 0
    .word 0
    .word 0
    .word 0
    .word SVC_Handler
    .word DebugMon_Handler
    .word 0
    .word PendSV_Handler
    .word SysTick_Handler
    .word 0                            			/* Reserved                                                                        */
    .word EXTI16_PVD_IRQHandler        			/* EXTI Line 16 interrupt /PVD through EXTI line detection interrupt               */
    .word TAMP_STAMP_IRQHandler        			/* Tamper and TimeStamp interrupts through the EXTI line                           */
    .word EXTI22_RTC_WKUP_IRQHandler   			/* EXTI Line 22 interrupt /RTC Wakeup interrupt through the EXTI line              */
    .word FLASH_IRQHandler             			/* FLASH global interrupt                                                          */
    .word RCC_IRQHandler               			/* RCC global interrupt                                                            */
    .word EXTI0_IRQHandler             			/* EXTI Line0 interrupt                                                            */
    .word EXTI1_IRQHandler             			/* EXTI Line1 interrupt                                                            */
    .word EXTI2_IRQHandler             			/* EXTI Line2 interrupt                                                            */
    .word EXTI3_IRQHandler             			/* EXTI Line3 interrupt                                                            */
    .word EXTI4_IRQHandler             			/* EXTI Line4 interrupt                                                            */
    .word DMA1_Stream0_IRQHandler      			/* DMA1 Stream0 global interrupt                                                   */
    .word DMA1_Stream1_IRQHandler      			/* DMA1 Stream1 global interrupt                                                   */
    .word DMA1_Stream2_IRQHandler      			/* DMA1 Stream2 global interrupt                                                   */
    .word DMA1_Stream3_IRQHandler      			/* DMA1 Stream3 global interrupt                                                   */
    .word DMA1_Stream4_IRQHandler      			/* DMA1 Stream4 global interrupt                                                   */
    .word DMA1_Stream5_IRQHandler      			/* DMA1 Stream5 global interrupt                                                   */
    .word DMA1_Stream6_IRQHandler      			/* DMA1 Stream6 global interrupt                                                   */
    .word ADC_IRQHandler               			/* ADC1 global interrupt                                                           */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word EXTI9_5_IRQHandler           			/* EXTI Line[9:5] interrupts                                                       */
    .word TIM1_BRK_TIM9_IRQHandler     			/* TIM1 Break interrupt and TIM9 global interrupt                                  */
    .word TIM1_UP_TIM10_IRQHandler     			/* TIM1 Update interrupt and TIM10 global interrupt                                */
    .word TIM1_TRG_COM_TIM11_IRQHandler			/* TIM1 Trigger and Commutation interrupts and TIM11 global interrupt              */
    .word TIM1_CC_IRQHandler           			/* TIM1 Capture Compare interrupt                                                  */
    .word TIM2_IRQHandler              			/* TIM2 global interrupt                                                           */
    .word TIM3_IRQHandler              			/* TIM3 global interrupt                                                           */
    .word TIM4_IRQHandler              			/* TIM4 global interrupt                                                           */
    .word I2C1_EV_IRQHandler           			/* I2C1 event interrupt                                                            */
    .word I2C1_ER_IRQHandler           			/* I2C1 error interrupt                                                            */
    .word I2C2_EV_IRQHandler           			/* I2C2 event interrupt                                                            */
    .word I2C2_ER_IRQHandler           			/* I2C2 error interrupt                                                            */
    .word SPI1_IRQHandler              			/* SPI1 global interrupt                                                           */
    .word SPI2_IRQHandler              			/* SPI2 global interrupt                                                           */
    .word USART1_IRQHandler            			/* USART1 global interrupt                                                         */
    .word USART2_IRQHandler            			/* USART2 global interrupt                                                         */
    .word 0                            			/* Reserved                                                                        */
    .word EXTI15_10_IRQHandler         			/* EXTI Line[15:10] interrupts                                                     */
    .word EXTI17_RTC_Alarm_IRQHandler  			/* EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt       */
    .word EXTI18_OTG_FS_WKUP_IRQHandler			/* EXTI Line 18 interrupt / USBUSB On-The-Go FS Wakeup through EXTI line interrupt */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word DMA1_Stream7_IRQHandler      			/* DMA1 Stream7 global interrupt                                                   */
    .word 0                            			/* Reserved                                                                        */
    .word SDIO_IRQHandler              			/* SDIO global interrupt                                                           */
    .word TIM5_IRQHandler              			/* TIM5 global interrupt                                                           */
    .word SPI3_IRQHandler              			/* SPI3 global interrupt                                                           */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word DMA2_Stream0_IRQHandler      			/* DMA2 Stream0 global interrupt                                                   */
    .word DMA2_Stream1_IRQHandler      			/* DMA2 Stream1 global interrupt                                                   */
    .word DMA2_Stream2_IRQHandler      			/* DMA2 Stream2 global interrupt                                                   */
    .word DMA2_Stream3_IRQHandler      			/* DMA2 Stream3 global interrupt                                                   */
    .word DMA2_Stream4_IRQHandler      			/* DMA2 Stream4 global interrupt                                                   */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word OTG_FS_IRQHandler            			/* USB On The Go FS global interrupt                                               */
    .word DMA2_Stream5_IRQHandler      			/* DMA2 Stream5 global interrupt                                                   */
    .word DMA2_Stream6_IRQHandler      			/* DMA2 Stream6 global interrupt                                                   */
    .word DMA2_Stream7_IRQHandler      			/* DMA2 Stream7 global interrupt                                                   */
    .word USART6_IRQHandler            			/* USART6 global interrupt                                                         */
    .word I2C3_EV_IRQHandler           			/* I2C3 event interrupt                                                            */
    .word I2C3_ER_IRQHandler           			/* I2C3 error interrupt                                                            */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word 0                            			/* Reserved                                                                        */
    .word SPI4_IRQHandler              			/* SPI4 global interrupt                                                           */

/*************************************** Vector table section end ***************************************/

/*************************************** Interrupt Handler Functions start ***************************************/

    .weak NMI_Handler
    .weak HardFault_Handler
    .weak MemManage_Handler
    .weak BusFault_Handler
    .weak UsageFault_Handler
    .weak SVC_Handler
    .weak DebugMon_Handler
    .weak PendSV_Handler
    .weak SysTick_Handler
    .weak EXTI16_PVD_IRQHandler        			/* EXTI Line 16 interrupt /PVD through EXTI line detection interrupt*/
    .weak TAMP_STAMP_IRQHandler        			/* Tamper and TimeStamp interrupts through the EXTI line*/
    .weak EXTI22_RTC_WKUP_IRQHandler   			/* EXTI Line 22 interrupt /RTC Wakeup interrupt through the EXTI line*/
    .weak FLASH_IRQHandler             			/* FLASH global interrupt*/
    .weak RCC_IRQHandler               			/* RCC global interrupt*/
    .weak EXTI0_IRQHandler             			/* EXTI Line0 interrupt*/
    .weak EXTI1_IRQHandler             			/* EXTI Line1 interrupt*/
    .weak EXTI2_IRQHandler             			/* EXTI Line2 interrupt*/
    .weak EXTI3_IRQHandler             			/* EXTI Line3 interrupt*/
    .weak EXTI4_IRQHandler             			/* EXTI Line4 interrupt*/
    .weak DMA1_Stream0_IRQHandler      			/* DMA1 Stream0 global interrupt*/
    .weak DMA1_Stream1_IRQHandler      			/* DMA1 Stream1 global interrupt*/
    .weak DMA1_Stream2_IRQHandler      			/* DMA1 Stream2 global interrupt*/
    .weak DMA1_Stream3_IRQHandler      			/* DMA1 Stream3 global interrupt*/
    .weak DMA1_Stream4_IRQHandler      			/* DMA1 Stream4 global interrupt*/
    .weak DMA1_Stream5_IRQHandler      			/* DMA1 Stream5 global interrupt*/
    .weak DMA1_Stream6_IRQHandler      			/* DMA1 Stream6 global interrupt*/
    .weak ADC_IRQHandler               			/* ADC1 global interrupt*/
    .weak EXTI9_5_IRQHandler           			/* EXTI Line[9:5] interrupts*/
    .weak TIM1_BRK_TIM9_IRQHandler     			/* TIM1 Break interrupt and TIM9 global interrupt*/
    .weak TIM1_UP_TIM10_IRQHandler     			/* TIM1 Update interrupt and TIM10 global interrupt*/
    .weak TIM1_TRG_COM_TIM11_IRQHandler			/* TIM1 Trigger and Commutation interrupts and TIM11 global interrupt*/
    .weak TIM1_CC_IRQHandler           			/* TIM1 Capture Compare interrupt*/
    .weak TIM2_IRQHandler              			/* TIM2 global interrupt*/
    .weak TIM3_IRQHandler              			/* TIM3 global interrupt*/
    .weak TIM4_IRQHandler              			/* TIM4 global interrupt*/
    .weak I2C1_EV_IRQHandler           			/* I2C1 event interrupt*/
    .weak I2C1_ER_IRQHandler           			/* I2C1 error interrupt*/
    .weak I2C2_EV_IRQHandler           			/* I2C2 event interrupt*/
    .weak I2C2_ER_IRQHandler           			/* I2C2 error interrupt*/
    .weak SPI1_IRQHandler              			/* SPI1 global interrupt*/
    .weak SPI2_IRQHandler              			/* SPI2 global interrupt*/
    .weak USART1_IRQHandler            			/* USART1 global interrupt*/
    .weak USART2_IRQHandler            			/* USART2 global interrupt*/
    .weak EXTI15_10_IRQHandler         			/* EXTI Line[15:10] interrupts*/
    .weak EXTI17_RTC_Alarm_IRQHandler  			/* EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt*/
    .weak EXTI18_OTG_FS_WKUP_IRQHandler			/* EXTI Line 18 interrupt / USBUSB On-The-Go FS Wakeup through EXTI line interrupt*/
    .weak DMA1_Stream7_IRQHandler      			/* DMA1 Stream7 global interrupt*/
    .weak SDIO_IRQHandler              			/* SDIO global interrupt*/
    .weak TIM5_IRQHandler              			/* TIM5 global interrupt*/
    .weak SPI3_IRQHandler              			/* SPI3 global interrupt*/
    .weak DMA2_Stream0_IRQHandler      			/* DMA2 Stream0 global interrupt*/
    .weak DMA2_Stream1_IRQHandler      			/* DMA2 Stream1 global interrupt*/
    .weak DMA2_Stream2_IRQHandler      			/* DMA2 Stream2 global interrupt*/
    .weak DMA2_Stream3_IRQHandler      			/* DMA2 Stream3 global interrupt*/
    .weak DMA2_Stream4_IRQHandler      			/* DMA2 Stream4 global interrupt*/
    .weak OTG_FS_IRQHandler            			/* USB On The Go FS global interrupt*/
    .weak DMA2_Stream5_IRQHandler      			/* DMA2 Stream5 global interrupt*/
    .weak DMA2_Stream6_IRQHandler      			/* DMA2 Stream6 global interrupt*/
    .weak DMA2_Stream7_IRQHandler      			/* DMA2 Stream7 global interrupt*/
    .weak USART6_IRQHandler            			/* USART6 global interrupt*/
    .weak I2C3_EV_IRQHandler           			/* I2C3 event interrupt*/
    .weak I2C3_ER_IRQHandler           			/* I2C3 error interrupt*/
    .weak SPI4_IRQHandler              			/* SPI4 global interrupt*/  

/*************************************** Interrupt Handler Functions end ***************************************/
    
/*************************************** Interrupt Handler Function alias start ***************************************/

    .thumb_set NMI_Handler,Default_Handler               /* NMI Handler */
    .thumb_set HardFault_Handler,Default_Handler         /* HardFault Handler */
    .thumb_set MemManage_Handler,Default_Handler         /* MemManage Handler */
    .thumb_set BusFault_Handler,Default_Handler          /* BusFault Handler */
    .thumb_set UsageFault_Handler,Default_Handler        /* UsageFault Handler */
    .thumb_set SVC_Handler,Default_Handler               /* SVC Handler */
    .thumb_set DebugMon_Handler,Default_Handler          /* DebugMon Handler */
    .thumb_set PendSV_Handler,Default_Handler            /* PendSV Handler */
    .thumb_set SysTick_Handler,Default_Handler           /* SysTick Handler */
    .thumb_set EXTI16_PVD_IRQHandler,Default_Handler      /* EXTI Line 16 interrupt / PVD through EXTI line detection interrupt */
    .thumb_set TAMP_STAMP_IRQHandler,Default_Handler      /* Tamper and TimeStamp interrupts through the EXTI line */
    .thumb_set EXTI22_RTC_WKUP_IRQHandler,Default_Handler/* EXTI Line 22 interrupt / RTC Wakeup interrupt through the EXTI line */
    .thumb_set FLASH_IRQHandler,Default_Handler           /* FLASH global interrupt */
    .thumb_set RCC_IRQHandler,Default_Handler             /* RCC global interrupt */
    .thumb_set EXTI0_IRQHandler,Default_Handler           /* EXTI Line0 interrupt */
    .thumb_set EXTI1_IRQHandler,Default_Handler           /* EXTI Line1 interrupt */
    .thumb_set EXTI2_IRQHandler,Default_Handler           /* EXTI Line2 interrupt */
    .thumb_set EXTI3_IRQHandler,Default_Handler           /* EXTI Line3 interrupt */
    .thumb_set EXTI4_IRQHandler,Default_Handler           /* EXTI Line4 interrupt */
    .thumb_set DMA1_Stream0_IRQHandler,Default_Handler    /* DMA1 Stream0 global interrupt */
    .thumb_set DMA1_Stream1_IRQHandler,Default_Handler    /* DMA1 Stream1 global interrupt */
    .thumb_set DMA1_Stream2_IRQHandler,Default_Handler    /* DMA1 Stream2 global interrupt */
    .thumb_set DMA1_Stream3_IRQHandler,Default_Handler    /* DMA1 Stream3 global interrupt */
    .thumb_set DMA1_Stream4_IRQHandler,Default_Handler    /* DMA1 Stream4 global interrupt */
    .thumb_set DMA1_Stream5_IRQHandler,Default_Handler    /* DMA1 Stream5 global interrupt */
    .thumb_set DMA1_Stream6_IRQHandler,Default_Handler    /* DMA1 Stream6 global interrupt */
    .thumb_set ADC_IRQHandler,Default_Handler             /* ADC1 global interrupt */
    .thumb_set EXTI9_5_IRQHandler,Default_Handler         /* EXTI Line[9:5] interrupts */
    .thumb_set TIM1_BRK_TIM9_IRQHandler,Default_Handler   /* TIM1 Break interrupt and TIM9 global interrupt */
    .thumb_set TIM1_UP_TIM10_IRQHandler,Default_Handler   /* TIM1 Update interrupt and TIM10 global interrupt */
    .thumb_set TIM1_TRG_COM_TIM11_IRQHandler,Default_Handler/* TIM1 Trigger and Commutation interrupts and TIM11 global interrupt */
    .thumb_set TIM1_CC_IRQHandler,Default_Handler          /* TIM1 Capture Compare interrupt */
    .thumb_set TIM2_IRQHandler,Default_Handler            /* TIM2 global interrupt */
    .thumb_set TIM3_IRQHandler,Default_Handler            /* TIM3 global interrupt */
    .thumb_set TIM4_IRQHandler,Default_Handler            /* TIM4 global interrupt */
    .thumb_set I2C1_EV_IRQHandler,Default_Handler         /* I2C1 event interrupt */
    .thumb_set I2C1_ER_IRQHandler,Default_Handler         /* I2C1 error interrupt */
    .thumb_set I2C2_EV_IRQHandler,Default_Handler         /* I2C2 event interrupt */
    .thumb_set I2C2_ER_IRQHandler,Default_Handler         /* I2C2 error interrupt */
    .thumb_set SPI1_IRQHandler,Default_Handler            /* SPI1 global interrupt */
    .thumb_set SPI2_IRQHandler,Default_Handler            /* SPI2 global interrupt */
    .thumb_set USART1_IRQHandler,Default_Handler          /* USART1 global interrupt */
    .thumb_set USART2_IRQHandler,Default_Handler          /* USART2 global interrupt */
    .thumb_set EXTI15_10_IRQHandler,Default_Handler        /* EXTI Line[15:10] interrupts */
    .thumb_set EXTI17_RTC_Alarm_IRQHandler,Default_Handler/* EXTI Line 17 interrupt / RTC Alarms (A and B) through EXTI line interrupt */
    .thumb_set EXTI18_OTG_FS_WKUP_IRQHandler,Default_Handler/* EXTI Line 18 interrupt / USB On-The-Go FS Wakeup through EXTI line interrupt */
    .thumb_set DMA1_Stream7_IRQHandler,Default_Handler    /* DMA1 Stream7 global interrupt */
    .thumb_set SDIO_IRQHandler,Default_Handler            /* SDIO global interrupt */
    .thumb_set TIM5_IRQHandler,Default_Handler            /* TIM5 global interrupt */
    .thumb_set SPI3_IRQHandler,Default_Handler            /* SPI3 global interrupt */
    .thumb_set DMA2_Stream0_IRQHandler,Default_Handler    /* DMA2 Stream0 global interrupt */
    .thumb_set DMA2_Stream1_IRQHandler,Default_Handler    /* DMA2 Stream1 global interrupt */
    .thumb_set DMA2_Stream2_IRQHandler,Default_Handler    /* DMA2 Stream2 global interrupt */
    .thumb_set DMA2_Stream3_IRQHandler,Default_Handler    /* DMA2 Stream3 global interrupt */
    .thumb_set DMA2_Stream4_IRQHandler,Default_Handler    /* DMA2 Stream4 global interrupt */
    .thumb_set OTG_FS_IRQHandler,Default_Handler          /* USB On-The-Go FS global interrupt */
    .thumb_set DMA2_Stream5_IRQHandler,Default_Handler    /* DMA2 Stream5 global interrupt */
    .thumb_set DMA2_Stream6_IRQHandler,Default_Handler    /* DMA2 Stream6 global interrupt */
    .thumb_set DMA2_Stream7_IRQHandler,Default_Handler    /* DMA2 Stream7 global interrupt */
    .thumb_set USART6_IRQHandler,Default_Handler          /* USART6 global interrupt */
    .thumb_set I2C3_EV_IRQHandler,Default_Handler         /* I2C3 event interrupt */
    .thumb_set I2C3_ER_IRQHandler,Default_Handler         /* I2C3 error interrupt */
    .thumb_set SPI4_IRQHandler,Default_Handler            /* SPI4 global interrupt */

/*************************************** Interrupt Handler Function alias end ***************************************/

/*************************************** Default Handler start ***************************************/
.section .text
.type Default_Handler, %function
Default_Handler:
    b Default_Handler
/*************************************** Default Handler end ***************************************/

/*************************************** Reset Handler start ***************************************/

.section .text
.type Reset_Handler, %function
Reset_Handler:
/* Copy the data segment initializers from flash to SRAM */
	ldr r0, =_sdata
	ldr r1, =_edata
	ldr r2, =_sload_data
	movs r3, #0
	b LoopCopyDataInit

	CopyDataInit:
	ldr r4, [r2, r3]
	str r4, [r0, r3]
	adds r3, r3, #4

	LoopCopyDataInit:
	adds r4, r0, r3
	cmp r4, r1
	bcc CopyDataInit

/* Zero fill the bss segment. */
    ldr r2, =_sbss
    ldr r4, =_ebss
    movs r3, #0
    b LoopFillZerobss

    FillZerobss:
    str  r3, [r2]
    adds r2, r2, #4

    LoopFillZerobss:
    cmp r2, r4
    bcc FillZerobss

    b main

    b .

/*************************************** Reset Handler end ***************************************/
