#include <sysconf.h>

.syntax unified
.align  3

.section .startup, "a", %progbits

    .global tableVector
    .type   tableVector, %object
tableVector:
    .word   _stkirq_end
    .word   expReset
    .word   expNmi
    .word   expHardFault
    .word   expMemManage
    .word   expBusFault
    .word   expUsageFault
    .word   0
    .word   0
    .word   0
    .word   0
    .word   expSVCall
    .word   expDebugMon
    .word   0
    .word   expPendSV
    .word   expSysTick

    .word   irqWwdg
    .word   irqPvd
    .word   irqTamper
    .word   irqRtc
    .word   irqFlash
    .word   irqRcc
    .word   irqExti0
    .word   irqExti1
    .word   irqExti2
    .word   irqExti3
    .word   irqExti4
    .word   irqDma1C1
    .word   irqDma1C2
    .word   irqDma1C3
    .word   irqDma1C4
    .word   irqDma1C5
    .word   irqDma1C6
    .word   irqDma1C7
    .word   irqAdc1Adc2
    .word   irqUsbHpCanTx
    .word   irqUsbLpCanRx0
    .word   irqCanRx1
    .word   irqCanSce
    .word   irqExti9to5
    .word   irqTim1Brk
    .word   irqTim1Up
    .word   irqTim1TrgCom
    .word   irqTim1Cc
    .word   irqTim2
    .word   irqTim3
    .word   irqTim4
    .word   irqI2c1Ev
    .word   irqI2c1Er
    .word   irqI2c2Ev
    .word   irqI2c2Er
    .word   irqSpi1
    .word   irqSpi2
    .word   irqUsart1
    .word   irqUsart2
    .word   irqUsart3
    .word   irqExti15to10
    .word   irqRtcAlarm
    .word   irqUsbWakeup
    .word   irqTim8Brk
    .word   irqTim8Up
    .word   irqTim8TrgCom
    .word   irqTim8Cc
    .word   irqAdc3
    .word   irqFsmc
    .word   irqSdio
    .word   irqTim5
    .word   irqSpi3
    .word   irqUart4
    .word   irqUart5
    .word   irqTim6
    .word   irqTim7
    .word   irqDma2C1
    .word   irqDma2C2
    .word   irqDma2C3
    .word   irqDma2C4C5
    .size tableVector, . - tableVector

    .global expReset
    .type   expReset, %function
expReset:
    cpsid   i
    ldr     r1, =_text_end
    ldr     r2, =_data_start
    ldr     r3, =_data_end
_dataCopy:
    cmp     r2, r3
    ittt    ne
    ldmiane r1!, {r0}
    stmiane r2!, {r0}
    bne     _dataCopy
    ldr     r2, =_bss_start
    ldr     r3, =_bss_end
    movs    r0, #0
_bssClear:
    cmp     r2, r3
    itt     ne
    stmiane r2!, {r0}
    bne     _bssClear
    bl      cpuInit
    bl      pinInit
    ldr     r0, =procIdle
    movs    r1, #7
    ldr     r2, =(stackIdle + STKSIZE_IDLE)
    bl      kthreadInit
    ldr     r0, =main
    movs    r1, #0
    ldr     r2, =(stackMain + STKSIZE_MAIN)
    bl      kthreadInit
    movs    r0, #0
    msr     psp, r0
    ldr     r0, =0xe000ed04
    mov     r1, #0x10000000
    str     r1, [r0]
    cpsie   i
    b       .
    .size expReset, . - expReset

    // 进入中断需12周期,中断运行35个时钟周期,返回11周期，咬尾4周期
    .global expPendSV
    .type   expPendSV, %function
expPendSV:
    mrs     r0, psp                 // 1
    cbz     r0, _pendsvFirst        // 3 or 1
    stmdb   r0!, {r4-r11}           // 9
    ldr     r2, =kvarThread         // 2
    add     r1, r2, #32             // 1
    ldrb    r3, [r2, #30]           // 2
    str     r0, [r1, r3, lsl #2]    // 2
    ldrb    r3, [r2, #31]           // 2
    strb    r3, [r2, #30]           // 2
    ldr     r0, [r1, r3, lsl #2]    // 2
    ldmia   r0!, {r4-r11}           // 9
    msr     psp, r0                 // 1
    mov     lr, #0xfffffffd         // 1
    bx      lr                      // 11 or 4
_pendsvFirst:
    ldr     r0, =_stkirq_end
    msr     msp, r0
    ldr     r1, =kvarThread
    ldr     r0, [r1, #32]
    ldmia   r0!, {r4-r11}
    msr     psp, r0
    mov     lr, #0xfffffffd
    bx      lr
    .size   expPendSV, . - expPendSV

    // 进入中断需12周期,中断运行51-74个时钟周期,返回11周期，咬尾4周期
    .global expSysTick
    .type   expSysTick, %function
expSysTick:
    movw    r0, #0xaaaa             // 1
    ldr     r1, =0x40003000         // 2
    strh    r0, [r1]                // 2
_stThread6:
    ldr     r0, =kvarThread         // 2
    ldrd    r2, r1, [r0, #24]       // 3
    cbz     r2, _stThread5          // 3 or 1
    subs    r2, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #64             // 1
    str     r2, [r0, #24]           // 2
_stThread5:
    ldrd    r2, r3, [r0, #16]       // 3
    cbz     r3, _stThread4          // 3 or 1
    subs    r3, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #32             // 1
    str     r3, [r0, #20]           // 2
_stThread4:
    cbz     r2, _stThread3          // 3 or 1
    subs    r2, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #16             // 1
    str     r2, [r0, #16]           // 2
_stThread3:
    ldrd    r2, r3, [r0, #8]        // 3
    cbz     r3, _stThread2          // 3 or 1
    subs    r3, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #8              // 1
    str     r3, [r0, #12]           // 2
_stThread2:
    cbz     r2, _stThread1          // 3 or 1
    subs    r2, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #4              // 1
    str     r2, [r0, #8]            // 2
_stThread1:
    ldrd    r2, r3, [r0, #0]        // 3
    cbz     r3, _stThread0          // 3 or 1
    subs    r3, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #2              // 1
    str     r3, [r0, #4]            // 2
_stThread0:
    cbz     r2, _stThreadSw         // 3 or 1
    subs    r2, #1                  // 1
    it      eq                      // 1
    orreq   r1, r1, #1              // 1
    str     r2, [r0, #0]            // 2
_stThreadSw:
    rbit    r2, r1                  // 1
    clz     r2, r2                  // 1
    bfi     r1, r2, #24, #8         // 1
    str     r1, [r0, #28]           // 2
    ubfx    r1, r1, #16, #8         // 1
    cmp     r2, r1                  // 1
    ittt    ne                      // 1
    ldrne   r0, =0xe000ed04         // 2 or 1
    movne   r1, #0x10000000         // 1
    strne   r1, [r0]                // 2 or 1
    bx      lr                      // 11 or 4
    .size   expSysTick, . - expSysTick

    .global procIdle
    .type   procIdle, %function
procIdle:
    wfi
    b       procIdle
    .size   procIdle, . - procIdle

    .global kthreadInit
    .type   kthreadInit, %function
kthreadInit:
    mov     r3, #0x01000000
    stmdb   r2!, {r0, r3}
    mov     r3, #0xfffffffe
    stmdb   r2!, {r3}
    subs    r2, #52
    ldr     r0, =(kvarThread + 32)
    str     r2, [r0, r1, lsl #2]
    movs    r2, #1
    lsls    r2, r1
    mrs     r3, PRIMASK
    cpsid   i
    ldr     r1, [r0, #-4]!
    orrs    r1, r2
    rbit    r2, r1
    clz     r2, r2
    bfi     r1, r2, #24, #8
    str     r1, [r0]
    ubfx    r1, r1, #16, #8
    cmp     r2, r1
    ittt    ne
    ldrne   r0, =0xe000ed04
    movne   r1, #0x10000000
    strne   r1, [r0]
    msr     PRIMASK, r3
    bx      lr
    .size   kthreadInit, . - kthreadInit

    .global kthreadSleep
    .type   kthreadSleep, %function
kthreadSleep:
    push    {r4, lr}
    ldr     r1, =kvarThread
    mrs     r4, PRIMASK
    cpsid   i
    ldr     r2, [r1, #28]
    ubfx    r3, r2, #16, #8
    str     r0, [r1, r3, lsl #2]
    movs    r0, #1
    lsls    r0, r3
    bics    r2, r0
    rbit    r0, r2
    clz     r0, r0
    bfi     r2, r0, #24, #8
    str     r2, [r1, #28]
    ldr     r0, =0xe000ed04
    mov     r1, #0x10000000
    str     r1, [r0]
    msr     PRIMASK, r4
    pop     {r4, pc}
    .size   kthreadSleep, . - kthreadSleep

/*
    .global tftWrite
    .type   tftWrite, %function
tftWrite:
    push    {r4, r5, lr}
    ldr     r1, =0x42210180    // PAODR bb base
    ldr     r2, =0x42218180    // PBODR bb base
    mov     r4, #0
    mov     r5, #1
    str     r4, [r2, #56]       // nCS = 0
    ubfx    r3, r0, #8, #1      // r0 bit 8 to r3
    str     r3, [r1, #36]       // D0:PA9
    ubfx    r3, r0, #9, #1      // r0 bit 9 to r3
    str     r3, [r2, #44]       // D1:PB11
    ubfx    r3, r0, #10, #1     // r0 bit 10 to r3
    str     r3, [r1, #40]       // D2:PA10
    ubfx    r3, r0, #11, #1     // r0 bit 11 to r3
    str     r3, [r2, #40]       // D3:PB10
    ubfx    r3, r0, #12, #1     // r0 bit 12 to r3
    str     r3, [r1, #44]       // D4:PA11
    ubfx    r3, r0, #13, #1     // r0 bit 13 to r3
    str     r3, [r2, #8]        // D5:PB2
    ubfx    r3, r0, #14, #1     // r0 bit 14 to r3
    str     r3, [r1, #48]       // D6:PA12
    ubfx    r3, r0, #15, #1     // r0 bit 15 to r3
    str     r3, [r2, #4]        // D7:PB1
    str     r4, [r2, #60]       // WR = 0
    str     r5, [r2, #60]       // WR = 1
    ubfx    r3, r0, #0, #1      // r0 bit 0 to r3
    str     r3, [r1, #36]       // D0:PA9
    ubfx    r3, r0, #1, #1      // r0 bit 1 to r3
    str     r3, [r2, #44]       // D1:PB11
    ubfx    r3, r0, #2, #1      // r0 bit 2 to r3
    str     r3, [r1, #40]       // D2:PA10
    ubfx    r3, r0, #3, #1      // r0 bit 3 to r3
    str     r3, [r2, #40]       // D3:PB10
    ubfx    r3, r0, #4, #1      // r0 bit 4 to r3
    str     r3, [r1, #44]       // D4:PA11
    ubfx    r3, r0, #5, #1      // r0 bit 5 to r3
    str     r3, [r2, #8]        // D5:PB2
    ubfx    r3, r0, #6, #1      // r0 bit 6 to r3
    str     r3, [r1, #48]       // D6:PA12
    ubfx    r3, r0, #7, #1      // r0 bit 7 to r3
    str     r3, [r2, #4]        // D7:PB1
    str     r4, [r2, #60]       // WR = 0
    str     r5, [r2, #60]       // WR = 1
    str     r5, [r2, #56]       // nCS = 1
    pop     {r4, r5, pc}
    .size   tftWrite, . - tftWrite
*/

    .global irqDefault
    .type   irqDefault, %function
irqDefault:
    cpsid   i
    b       .
    .size   irqDefault, . - irqDefault

    .macro  IRQ handler
    .weak   \handler
    .set    \handler, irqDefault
    .endm

    IRQ     expNmi
    IRQ     expHardFault
    IRQ     expMemManage
    IRQ     expBusFault
    IRQ     expUsageFault
    IRQ     expSVCall
    IRQ     expDebugMon

    IRQ     irqWwdg
    IRQ     irqPvd
    IRQ     irqTamper
    IRQ     irqRtc
    IRQ     irqFlash
    IRQ     irqRcc
    IRQ     irqExti0
    IRQ     irqExti1
    IRQ     irqExti2
    IRQ     irqExti3
    IRQ     irqExti4
    IRQ     irqDma1C1
    IRQ     irqDma1C2
    IRQ     irqDma1C3
    IRQ     irqDma1C4
    IRQ     irqDma1C5
    IRQ     irqDma1C6
    IRQ     irqDma1C7
    IRQ     irqAdc1Adc2
    IRQ     irqUsbHpCanTx
    IRQ     irqUsbLpCanRx0
    IRQ     irqCanRx1
    IRQ     irqCanSce
    IRQ     irqExti9to5
    IRQ     irqTim1Brk
    IRQ     irqTim1Up
    IRQ     irqTim1TrgCom
    IRQ     irqTim1Cc
    IRQ     irqTim2
    IRQ     irqTim3
    IRQ     irqTim4
    IRQ     irqI2c1Ev
    IRQ     irqI2c1Er
    IRQ     irqI2c2Ev
    IRQ     irqI2c2Er
    IRQ     irqSpi1
    IRQ     irqSpi2
    IRQ     irqUsart1
    IRQ     irqUsart2
    IRQ     irqUsart3
    IRQ     irqExti15to10
    IRQ     irqRtcAlarm
    IRQ     irqUsbWakeup
    IRQ     irqTim8Brk
    IRQ     irqTim8Up
    IRQ     irqTim8TrgCom
    IRQ     irqTim8Cc
    IRQ     irqAdc3
    IRQ     irqFsmc
    IRQ     irqSdio
    IRQ     irqTim5
    IRQ     irqSpi3
    IRQ     irqUart4
    IRQ     irqUart5
    IRQ     irqTim6
    IRQ     irqTim7
    IRQ     irqDma2C1
    IRQ     irqDma2C2
    IRQ     irqDma2C3
    IRQ     irqDma2C4C5

.end
