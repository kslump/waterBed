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
	.file	"begin.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.swoPutChar,"ax",%progbits
	.align	1
	.global	swoPutChar
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	swoPutChar, %function
swoPutChar:
.LFB0:
	.file 1 "src/source/begin.c"
	.loc 1 4 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 11 0
	ldr	r3, .L9
	ldr	r2, [r3]
	mov	r3, #16777216
	ldr	r3, [r3]
	tst	r2, r3
	beq	.L1
.LBB4:
.LBB5:
	.loc 1 12 0
	mov	r3, #-536870912
.L3:
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L3
	.loc 1 13 0
	strb	r0, [r3]
.L1:
.LBE5:
.LBE4:
	.loc 1 15 0
	bx	lr
.L10:
	.align	2
.L9:
	.word	-536809988
	.cfi_endproc
.LFE0:
	.size	swoPutChar, .-swoPutChar
	.section	.text.swoPutString,"ax",%progbits
	.align	1
	.global	swoPutString
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	swoPutString, %function
swoPutString:
.LFB1:
	.loc 1 17 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1:
	mov	r1, r0
	push	{r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LVL2:
.L12:
	.loc 1 19 0 discriminator 1
	ldrb	r0, [r1], #1	@ zero_extendqisi2
.LVL3:
	cbnz	r0, .L13
	.loc 1 20 0
	pop	{r3, pc}
.L13:
	.loc 1 19 0 discriminator 2
	bl	swoPutChar
.LVL4:
	b	.L12
	.cfi_endproc
.LFE1:
	.size	swoPutString, .-swoPutString
	.section	.text.hex2char,"ax",%progbits
	.align	1
	.global	hex2char
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hex2char, %function
hex2char:
.LFB2:
	.loc 1 22 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5:
	uxtb	r3, r0
	.loc 1 24 0
	cmp	r0, #9
	.loc 1 25 0
	ite	ls
	addls	r0, r3, #48
.LVL6:
	.loc 1 27 0
	addhi	r0, r3, #55
	uxtb	r0, r0
.LVL7:
	.loc 1 30 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	hex2char, .-hex2char
	.section	.text.hex2str,"ax",%progbits
	.align	1
	.global	hex2str
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hex2str, %function
hex2str:
.LFB3:
	.loc 1 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL8:
	push	{r0, r1, r2, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.loc 1 32 0
	mov	r2, r0
	.loc 1 34 0
	lsrs	r0, r0, #12
.LVL9:
	bl	hex2char
.LVL10:
	strb	r0, [sp]
	.loc 1 35 0
	ubfx	r0, r2, #8, #4
	bl	hex2char
.LVL11:
	strb	r0, [sp, #1]
	.loc 1 36 0
	ubfx	r0, r2, #4, #4
	bl	hex2char
.LVL12:
	strb	r0, [sp, #2]
	.loc 1 37 0
	and	r0, r2, #15
	bl	hex2char
.LVL13:
	.loc 1 38 0
	movw	r3, #8250
	strh	r3, [sp, #4]	@ movhi
	.loc 1 39 0
	movs	r3, #0
	.loc 1 37 0
	strb	r0, [sp, #3]
	.loc 1 41 0
	mov	r0, sp
	.loc 1 39 0
	strb	r3, [sp, #6]
	.loc 1 41 0
	bl	swoPutString
.LVL14:
	.loc 1 42 0
	add	sp, sp, #12
.LCFI2:
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE3:
	.size	hex2str, .-hex2str
	.section	.text.newLine,"ax",%progbits
	.align	1
	.global	newLine
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	newLine, %function
newLine:
.LFB4:
	.loc 1 44 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 46 0
	movs	r3, #10
	.loc 1 44 0
	push	{r0, r1, r2, lr}
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.loc 1 46 0
	add	r0, sp, #8
	strh	r3, [r0, #-4]!	@ movhi
	.loc 1 48 0
	bl	swoPutString
.LVL15:
	.loc 1 49 0
	add	sp, sp, #12
.LCFI4:
	.cfi_def_cfa_offset 4
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE4:
	.size	newLine, .-newLine
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB5:
	.loc 1 56 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 59 0
	bl	tftInit
.LVL16:
	.loc 1 65 0
	movs	r2, #16
	ldr	r0, .L24
	mov	r1, r2
	bl	tftBmpDraw
.LVL17:
	.loc 1 66 0
	movs	r2, #16
	movs	r1, #168
	ldr	r0, .L24
	bl	tftBmpDraw
.LVL18:
	.loc 1 67 0
	mov	r2, #260
	movs	r1, #16
	ldr	r0, .L24
	bl	tftBmpDraw
.LVL19:
	.loc 1 68 0
	mov	r2, #260
	movs	r1, #168
	ldr	r0, .L24
	bl	tftBmpDraw
.LVL20:
	.loc 1 71 0
	ldr	r6, .L24+4
	ldr	r5, .L24+8
	.loc 1 73 0
	ldr	r7, .L24+12
.L23:
	.loc 1 71 0
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrb	r0, [r6, r3]	@ zero_extendqisi2
	bl	tftReadId
.LVL21:
	.loc 1 72 0
	ldrb	r4, [r5]	@ zero_extendqisi2
	ldrb	r0, [r6, r4]	@ zero_extendqisi2
	bl	hex2str
.LVL22:
	.loc 1 73 0
	ldrh	r0, [r7]
	bl	hex2str
.LVL23:
	.loc 1 74 0
	ldr	r3, .L24+16
	.loc 1 77 0
	adds	r4, r4, #1
	.loc 1 74 0
	ldrh	r0, [r3]
	bl	hex2str
.LVL24:
	.loc 1 75 0
	ldr	r3, .L24+20
	.loc 1 77 0
	uxtb	r4, r4
	.loc 1 75 0
	ldrh	r0, [r3]
	bl	hex2str
.LVL25:
	.loc 1 76 0
	bl	newLine
.LVL26:
	.loc 1 77 0
	cmp	r4, #17
	it	hi
	movhi	r3, #0
	.loc 1 78 0
	mov	r0, #1000
	.loc 1 77 0
	ite	ls
	strbls	r4, [r5]
	strbhi	r3, [r5]
	.loc 1 78 0
	bl	kthreadSleep
.LVL27:
	.loc 1 71 0
	b	.L23
.L25:
	.align	2
.L24:
	.word	bmpGokon
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	tftId1
	.word	tftId2
	.word	tftId3
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.text.pinInit,"ax",%progbits
	.align	1
	.global	pinInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pinInit, %function
pinInit:
.LFB6:
	.loc 1 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 83 0
	movs	r0, #8
	.loc 1 82 0
	push	{r4, r5, lr}
.LCFI6:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 83 0
	ldr	r3, .L27
	.loc 1 99 0
	movs	r4, #1
	.loc 1 83 0
	ldr	r2, [r3]
	.loc 1 114 0
	ldr	r5, .L27+4
	.loc 1 83 0
	bfi	r2, r0, #0, #4
	str	r2, [r3]
	.loc 1 85 0
	movs	r2, #3
	ldr	r1, [r3]
	bfi	r1, r2, #4, #4
	str	r1, [r3]
	.loc 1 86 0
	ldr	r1, [r3]
	bfi	r1, r2, #8, #4
	str	r1, [r3]
	.loc 1 87 0
	ldr	r1, [r3]
	bfi	r1, r2, #12, #4
	str	r1, [r3]
	.loc 1 88 0
	ldr	r1, [r3]
	bfi	r1, r2, #16, #4
	str	r1, [r3]
	.loc 1 89 0
	ldr	r1, [r3]
	bfi	r1, r2, #20, #4
	str	r1, [r3]
	.loc 1 90 0
	ldr	r1, [r3]
	bfi	r1, r2, #24, #4
	str	r1, [r3]
	.loc 1 91 0
	ldr	r1, [r3]
	bfi	r1, r2, #28, #4
	str	r1, [r3]
	.loc 1 93 0
	ldr	r1, [r3, #4]
	bfi	r1, r2, #0, #4
	str	r1, [r3, #4]
	.loc 1 94 0
	ldr	r1, [r3, #4]
	bfi	r1, r2, #4, #4
	str	r1, [r3, #4]
	.loc 1 95 0
	ldr	r1, [r3, #4]
	bfi	r1, r2, #8, #4
	str	r1, [r3, #4]
	.loc 1 96 0
	ldr	r1, [r3, #4]
	bfi	r1, r2, #12, #4
	str	r1, [r3, #4]
	.loc 1 97 0
	ldr	r1, [r3, #4]
	bfi	r1, r2, #16, #4
	str	r1, [r3, #4]
	.loc 1 98 0
	ldr	r1, [r3, #4]
	bfi	r1, r0, #28, #4
	str	r1, [r3, #4]
	.loc 1 99 0
	ldr	r3, .L27+8
	str	r4, [r3]
	.loc 1 101 0
	ldr	r3, .L27+12
	ldr	r1, [r3]
	bfi	r1, r2, #0, #4
	str	r1, [r3]
	.loc 1 102 0
	ldr	r1, [r3]
	bfi	r1, r2, #4, #4
	str	r1, [r3]
	.loc 1 103 0
	ldr	r1, [r3]
	bfi	r1, r2, #8, #4
	str	r1, [r3]
	.loc 1 104 0
	ldr	r1, [r3]
	bfi	r1, r0, #12, #4
	str	r1, [r3]
	.loc 1 105 0
	ldr	r1, .L27+16
	str	r4, [r1]
	.loc 1 106 0
	ldr	r1, [r3]
	bfi	r1, r0, #16, #4
	str	r1, [r3]
	.loc 1 107 0
	ldr	r1, .L27+20
	str	r4, [r1]
	.loc 1 109 0
	ldr	r1, [r3]
	bfi	r1, r0, #20, #4
	str	r1, [r3]
	.loc 1 110 0
	ldr	r1, [r3]
	bfi	r1, r0, #24, #4
	str	r1, [r3]
	.loc 1 111 0
	ldr	r1, [r3]
	bfi	r1, r2, #28, #4
	str	r1, [r3]
	.loc 1 113 0
	ldr	r1, .L27+24
	ldr	r3, [r1]
	bfi	r3, r0, #0, #4
	str	r3, [r1]
	.loc 1 114 0
	movs	r3, #0
	str	r3, [r5]
	.loc 1 115 0
	ldr	r5, [r1]
	bfi	r5, r0, #4, #4
	str	r5, [r1]
	.loc 1 116 0
	ldr	r5, .L27+28
	str	r3, [r5]
	.loc 1 118 0
	ldr	r5, [r1]
	bfi	r5, r2, #8, #4
	str	r5, [r1]
	.loc 1 119 0
	ldr	r5, [r1]
	bfi	r5, r2, #12, #4
	str	r5, [r1]
	.loc 1 120 0
	ldr	r5, [r1]
	bfi	r5, r2, #16, #4
	str	r5, [r1]
	.loc 1 121 0
	ldr	r5, [r1]
	bfi	r5, r2, #20, #4
	str	r5, [r1]
	.loc 1 122 0
	ldr	r5, [r1]
	bfi	r5, r2, #24, #4
	str	r5, [r1]
	.loc 1 123 0
	ldr	r5, [r1]
	bfi	r5, r2, #28, #4
	.loc 1 125 0
	ldr	r2, .L27+32
	.loc 1 123 0
	str	r5, [r1]
	.loc 1 125 0
	ldr	r1, [r2]
	bfi	r1, r0, #20, #4
	str	r1, [r2]
	.loc 1 126 0
	ldr	r1, .L27+36
	str	r3, [r1]
	.loc 1 127 0
	ldr	r1, [r2]
	bfi	r1, r0, #24, #4
	str	r1, [r2]
	.loc 1 128 0
	ldr	r1, .L27+40
	str	r3, [r1]
	.loc 1 129 0
	ldr	r1, [r2]
	bfi	r1, r0, #28, #4
	str	r1, [r2]
	.loc 1 130 0
	ldr	r2, .L27+44
	str	r3, [r2]
	.loc 1 131 0
	ldr	r2, .L27+48
	ldr	r1, [r2]
	bfi	r1, r0, #0, #4
	str	r1, [r2]
	.loc 1 132 0
	ldr	r1, .L27+52
	str	r3, [r1]
	.loc 1 133 0
	ldr	r1, [r2]
	bfi	r1, r0, #4, #4
	str	r1, [r2]
	.loc 1 134 0
	ldr	r2, .L27+56
	str	r3, [r2]
	.loc 1 136 0
	sub	r2, r2, #65280
	subs	r2, r2, #220
	str	r3, [r2]
	.loc 1 137 0
	str	r3, [r2, #4]
	.loc 1 138 0
	str	r3, [r2, #-32]
	.loc 1 139 0
	str	r3, [r2, #8]
	.loc 1 140 0
	str	r3, [r2, #-36]
	.loc 1 141 0
	str	r3, [r2, #12]
	.loc 1 142 0
	str	r3, [r2, #-40]
	.loc 1 143 0
	str	r3, [r2, #16]
	.loc 1 144 0
	sub	r2, r2, #32768
	subs	r2, r2, #12
	str	r3, [r2]
	.loc 1 145 0
	add	r2, r2, #32768
	adds	r2, r2, #32
	str	r3, [r2]
	.loc 1 146 0
	sub	r2, r2, #32768
	subs	r2, r2, #36
	str	r3, [r2]
	.loc 1 147 0
	str	r3, [r2, #8]
	.loc 1 148 0
	str	r3, [r2, #-4]
	.loc 1 149 0
	str	r3, [r2, #12]
	.loc 1 150 0
	str	r3, [r2, #-8]
	.loc 1 151 0
	str	r3, [r2, #16]
	.loc 1 153 0
	ldr	r3, .L27+60
	str	r4, [r3]
	.loc 1 154 0
	str	r4, [r3, #32]
	.loc 1 155 0
	str	r4, [r3, #-4]
	.loc 1 156 0
	str	r4, [r3, #36]
	.loc 1 157 0
	str	r4, [r3, #-8]
	.loc 1 158 0
	pop	{r4, r5, pc}
.L28:
	.align	2
.L27:
	.word	1073809408
	.word	1109492128
	.word	1109459388
	.word	1073810432
	.word	1109492108
	.word	1109492112
	.word	1073810436
	.word	1109492132
	.word	1073811460
	.word	1109524916
	.word	1109524920
	.word	1109524924
	.word	1073812480
	.word	1109557632
	.word	1109557636
	.word	1109459340
	.cfi_endproc
.LFE6:
	.size	pinInit, .-pinInit
	.comm	tftId3,2,2
	.comm	tftId2,2,2
	.comm	tftId1,2,2
	.section	.bss.cmd.4178,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	cmd.4178, %object
	.size	cmd.4178, 1
cmd.4178:
	.space	1
	.section	.rodata.commands,"a",%progbits
	.set	.LANCHOR0,. + 0
	.type	commands, %object
	.size	commands, 18
commands:
	.byte	4
	.byte	5
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	69
	.byte	82
	.byte	84
	.byte	86
	.byte	95
	.byte	104
	.byte	-38
	.byte	-37
	.byte	-36
	.text
.Letext0:
	.file 2 "inc/system.h"
	.file 3 "inc/stm32.h"
	.file 4 "inc/include.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x54e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
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
	.2byte	0x18b
	.4byte	0x121
	.uleb128 0x7
	.ascii	"p00\000"
	.byte	0x3
	.2byte	0x18c
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p01\000"
	.byte	0x3
	.2byte	0x18d
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p02\000"
	.byte	0x3
	.2byte	0x18e
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p03\000"
	.byte	0x3
	.2byte	0x18f
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p04\000"
	.byte	0x3
	.2byte	0x190
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p05\000"
	.byte	0x3
	.2byte	0x191
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p06\000"
	.byte	0x3
	.2byte	0x192
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p07\000"
	.byte	0x3
	.2byte	0x193
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x87
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x3
	.2byte	0x194
	.4byte	0x121
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.2byte	0x196
	.4byte	0x1cc
	.uleb128 0x7
	.ascii	"p08\000"
	.byte	0x3
	.2byte	0x197
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p09\000"
	.byte	0x3
	.2byte	0x198
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p10\000"
	.byte	0x3
	.2byte	0x199
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p11\000"
	.byte	0x3
	.2byte	0x19a
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p12\000"
	.byte	0x3
	.2byte	0x19b
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p13\000"
	.byte	0x3
	.2byte	0x19c
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p14\000"
	.byte	0x3
	.2byte	0x19d
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"p15\000"
	.byte	0x3
	.2byte	0x19e
	.4byte	0x6e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	0x132
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x19f
	.4byte	0x1cc
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x4
	.byte	0x5a
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tftId1
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x4
	.byte	0x5b
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tftId2
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5c
	.4byte	0x55
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tftId3
	.uleb128 0xb
	.4byte	0x49
	.4byte	0x21e
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.4byte	0x213
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x4
	.byte	0x5e
	.4byte	0x21e
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x3e
	.4byte	0x240
	.uleb128 0xe
	.4byte	0x29
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x33
	.4byte	0x230
	.byte	0x5
	.byte	0x3
	.4byte	commands
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST7
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF17
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x35c
	.uleb128 0x12
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x39
	.4byte	0x3e
	.byte	0x5
	.byte	0x3
	.4byte	cmd.4178
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x51d
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x52a
	.4byte	0x2b3
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x40
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.4byte	.LVL18
	.4byte	0x52a
	.4byte	0x2cc
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xa8
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0x52a
	.4byte	0x2e6
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x40
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.2byte	0x104
	.byte	0
	.uleb128 0x14
	.4byte	.LVL20
	.4byte	0x52a
	.4byte	0x301
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x8
	.byte	0xa8
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.byte	0xa
	.2byte	0x104
	.byte	0
	.uleb128 0x13
	.4byte	.LVL21
	.4byte	0x537
	.uleb128 0x14
	.4byte	.LVL22
	.4byte	0x3a5
	.4byte	0x326
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL23
	.4byte	0x3a5
	.uleb128 0x13
	.4byte	.LVL24
	.4byte	0x3a5
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x3a5
	.uleb128 0x13
	.4byte	.LVL26
	.4byte	0x35c
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0x544
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x395
	.uleb128 0x12
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x395
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0x48f
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x3e
	.4byte	0x3a5
	.uleb128 0xe
	.4byte	0x29
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x447
	.uleb128 0x17
	.ascii	"hex\000"
	.byte	0x1
	.byte	0x20
	.4byte	0x55
	.4byte	.LLST4
	.uleb128 0x12
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x447
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LVL10
	.4byte	0x457
	.4byte	0x3f2
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x457
	.4byte	0x409
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.4byte	.LVL12
	.4byte	0x457
	.4byte	0x420
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x457
	.4byte	0x436
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x72
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0x48f
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x3e
	.4byte	0x457
	.uleb128 0xe
	.4byte	0x29
	.byte	0x7
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.4byte	0x3e
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x48f
	.uleb128 0x17
	.ascii	"hex\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x55
	.4byte	.LLST2
	.uleb128 0x12
	.ascii	"c\000"
	.byte	0x1
	.byte	0x17
	.4byte	0x3e
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF20
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x4ce
	.uleb128 0x17
	.ascii	"str\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x4ce
	.4byte	.LLST1
	.uleb128 0x12
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x3e
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LVL4
	.4byte	0x4d4
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.4byte	0x4ed
	.uleb128 0x1b
	.ascii	"ch\000"
	.byte	0x1
	.byte	0x4
	.4byte	0x3e
	.byte	0
	.uleb128 0x1c
	.4byte	0x4d4
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x51d
	.uleb128 0x1d
	.4byte	0x4e2
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.4byte	0x4d4
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x1f
	.4byte	0x4e2
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3f
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x47
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x4
	.byte	0x44
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x2
	.byte	0x3d
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LFB6
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB5
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB4
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB3
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"commands\000"
.LASF29:
	.ascii	"hex2char\000"
.LASF26:
	.ascii	"src/source/begin.c\000"
.LASF18:
	.ascii	"newLine\000"
.LASF19:
	.ascii	"hex2str\000"
.LASF27:
	.ascii	"/Users/franky/Desktop/github/WaterBed/program/displ"
	.ascii	"ay\000"
.LASF11:
	.ascii	"__gpioCrH\000"
.LASF20:
	.ascii	"swoPutString\000"
.LASF10:
	.ascii	"__gpioCrL\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF30:
	.ascii	"swoPutChar\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF15:
	.ascii	"bmpGokon\000"
.LASF25:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m3 -mthumb -gdwa"
	.ascii	"rf-2 -Os -std=gnu11 -ffunction-sections -fdata-sect"
	.ascii	"ions -fno-builtin -ffreestanding\000"
.LASF3:
	.ascii	"short int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF17:
	.ascii	"main\000"
.LASF28:
	.ascii	"pinInit\000"
.LASF22:
	.ascii	"tftBmpDraw\000"
.LASF23:
	.ascii	"tftReadId\000"
.LASF8:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"kthreadSleep\000"
.LASF12:
	.ascii	"tftId1\000"
.LASF13:
	.ascii	"tftId2\000"
.LASF14:
	.ascii	"tftId3\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF21:
	.ascii	"tftInit\000"
.LASF2:
	.ascii	"signed char\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
