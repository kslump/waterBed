	.cpu cortex-m3
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"cpu.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.cpuInit,"ax",%progbits
	.align	1
	.global	cpuInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	cpuInit, %function
cpuInit:
.LFB0:
	.file 1 "src/system/cpu.c"
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 28 0
	movs	r1, #2
	ldr	r3, .L12
	ldr	r2, [r3]
	.loc 1 29 0
	subw	r3, r3, #4092
	.loc 1 28 0
	bfi	r2, r1, #0, #3
	.loc 1 29 0
	movs	r1, #14
	.loc 1 28 0
	str	r2, [r3, #4092]
	.loc 1 29 0
	ldr	r2, [r3]
	bfi	r2, r1, #18, #4
	.loc 1 32 0
	movs	r1, #4
	.loc 1 29 0
	str	r2, [r3]
	.loc 1 32 0
	ldr	r2, [r3]
	bfi	r2, r1, #8, #3
	str	r2, [r3]
	.loc 1 51 0
	ldr	r2, [r3]
	bfc	r2, #11, #3
	str	r2, [r3]
	.loc 1 60 0
	ldr	r2, [r3]
	orr	r2, r2, #49152
	str	r2, [r3]
	.loc 1 62 0
	ldr	r2, .L12+4
	ldr	r1, [r2]
	orr	r1, r1, #16777216
	str	r1, [r2]
.L2:
	.loc 1 63 0 discriminator 1
	ldr	r1, [r2]
	lsls	r1, r1, #6
	bpl	.L2
	.loc 1 65 0
	movs	r1, #2
	ldr	r2, [r3]
	bfi	r2, r1, #0, #2
	str	r2, [r3]
.L3:
	.loc 1 66 0 discriminator 1
	ldr	r2, [r3]
	ubfx	r2, r2, #2, #2
	cmp	r2, #2
	bne	.L3
	.loc 1 69 0
	ldr	r3, .L12+8
	ldr	r2, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	.loc 1 70 0
	ldr	r2, [r3]
	orr	r2, r2, #4
	str	r2, [r3]
	.loc 1 71 0
	ldr	r2, [r3]
	orr	r2, r2, #8
	str	r2, [r3]
	.loc 1 72 0
	ldr	r2, [r3]
	orr	r2, r2, #16
	str	r2, [r3]
	.loc 1 73 0
	ldr	r2, [r3]
	orr	r2, r2, #32
	str	r2, [r3]
	.loc 1 77 0
	ldr	r3, .L12+12
	ldr	r2, .L12+16
	str	r2, [r3]
	.loc 1 78 0
	movs	r3, #112
	ldr	r2, .L12+20
	strb	r3, [r2]
	.loc 1 79 0
	strb	r3, [r2, #1]
	.loc 1 80 0
	movw	r2, #7999
	ldr	r3, .L12+24
	str	r2, [r3]
	.loc 1 81 0
	ldr	r2, [r3, #-4]
	orr	r2, r2, #2
	str	r2, [r3, #-4]
	.loc 1 82 0
	ldr	r2, [r3, #-4]
	orr	r2, r2, #1
	str	r2, [r3, #-4]
	.loc 1 84 0
	ldr	r3, .L12+28
	ldr	r2, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
.L4:
	.loc 1 85 0 discriminator 1
	ldr	r2, [r3]
	lsls	r2, r2, #30
	bpl	.L4
	.loc 1 86 0
	ldr	r3, .L12+32
.L5:
	.loc 1 86 0 is_stmt 0 discriminator 1
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L5
	.loc 1 88 0 is_stmt 1
	movw	r1, #21845
	ldr	r3, .L12+36
	strh	r1, [r3]	@ movhi
	.loc 1 89 0
	ldr	r1, .L12+40
	strb	r2, [r1]
	.loc 1 90 0
	mov	r1, #1024
	ldr	r2, .L12+44
	strh	r1, [r2]	@ movhi
	.loc 1 91 0
	movw	r2, #43690
	strh	r2, [r3]	@ movhi
	.loc 1 92 0
	movw	r2, #52428
	strh	r2, [r3]	@ movhi
	.loc 1 93 0
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073881088
	.word	1073876992
	.word	1073877016
	.word	-536810228
	.word	100271872
	.word	-536810206
	.word	-536813548
	.word	1073877028
	.word	1073754124
	.word	1073754112
	.word	1073754116
	.word	1073754120
	.cfi_endproc
.LFE0:
	.size	cpuInit, .-cpuInit
	.section	.text.delay,"ax",%progbits
	.align	1
	.global	delay
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	delay, %function
delay:
.LFB1:
	.loc 1 95 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 98 0
	ldr	r2, .L23
	.loc 1 99 0
	lsls	r0, r0, #3
.LVL1:
	.loc 1 98 0
	ldr	r3, [r2]
.LVL2:
	.loc 1 100 0
	cmp	r3, r0
	bcc	.L15
	.loc 1 101 0
	subs	r0, r3, r0
.LVL3:
.L17:
	.loc 1 103 0 discriminator 2
	ldr	r1, [r2]
.LVL4:
	.loc 1 104 0 discriminator 2
	cmp	r0, r1
	bcs	.L14
	.loc 1 104 0 is_stmt 0 discriminator 1
	cmp	r3, r1
	bcs	.L17
	bx	lr
.LVL5:
.L15:
	.loc 1 106 0 is_stmt 1
	add	r1, r3, #8000
	subs	r0, r1, r0
.LVL6:
.L18:
	.loc 1 108 0 discriminator 3
	ldr	r1, [r2]
.LVL7:
	.loc 1 109 0 discriminator 3
	cmp	r0, r1
	bls	.L18
	.loc 1 109 0 is_stmt 0 discriminator 2
	cmp	r3, r1
	bcs	.L18
.L14:
	.loc 1 111 0 is_stmt 1
	bx	lr
.L24:
	.align	2
.L23:
	.word	-536813544
	.cfi_endproc
.LFE1:
	.size	delay, .-delay
	.section	.text.irqAttach,"ax",%progbits
	.align	1
	.global	irqAttach
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	irqAttach, %function
irqAttach:
.LFB2:
	.loc 1 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL8:
	.loc 1 115 0
	movs	r2, #1
	.loc 1 114 0
	add	r3, r0, #-536870912
	lsls	r1, r1, #4
.LVL9:
	add	r3, r3, #58368
	uxtb	r1, r1
	strb	r1, [r3]
	.loc 1 115 0
	lsrs	r3, r0, #5
	lsls	r3, r3, #2
	add	r3, r3, #-536870912
	and	r0, r0, #31
.LVL10:
	add	r3, r3, #57600
	lsl	r0, r2, r0
	str	r0, [r3]
	.loc 1 116 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	irqAttach, .-irqAttach
	.section	.text.irqDetach,"ax",%progbits
	.align	1
	.global	irqDetach
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	irqDetach, %function
irqDetach:
.LFB3:
	.loc 1 118 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL11:
	.loc 1 119 0
	movs	r3, #1
	lsrs	r2, r0, #5
	and	r0, r0, #31
.LVL12:
	lsl	r0, r3, r0
	ldr	r3, .L27
	str	r0, [r3, r2, lsl #2]
	.loc 1 120 0
	bx	lr
.L28:
	.align	2
.L27:
	.word	-536813184
	.cfi_endproc
.LFE3:
	.size	irqDetach, .-irqDetach
	.comm	kvarThread,64,8
	.comm	stackMain,512,8
	.comm	stackIdle,96,8
	.text
.Letext0:
	.file 2 "inc/system.h"
	.file 3 "inc/stm32.h"
	.file 4 "inc/include.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x605
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0xc
	.4byte	.LASF79
	.4byte	.LASF80
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.4byte	0x30
	.uleb128 0x4
	.4byte	0x3e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xa
	.4byte	0x60
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0x28
	.4byte	0xd4
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x29
	.4byte	0x6e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2a
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2b
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x2c
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.4byte	0xd4
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0x99
	.4byte	0x197
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x9a
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x9b
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x9d
	.4byte	0x6e
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9e
	.4byte	0x6e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x3
	.byte	0x9f
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x3
	.byte	0xa0
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x3
	.byte	0xa1
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0xa2
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0xa4
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa5
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x3
	.byte	0xa7
	.4byte	0x197
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa9
	.4byte	0x26a
	.uleb128 0x9
	.ascii	"sw\000"
	.byte	0x3
	.byte	0xaa
	.4byte	0x6e
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"sws\000"
	.byte	0x3
	.byte	0xab
	.4byte	0x6e
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x3
	.byte	0xac
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x3
	.byte	0xad
	.4byte	0x6e
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x3
	.byte	0xae
	.4byte	0x6e
	.byte	0x4
	.byte	0x3
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x3
	.byte	0xaf
	.4byte	0x6e
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x3
	.byte	0xb0
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0xb1
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x3
	.byte	0xb2
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x3
	.byte	0xb3
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"mco\000"
	.byte	0x3
	.byte	0xb5
	.4byte	0x6e
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x1a7
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x3
	.byte	0xb7
	.4byte	0x26a
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0xd1
	.4byte	0x3b5
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x3
	.byte	0xd2
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x3
	.byte	0xd4
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x3
	.byte	0xd5
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x3
	.byte	0xd6
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x3
	.byte	0xd7
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x3
	.byte	0xd8
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x3
	.byte	0xd9
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x3
	.byte	0xda
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x3
	.byte	0xdb
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x3
	.byte	0xdc
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x3
	.byte	0xdd
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x3
	.byte	0xde
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x3
	.byte	0xdf
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x3
	.byte	0xe0
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x3
	.byte	0xe1
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x3
	.byte	0xe3
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x3
	.byte	0xe4
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x3
	.byte	0xe5
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x27a
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x3
	.byte	0xe7
	.4byte	0x3b5
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.2byte	0x124
	.4byte	0x471
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x125
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x126
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x128
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x12a
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x12b
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x12c
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x12d
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x12e
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x12f
	.4byte	0x6e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x3c5
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x130
	.4byte	0x471
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x4
	.byte	0x5a
	.4byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x4
	.byte	0x5b
	.4byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x4
	.byte	0x5c
	.4byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x49
	.4byte	0x4b4
	.uleb128 0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x4a9
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x4
	.byte	0x5e
	.4byte	0x4b4
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x3e
	.4byte	0x4d6
	.uleb128 0x10
	.4byte	0x29
	.byte	0x5f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x1
	.byte	0x17
	.4byte	0x4c6
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.byte	0x3
	.4byte	stackIdle
	.uleb128 0xe
	.4byte	0x3e
	.4byte	0x4fa
	.uleb128 0x12
	.4byte	0x29
	.2byte	0x1ff
	.byte	0
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x18
	.4byte	0x4e9
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.byte	0x3
	.4byte	stackMain
	.uleb128 0xe
	.4byte	0x3e
	.4byte	0x51d
	.uleb128 0x10
	.4byte	0x29
	.byte	0x3f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.byte	0x19
	.4byte	0x50d
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.byte	0x3
	.4byte	kvarThread
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x559
	.uleb128 0x14
	.ascii	"num\000"
	.byte	0x1
	.byte	0x76
	.4byte	0x3e
	.4byte	.LLST6
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x591
	.uleb128 0x14
	.ascii	"num\000"
	.byte	0x1
	.byte	0x71
	.4byte	0x3e
	.4byte	.LLST4
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0x71
	.4byte	0x3e
	.4byte	.LLST5
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5f3
	.uleb128 0x14
	.ascii	"us\000"
	.byte	0x1
	.byte	0x5f
	.4byte	0x6e
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.byte	0x1
	.byte	0x53
	.uleb128 0x17
	.ascii	"end\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST1
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST2
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x1
	.byte	0x60
	.4byte	0x6e
	.4byte	.LLST3
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE1
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"hsitrim\000"
.LASF53:
	.ascii	"__rccApb2\000"
.LASF60:
	.ascii	"iwdgrstf\000"
.LASF22:
	.ascii	"csson\000"
.LASF55:
	.ascii	"lsirdy\000"
.LASF31:
	.ascii	"pllxtpre\000"
.LASF25:
	.ascii	"__rccCr\000"
.LASF67:
	.ascii	"bmpGokon\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF61:
	.ascii	"wwdgrstf\000"
.LASF24:
	.ascii	"pllrdy\000"
.LASF44:
	.ascii	"adc2\000"
.LASF8:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF79:
	.ascii	"src/system/cpu.c\000"
.LASF32:
	.ascii	"pllmul\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF56:
	.ascii	"rmvf\000"
.LASF23:
	.ascii	"pllon\000"
.LASF16:
	.ascii	"hsirdy\000"
.LASF59:
	.ascii	"sftrstf\000"
.LASF35:
	.ascii	"afio\000"
.LASF27:
	.ascii	"ppre1\000"
.LASF28:
	.ascii	"ppre2\000"
.LASF14:
	.ascii	"__flashAcr\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF21:
	.ascii	"hsebyp\000"
.LASF34:
	.ascii	"__rccCfgr\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF63:
	.ascii	"__rccCsr\000"
.LASF45:
	.ascii	"tim1\000"
.LASF58:
	.ascii	"porrstf\000"
.LASF47:
	.ascii	"tim8\000"
.LASF50:
	.ascii	"tim9\000"
.LASF70:
	.ascii	"kvarThread\000"
.LASF81:
	.ascii	"cpuInit\000"
.LASF54:
	.ascii	"lsion\000"
.LASF64:
	.ascii	"tftId1\000"
.LASF65:
	.ascii	"tftId2\000"
.LASF66:
	.ascii	"tftId3\000"
.LASF18:
	.ascii	"hsical\000"
.LASF77:
	.ascii	"ival\000"
.LASF62:
	.ascii	"lpwrrstf\000"
.LASF73:
	.ascii	"prio\000"
.LASF10:
	.ascii	"latency\000"
.LASF78:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m3 -mthumb -gdwa"
	.ascii	"rf-2 -Os -std=gnu11 -ffunction-sections -fdata-sect"
	.ascii	"ions -fno-builtin -ffreestanding\000"
.LASF11:
	.ascii	"hlfcya\000"
.LASF57:
	.ascii	"pinrstf\000"
.LASF71:
	.ascii	"irqDetach\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF76:
	.ascii	"curr\000"
.LASF69:
	.ascii	"stackMain\000"
.LASF74:
	.ascii	"delay\000"
.LASF3:
	.ascii	"short int\000"
.LASF36:
	.ascii	"gpioa\000"
.LASF37:
	.ascii	"gpiob\000"
.LASF38:
	.ascii	"gpioc\000"
.LASF39:
	.ascii	"gpiod\000"
.LASF40:
	.ascii	"gpioe\000"
.LASF41:
	.ascii	"gpiof\000"
.LASF42:
	.ascii	"gpiog\000"
.LASF20:
	.ascii	"hserdy\000"
.LASF72:
	.ascii	"irqAttach\000"
.LASF19:
	.ascii	"hseon\000"
.LASF30:
	.ascii	"pllsrc\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"spi1\000"
.LASF43:
	.ascii	"adc1\000"
.LASF80:
	.ascii	"/Users/franky/Desktop/winprj/posix/\346\260\264\345"
	.ascii	"\272\212\000"
.LASF49:
	.ascii	"adc3\000"
.LASF12:
	.ascii	"prftbe\000"
.LASF29:
	.ascii	"adcpre\000"
.LASF48:
	.ascii	"usart1\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF13:
	.ascii	"prftbs\000"
.LASF68:
	.ascii	"stackIdle\000"
.LASF51:
	.ascii	"tim10\000"
.LASF52:
	.ascii	"tim11\000"
.LASF75:
	.ascii	"begin\000"
.LASF26:
	.ascii	"hpre\000"
.LASF33:
	.ascii	"usbpre\000"
.LASF15:
	.ascii	"hsion\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
