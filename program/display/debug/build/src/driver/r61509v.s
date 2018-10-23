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
	.file	"r61509v.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.tftWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftWrite, %function
tftWrite:
.LFB2:
	.file 1 "src/driver/r61509v.c"
	.loc 1 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 59 0
	movs	r2, #0
	.loc 1 60 0
	ldr	r1, .L2
	.loc 1 59 0
	ldr	r3, .L2+4
	.loc 1 58 0
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 60 0
	lsrs	r4, r0, #15
	.loc 1 59 0
	str	r2, [r3]
	.loc 1 60 0
	str	r4, [r1]
	.loc 1 61 0
	ubfx	r4, r0, #14, #1
	str	r4, [r1, #4]
	.loc 1 62 0
	ubfx	r4, r0, #13, #1
	str	r4, [r1, #-32]
	.loc 1 63 0
	ubfx	r4, r0, #12, #1
	str	r4, [r1, #8]
	.loc 1 64 0
	ubfx	r4, r0, #11, #1
	str	r4, [r1, #-36]
	.loc 1 65 0
	ubfx	r4, r0, #10, #1
	str	r4, [r1, #12]
	.loc 1 66 0
	ubfx	r4, r0, #9, #1
	str	r4, [r1, #-40]
	.loc 1 67 0
	ubfx	r4, r0, #8, #1
	str	r4, [r1, #16]
	.loc 1 68 0
	sub	r1, r1, #32768
	ubfx	r4, r0, #7, #1
	subs	r1, r1, #12
	str	r4, [r1]
	.loc 1 69 0
	add	r1, r1, #32768
	ubfx	r4, r0, #6, #1
	adds	r1, r1, #32
	str	r4, [r1]
	.loc 1 70 0
	sub	r1, r1, #32768
	subs	r1, r1, #36
	ubfx	r4, r0, #5, #1
	str	r4, [r1]
	.loc 1 71 0
	ubfx	r4, r0, #4, #1
	str	r4, [r1, #8]
	.loc 1 72 0
	ubfx	r4, r0, #3, #1
	str	r4, [r1, #-4]
	.loc 1 73 0
	ubfx	r4, r0, #2, #1
	str	r4, [r1, #12]
	.loc 1 74 0
	ubfx	r4, r0, #1, #1
	.loc 1 75 0
	and	r0, r0, #1
.LVL1:
	.loc 1 74 0
	str	r4, [r1, #-8]
	.loc 1 75 0
	str	r0, [r1, #16]
	.loc 1 76 0
	str	r2, [r1, #-16]
	.loc 1 77 0
	movs	r2, #1
	str	r2, [r1, #-16]
	.loc 1 78 0
	str	r2, [r3]
	.loc 1 79 0
	pop	{r4, pc}
.L3:
	.align	2
.L2:
	.word	1109492136
	.word	1109459332
	.cfi_endproc
.LFE2:
	.size	tftWrite, .-tftWrite
	.section	.text.tftRegWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftRegWrite, %function
tftRegWrite:
.LFB4:
	.loc 1 116 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 117 0
	movs	r2, #0
	ldr	r3, .L5
	str	r2, [r3]
	.loc 1 118 0
	b	tftWrite
.LVL3:
.L6:
	.align	2
.L5:
	.word	1109459376
	.cfi_endproc
.LFE4:
	.size	tftRegWrite, .-tftRegWrite
	.section	.text.tftDatWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftDatWrite, %function
tftDatWrite:
.LFB5:
	.loc 1 121 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 122 0
	movs	r2, #1
	ldr	r3, .L8
	str	r2, [r3]
	.loc 1 123 0
	b	tftWrite
.LVL5:
.L9:
	.align	2
.L8:
	.word	1109459376
	.cfi_endproc
.LFE5:
	.size	tftDatWrite, .-tftDatWrite
	.section	.text.tftPinRead,"ax",%progbits
	.align	1
	.global	tftPinRead
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftPinRead, %function
tftPinRead:
.LFB0:
	.loc 1 3 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 4 0
	movs	r3, #8
	ldr	r2, .L11
	ldr	r1, [r2]
	bfi	r1, r3, #16, #4
	str	r1, [r2]
	.loc 1 5 0
	ldr	r1, [r2]
	bfi	r1, r3, #20, #4
	str	r1, [r2]
	.loc 1 6 0
	ldr	r1, [r2]
	bfi	r1, r3, #24, #4
	str	r1, [r2]
	.loc 1 7 0
	ldr	r1, [r2]
	bfi	r1, r3, #28, #4
	str	r1, [r2]
	.loc 1 8 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #0, #4
	str	r1, [r2, #4]
	.loc 1 9 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #4, #4
	str	r1, [r2, #4]
	.loc 1 10 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #8, #4
	str	r1, [r2, #4]
	.loc 1 11 0
	add	r2, r2, #1024
	ldr	r1, [r2]
	bfi	r1, r3, #0, #4
	str	r1, [r2]
	.loc 1 12 0
	ldr	r1, [r2]
	bfi	r1, r3, #4, #4
	str	r1, [r2]
	.loc 1 13 0
	ldr	r1, [r2]
	bfi	r1, r3, #8, #4
	str	r1, [r2]
	.loc 1 14 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #8, #4
	str	r1, [r2, #4]
	.loc 1 15 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #12, #4
	str	r1, [r2, #4]
	.loc 1 16 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #16, #4
	str	r1, [r2, #4]
	.loc 1 17 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #20, #4
	str	r1, [r2, #4]
	.loc 1 18 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #24, #4
	str	r1, [r2, #4]
	.loc 1 19 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #28, #4
	.loc 1 21 0
	movs	r3, #1
	.loc 1 19 0
	str	r1, [r2, #4]
	.loc 1 21 0
	ldr	r2, .L11+4
	str	r3, [r2]
	.loc 1 22 0
	str	r3, [r2, #4]
	.loc 1 23 0
	str	r3, [r2, #-32]
	.loc 1 24 0
	str	r3, [r2, #8]
	.loc 1 25 0
	str	r3, [r2, #-36]
	.loc 1 26 0
	str	r3, [r2, #12]
	.loc 1 27 0
	str	r3, [r2, #-40]
	.loc 1 28 0
	str	r3, [r2, #16]
	.loc 1 29 0
	sub	r2, r2, #32768
	subs	r2, r2, #12
	str	r3, [r2]
	.loc 1 30 0
	add	r2, r2, #32768
	adds	r2, r2, #32
	str	r3, [r2]
	.loc 1 31 0
	sub	r2, r2, #32768
	subs	r2, r2, #36
	str	r3, [r2]
	.loc 1 32 0
	str	r3, [r2, #8]
	.loc 1 33 0
	str	r3, [r2, #-4]
	.loc 1 34 0
	str	r3, [r2, #12]
	.loc 1 35 0
	str	r3, [r2, #-8]
	.loc 1 36 0
	str	r3, [r2, #16]
	.loc 1 37 0
	bx	lr
.L12:
	.align	2
.L11:
	.word	1073809408
	.word	1109492136
	.cfi_endproc
.LFE0:
	.size	tftPinRead, .-tftPinRead
	.section	.text.tftPinWrite,"ax",%progbits
	.align	1
	.global	tftPinWrite
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftPinWrite, %function
tftPinWrite:
.LFB1:
	.loc 1 39 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 40 0
	movs	r3, #3
	ldr	r2, .L14
	ldr	r1, [r2]
	bfi	r1, r3, #16, #4
	str	r1, [r2]
	.loc 1 41 0
	ldr	r1, [r2]
	bfi	r1, r3, #20, #4
	str	r1, [r2]
	.loc 1 42 0
	ldr	r1, [r2]
	bfi	r1, r3, #24, #4
	str	r1, [r2]
	.loc 1 43 0
	ldr	r1, [r2]
	bfi	r1, r3, #28, #4
	str	r1, [r2]
	.loc 1 44 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #0, #4
	str	r1, [r2, #4]
	.loc 1 45 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #4, #4
	str	r1, [r2, #4]
	.loc 1 46 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #8, #4
	str	r1, [r2, #4]
	.loc 1 47 0
	add	r2, r2, #1024
	ldr	r1, [r2]
	bfi	r1, r3, #0, #4
	str	r1, [r2]
	.loc 1 48 0
	ldr	r1, [r2]
	bfi	r1, r3, #4, #4
	str	r1, [r2]
	.loc 1 49 0
	ldr	r1, [r2]
	bfi	r1, r3, #8, #4
	str	r1, [r2]
	.loc 1 50 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #8, #4
	str	r1, [r2, #4]
	.loc 1 51 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #12, #4
	str	r1, [r2, #4]
	.loc 1 52 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #16, #4
	str	r1, [r2, #4]
	.loc 1 53 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #20, #4
	str	r1, [r2, #4]
	.loc 1 54 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #24, #4
	str	r1, [r2, #4]
	.loc 1 55 0
	ldr	r1, [r2, #4]
	bfi	r1, r3, #28, #4
	str	r1, [r2, #4]
	.loc 1 56 0
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073809408
	.cfi_endproc
.LFE1:
	.size	tftPinWrite, .-tftPinWrite
	.section	.text.tftRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftRead, %function
tftRead:
.LFB3:
	.loc 1 81 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL6:
	push	{r4, r5, r6, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 85 0
	bl	tftPinRead
.LVL7:
	.loc 1 86 0
	movs	r2, #1
	ldr	r3, .L77
	.loc 1 87 0
	ldr	r5, .L77+4
	.loc 1 86 0
	str	r2, [r3]
	.loc 1 87 0
	movs	r3, #0
	.loc 1 88 0
	ldr	r0, .L77+8
	.loc 1 87 0
	str	r3, [r5]
	.loc 1 88 0
	str	r3, [r0]
	.loc 1 90 0
	ldr	r3, .L77+12
	ldr	r2, [r3]
.LVL8:
	.loc 1 91 0
	add	r3, r3, #1024
	.loc 1 83 0
	ubfx	r4, r2, #10, #1
	.loc 1 93 0
	lsls	r1, r2, #27
	it	mi
	orrmi	r4, r4, #2
	.loc 1 94 0
	lsls	r6, r2, #22
	it	mi
	orrmi	r4, r4, #4
	.loc 1 95 0
	lsls	r1, r2, #26
	it	mi
	orrmi	r4, r4, #8
	.loc 1 91 0
	ldr	r3, [r3]
.LVL9:
	.loc 1 96 0
	lsls	r6, r2, #23
	it	mi
	orrmi	r4, r4, #16
.LVL10:
	.loc 1 97 0
	lsls	r1, r2, #25
	it	mi
	orrmi	r4, r4, #32
.LVL11:
	.loc 1 98 0
	lsls	r6, r3, #16
	it	mi
	orrmi	r4, r4, #64
.LVL12:
	.loc 1 99 0
	lsls	r1, r2, #24
	it	mi
	orrmi	r4, r4, #128
.LVL13:
	.loc 1 100 0
	lsls	r2, r3, #17
.LVL14:
	it	mi
	orrmi	r4, r4, #256
.LVL15:
	.loc 1 101 0
	lsls	r6, r3, #31
	it	mi
	orrmi	r4, r4, #512
.LVL16:
	.loc 1 102 0
	lsls	r1, r3, #18
	it	mi
	orrmi	r4, r4, #1024
.LVL17:
	.loc 1 103 0
	lsls	r2, r3, #30
	it	mi
	orrmi	r4, r4, #2048
.LVL18:
	.loc 1 104 0
	lsls	r6, r3, #19
	.loc 1 108 0
	mov	r6, #1
	.loc 1 104 0
	it	mi
	orrmi	r4, r4, #4096
.LVL19:
	.loc 1 105 0
	lsls	r1, r3, #29
	it	mi
	orrmi	r4, r4, #8192
.LVL20:
	.loc 1 106 0
	lsls	r2, r3, #20
	it	mi
	orrmi	r4, r4, #16384
.LVL21:
	.loc 1 107 0
	lsls	r3, r3, #21
.LVL22:
	it	mi
	orrmi	r4, r4, #32768
.LVL23:
	.loc 1 108 0
	str	r6, [r0]
	.loc 1 109 0
	movs	r0, #2
	bl	delay
.LVL24:
	.loc 1 110 0
	bl	tftPinWrite
.LVL25:
	.loc 1 111 0
	str	r6, [r5]
	.loc 1 114 0
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.LVL26:
.L78:
	.align	2
.L77:
	.word	1109459376
	.word	1109459332
	.word	1109459372
	.word	1073809416
	.cfi_endproc
.LFE3:
	.size	tftRead, .-tftRead
	.section	.text.tftSetPos,"ax",%progbits
	.align	1
	.global	tftSetPos
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftSetPos, %function
tftSetPos:
.LFB6:
	.loc 1 140 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL27:
	push	{r3, r4, r5, lr}
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 140 0
	mov	r5, r0
	mov	r4, r1
	.loc 1 141 0
	movs	r0, #42
.LVL28:
	bl	tftRegWrite
.LVL29:
	.loc 1 142 0
	lsrs	r0, r5, #8
	bl	tftDatWrite
.LVL30:
	.loc 1 143 0
	uxtb	r0, r5
	bl	tftDatWrite
.LVL31:
	.loc 1 144 0
	movs	r0, #1
	bl	tftDatWrite
.LVL32:
	.loc 1 145 0
	movs	r0, #63
	bl	tftDatWrite
.LVL33:
	.loc 1 146 0
	movs	r0, #43
	bl	tftRegWrite
.LVL34:
	.loc 1 147 0
	lsrs	r0, r4, #8
	bl	tftDatWrite
.LVL35:
	.loc 1 148 0
	uxtb	r0, r4
	bl	tftDatWrite
.LVL36:
	.loc 1 149 0
	movs	r0, #1
	bl	tftDatWrite
.LVL37:
	.loc 1 151 0
	pop	{r3, r4, r5, lr}
.LCFI3:
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 150 0
	movs	r0, #223
	b	tftDatWrite
.LVL38:
	.cfi_endproc
.LFE6:
	.size	tftSetPos, .-tftSetPos
	.section	.text.tftSetWindow,"ax",%progbits
	.align	1
	.global	tftSetWindow
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftSetWindow, %function
tftSetWindow:
.LFB7:
	.loc 1 153 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL39:
	push	{r3, r4, r5, r6, r7, lr}
.LCFI4:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 156 0
	ldrh	r7, [r0]
.LVL40:
	.loc 1 158 0
	ldrh	r5, [r0, #4]
	.loc 1 157 0
	ldrh	r6, [r0, #2]
.LVL41:
	.loc 1 159 0
	ldrh	r4, [r0, #6]
	.loc 1 158 0
	add	r5, r5, r7
	.loc 1 161 0
	movs	r0, #42
.LVL42:
	bl	tftRegWrite
.LVL43:
	.loc 1 158 0
	subs	r5, r5, #1
	.loc 1 162 0
	lsrs	r0, r7, #8
	.loc 1 158 0
	uxth	r5, r5
.LVL44:
	.loc 1 162 0
	bl	tftDatWrite
.LVL45:
	.loc 1 163 0
	uxtb	r0, r7
	bl	tftDatWrite
.LVL46:
	.loc 1 164 0
	lsrs	r0, r5, #8
	bl	tftDatWrite
.LVL47:
	.loc 1 165 0
	uxtb	r0, r5
	bl	tftDatWrite
.LVL48:
	.loc 1 159 0
	add	r4, r4, r6
	.loc 1 166 0
	movs	r0, #43
	bl	tftRegWrite
.LVL49:
	.loc 1 159 0
	subs	r4, r4, #1
	.loc 1 167 0
	lsrs	r0, r6, #8
	.loc 1 159 0
	uxth	r4, r4
.LVL50:
	.loc 1 167 0
	bl	tftDatWrite
.LVL51:
	.loc 1 168 0
	uxtb	r0, r6
	bl	tftDatWrite
.LVL52:
	.loc 1 169 0
	lsrs	r0, r4, #8
	bl	tftDatWrite
.LVL53:
	.loc 1 170 0
	uxtb	r0, r4
	.loc 1 171 0
	pop	{r3, r4, r5, r6, r7, lr}
.LCFI5:
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL54:
	.loc 1 170 0
	b	tftDatWrite
.LVL55:
	.cfi_endproc
.LFE7:
	.size	tftSetWindow, .-tftSetWindow
	.section	.text.lcdClear,"ax",%progbits
	.align	1
	.global	lcdClear
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	lcdClear, %function
lcdClear:
.LFB8:
	.loc 1 173 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL56:
	.loc 1 174 0
	movs	r1, #0
	.loc 1 173 0
	push	{r3, r4, r5, lr}
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 173 0
	mov	r5, r0
	.loc 1 174 0
	mov	r0, r1
.LVL57:
	bl	tftSetPos
.LVL58:
	.loc 1 175 0
	movs	r0, #44
	bl	tftRegWrite
.LVL59:
	mov	r4, #153600
.LVL60:
.L82:
.LBB2:
	.loc 1 176 0 discriminator 3
	mov	r0, r5
	bl	tftDatWrite
.LVL61:
	subs	r4, r4, #1
.LVL62:
	bne	.L82
.LBE2:
	.loc 1 177 0
	pop	{r3, r4, r5, pc}
	.cfi_endproc
.LFE8:
	.size	lcdClear, .-lcdClear
	.section	.text.lcdClear2,"ax",%progbits
	.align	1
	.global	lcdClear2
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	lcdClear2, %function
lcdClear2:
.LFB9:
	.loc 1 179 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 180 0
	movs	r1, #0
	.loc 1 179 0
	push	{r4, lr}
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 180 0
	mov	r0, r1
	bl	tftSetPos
.LVL63:
	.loc 1 181 0
	movs	r0, #44
	bl	tftRegWrite
.LVL64:
	mov	r4, #38400
.LVL65:
.L85:
.LBB3:
	.loc 1 182 0 discriminator 3
	mov	r0, #63488
	bl	tftDatWrite
.LVL66:
	subs	r4, r4, #1
.LVL67:
	bne	.L85
	mov	r4, #38400
.LVL68:
.L86:
.LBE3:
.LBB4:
	.loc 1 183 0 discriminator 3
	mov	r0, #2016
	bl	tftDatWrite
.LVL69:
	subs	r4, r4, #1
.LVL70:
	bne	.L86
	mov	r4, #38400
.LVL71:
.L87:
.LBE4:
.LBB5:
	.loc 1 184 0 discriminator 3
	movs	r0, #31
	bl	tftDatWrite
.LVL72:
	subs	r4, r4, #1
.LVL73:
	bne	.L87
	mov	r4, #38400
.LVL74:
.L88:
.LBE5:
.LBB6:
	.loc 1 185 0 discriminator 3
	movw	r0, #2047
	bl	tftDatWrite
.LVL75:
	subs	r4, r4, #1
.LVL76:
	bne	.L88
.LBE6:
	.loc 1 186 0
	pop	{r4, pc}
	.cfi_endproc
.LFE9:
	.size	lcdClear2, .-lcdClear2
	.section	.text.tftInit,"ax",%progbits
	.align	1
	.global	tftInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftInit, %function
tftInit:
.LFB10:
	.loc 1 188 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
.LCFI8:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 190 0
	movs	r4, #1
	.loc 1 192 0
	movs	r6, #0
	.loc 1 190 0
	ldr	r5, .L94
	.loc 1 191 0
	movs	r0, #10
	.loc 1 190 0
	str	r4, [r5]
	.loc 1 191 0
	bl	kthreadSleep
.LVL77:
	.loc 1 192 0
	str	r6, [r5]
	.loc 1 193 0
	movs	r0, #10
	bl	kthreadSleep
.LVL78:
	.loc 1 194 0
	str	r4, [r5]
	.loc 1 195 0
	movs	r0, #120
	bl	kthreadSleep
.LVL79:
	.loc 1 198 0
	mov	r0, r4
	bl	tftRegWrite
.LVL80:
	.loc 1 199 0
	movs	r0, #120
	bl	kthreadSleep
.LVL81:
	.loc 1 202 0
	movs	r0, #33
	bl	tftRegWrite
.LVL82:
	.loc 1 204 0
	movs	r0, #54
	bl	tftRegWrite
.LVL83:
	.loc 1 206 0
	movs	r0, #76
	bl	tftDatWrite
.LVL84:
	.loc 1 208 0
	movs	r0, #58
	bl	tftRegWrite
.LVL85:
	.loc 1 209 0
	movs	r0, #85
	bl	tftDatWrite
.LVL86:
	.loc 1 211 0
	mov	r1, r6
	mov	r0, r6
	bl	tftSetPos
.LVL87:
	.loc 1 238 0
	movs	r0, #17
	bl	tftRegWrite
.LVL88:
	.loc 1 239 0
	movs	r0, #120
	bl	kthreadSleep
.LVL89:
	.loc 1 240 0
	movs	r0, #41
	bl	tftRegWrite
.LVL90:
	.loc 1 244 0
	pop	{r4, r5, r6, lr}
.LCFI9:
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 243 0
	movw	r0, #65535
	b	lcdClear
.LVL91:
.L95:
	.align	2
.L94:
	.word	1109459340
	.cfi_endproc
.LFE10:
	.size	tftInit, .-tftInit
	.section	.text.tftReadMem,"ax",%progbits
	.align	1
	.global	tftReadMem
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftReadMem, %function
tftReadMem:
.LFB11:
	.loc 1 246 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 249 0
	movs	r0, #46
	bl	tftRegWrite
.LVL92:
	.loc 1 250 0
	bl	tftRead
.LVL93:
	.loc 1 254 0
	pop	{r3, lr}
.LCFI11:
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 251 0
	b	tftRead
.LVL94:
	.cfi_endproc
.LFE11:
	.size	tftReadMem, .-tftReadMem
	.section	.text.tftWriteMem,"ax",%progbits
	.align	1
	.global	tftWriteMem
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftWriteMem, %function
tftWriteMem:
.LFB12:
	.loc 1 256 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL95:
	push	{r4, lr}
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 256 0
	mov	r4, r0
	.loc 1 257 0
	movs	r0, #44
.LVL96:
	bl	tftRegWrite
.LVL97:
	.loc 1 258 0
	mov	r0, r4
	.loc 1 259 0
	pop	{r4, lr}
.LCFI13:
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 258 0
	b	tftDatWrite
.LVL98:
	.cfi_endproc
.LFE12:
	.size	tftWriteMem, .-tftWriteMem
	.section	.text.tftReadId,"ax",%progbits
	.align	1
	.global	tftReadId
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftReadId, %function
tftReadId:
.LFB13:
	.loc 1 261 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL99:
	push	{r4, lr}
.LCFI14:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 262 0
	bl	tftRegWrite
.LVL100:
	.loc 1 263 0
	bl	tftRead
.LVL101:
	.loc 1 264 0
	bl	tftRead
.LVL102:
	.loc 1 265 0
	ldr	r4, .L99
	lsls	r0, r0, #8
	strh	r0, [r4]	@ movhi
	.loc 1 266 0
	bl	tftRead
.LVL103:
	ldrh	r3, [r4]
	orrs	r0, r0, r3
	strh	r0, [r4]	@ movhi
	.loc 1 267 0
	bl	tftRead
.LVL104:
	.loc 1 268 0
	ldr	r4, .L99+4
	lsls	r0, r0, #8
	strh	r0, [r4]	@ movhi
	.loc 1 269 0
	bl	tftRead
.LVL105:
	ldrh	r3, [r4]
	orrs	r0, r0, r3
	strh	r0, [r4]	@ movhi
	.loc 1 270 0
	bl	tftRead
.LVL106:
	ldr	r3, .L99+8
	strh	r0, [r3]	@ movhi
	.loc 1 271 0
	pop	{r4, pc}
.L100:
	.align	2
.L99:
	.word	tftId1
	.word	tftId2
	.word	tftId3
	.cfi_endproc
.LFE13:
	.size	tftReadId, .-tftReadId
	.section	.text.tftCharDraw,"ax",%progbits
	.align	1
	.global	tftCharDraw
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftCharDraw, %function
tftCharDraw:
.LFB14:
	.loc 1 275 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL107:
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
.LCFI15:
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 275 0
	mov	r8, r3
	.loc 1 284 0
	ldr	r3, .L108
.LVL108:
	.loc 1 275 0
	mov	r4, r0
	.loc 1 286 0
	mov	r0, sp
.LVL109:
	.loc 1 283 0
	strh	r2, [sp, #2]	@ movhi
	.loc 1 284 0
	str	r3, [sp, #4]
	.loc 1 282 0
	strh	r1, [sp]	@ movhi
	.loc 1 275 0
	ldrh	r9, [sp, #40]
	.loc 1 286 0
	bl	tftSetWindow
.LVL110:
	.loc 1 288 0
	movs	r0, #44
	bl	tftRegWrite
.LVL111:
	.loc 1 291 0
	movs	r2, #93
	ldr	r3, .L108+4
	mla	r4, r2, r4, r3
.LVL112:
	adds	r7, r4, r2
.LVL113:
.L104:
.LBB7:
	.loc 1 293 0
	movs	r6, #8
	ldrb	r5, [r4], #1	@ zero_extendqisi2
.LVL114:
.L103:
.LBB8:
	.loc 1 298 0
	tst	r5, #128
.LVL115:
	.loc 1 299 0
	ite	ne
	movne	r0, r8
	moveq	r0, r9
	bl	tftDatWrite
.LVL116:
	.loc 1 300 0
	lsls	r5, r5, #1
.LVL117:
	.loc 1 294 0
	subs	r6, r6, #1
.LVL118:
	.loc 1 300 0
	uxtb	r5, r5
.LVL119:
	.loc 1 294 0
	bne	.L103
.LVL120:
.LBE8:
	.loc 1 292 0 discriminator 2
	cmp	r4, r7
	bne	.L104
.LBE7:
	.loc 1 303 0
	add	sp, sp, #12
.LCFI16:
	.cfi_def_cfa_offset 28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL121:
.L109:
	.align	2
.L108:
	.word	2031640
	.word	fontDigit24x31
	.cfi_endproc
.LFE14:
	.size	tftCharDraw, .-tftCharDraw
	.section	.text.tftBmpDraw,"ax",%progbits
	.align	1
	.global	tftBmpDraw
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	tftBmpDraw, %function
tftBmpDraw:
.LFB15:
	.loc 1 305 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL122:
	push	{r0, r1, r4, r5, r6, lr}
.LCFI17:
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 311 0
	ldr	r3, .L113
	.loc 1 305 0
	mov	r5, r0
	.loc 1 313 0
	mov	r0, sp
.LVL123:
	.loc 1 309 0
	strh	r1, [sp]	@ movhi
	.loc 1 310 0
	strh	r2, [sp, #2]	@ movhi
	.loc 1 311 0
	str	r3, [sp, #4]
	.loc 1 313 0
	bl	tftSetWindow
.LVL124:
	.loc 1 314 0
	movs	r0, #44
	bl	tftRegWrite
.LVL125:
	movs	r4, #0
.LBB9:
	.loc 1 316 0
	movw	r6, #55488
.LVL126:
.L111:
	.loc 1 317 0 discriminator 3
	adds	r3, r5, r4
.LVL127:
	ldrb	r0, [r5, r4]	@ zero_extendqisi2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
.LVL128:
	adds	r4, r4, #2
.LVL129:
	.loc 1 318 0 discriminator 3
	orr	r0, r3, r0, lsl #8
	bl	tftDatWrite
.LVL130:
	.loc 1 316 0 discriminator 3
	cmp	r4, r6
	bne	.L111
.LBE9:
	.loc 1 320 0
	add	sp, sp, #8
.LCFI18:
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL131:
.L114:
	.align	2
.L113:
	.word	13369480
	.cfi_endproc
.LFE15:
	.size	tftBmpDraw, .-tftBmpDraw
	.text
.Letext0:
	.file 2 "inc/system.h"
	.file 3 "inc/stm32.h"
	.file 4 "inc/include.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb75
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xc
	.4byte	.LASF42
	.4byte	.LASF43
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
	.byte	0x8
	.byte	0x4
	.byte	0x37
	.4byte	0x21e
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x4
	.byte	0x38
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x39
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3a
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3b
	.4byte	0x55
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3c
	.4byte	0x1dd
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0x5a
	.4byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x5b
	.4byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0x5c
	.4byte	0x55
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x49
	.4byte	0x25b
	.uleb128 0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x250
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0x5e
	.4byte	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x111
	.4byte	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x131
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST41
	.byte	0x1
	.4byte	0x32b
	.uleb128 0x11
	.ascii	"bmp\000"
	.byte	0x1
	.2byte	0x131
	.4byte	0x32b
	.4byte	.LLST42
	.uleb128 0x11
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x131
	.4byte	0x55
	.4byte	.LLST43
	.uleb128 0x11
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x131
	.4byte	0x55
	.4byte	.LLST44
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x132
	.4byte	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.ascii	"dat\000"
	.byte	0x1
	.2byte	0x133
	.4byte	0x55
	.4byte	.LLST45
	.uleb128 0x14
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0x306
	.uleb128 0x13
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x67
	.4byte	.LLST46
	.uleb128 0x15
	.4byte	.LVL130
	.4byte	0xa39
	.byte	0
	.uleb128 0x16
	.4byte	.LVL124
	.4byte	0x800
	.4byte	0x31a
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL125
	.4byte	0xa6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x49
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x113
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x43f
	.uleb128 0x11
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x3e
	.4byte	.LLST32
	.uleb128 0x11
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x55
	.4byte	.LLST33
	.uleb128 0x11
	.ascii	"y\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x55
	.4byte	.LLST34
	.uleb128 0x11
	.ascii	"fg\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x55
	.4byte	.LLST35
	.uleb128 0x11
	.ascii	"bg\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x55
	.4byte	.LLST36
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x114
	.4byte	0x21e
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x115
	.4byte	0x43f
	.4byte	.LLST37
	.uleb128 0x13
	.ascii	"dat\000"
	.byte	0x1
	.2byte	0x115
	.4byte	0x3e
	.4byte	.LLST38
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x116
	.4byte	0x55
	.4byte	.LLST39
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x117
	.4byte	0x67
	.byte	0x5d
	.uleb128 0x14
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0x41a
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x124
	.4byte	0x67
	.byte	0
	.uleb128 0x1d
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x13
	.ascii	"b\000"
	.byte	0x1
	.2byte	0x126
	.4byte	0x67
	.4byte	.LLST40
	.uleb128 0x15
	.4byte	.LVL116
	.4byte	0xa39
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL110
	.4byte	0x800
	.4byte	0x42e
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL111
	.4byte	0xa6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x3e
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST29
	.byte	0x1
	.4byte	0x4b0
	.uleb128 0x11
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x105
	.4byte	0x3e
	.4byte	.LLST30
	.uleb128 0x15
	.4byte	.LVL100
	.4byte	0xa6b
	.uleb128 0x15
	.4byte	.LVL101
	.4byte	0xa9d
	.uleb128 0x15
	.4byte	.LVL102
	.4byte	0xa9d
	.uleb128 0x15
	.4byte	.LVL103
	.4byte	0xa9d
	.uleb128 0x15
	.4byte	.LVL104
	.4byte	0xa9d
	.uleb128 0x15
	.4byte	.LVL105
	.4byte	0xa9d
	.uleb128 0x15
	.4byte	.LVL106
	.4byte	0xa9d
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x100
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST27
	.byte	0x1
	.4byte	0x4fa
	.uleb128 0x1e
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x100
	.4byte	0x55
	.4byte	.LLST28
	.uleb128 0x16
	.4byte	.LVL97
	.4byte	0xa6b
	.4byte	0x4ef
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL98
	.byte	0x1
	.4byte	0xa39
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.4byte	0x55
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x54b
	.uleb128 0x21
	.ascii	"dat\000"
	.byte	0x1
	.byte	0xf7
	.4byte	0x55
	.uleb128 0x16
	.4byte	.LVL92
	.4byte	0xa6b
	.4byte	0x537
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x15
	.4byte	.LVL93
	.4byte	0xa9d
	.uleb128 0x1f
	.4byte	.LVL94
	.byte	0x1
	.4byte	0xa9d
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST25
	.byte	0x1
	.4byte	0x692
	.uleb128 0x16
	.4byte	.LVL77
	.4byte	0xb5e
	.4byte	0x578
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL78
	.4byte	0xb5e
	.4byte	0x58b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL79
	.4byte	0xb5e
	.4byte	0x59f
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.uleb128 0x16
	.4byte	.LVL80
	.4byte	0xa6b
	.4byte	0x5b3
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL81
	.4byte	0xb5e
	.4byte	0x5c7
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.uleb128 0x16
	.4byte	.LVL82
	.4byte	0xa6b
	.4byte	0x5db
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x16
	.4byte	.LVL83
	.4byte	0xa6b
	.4byte	0x5ef
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.uleb128 0x16
	.4byte	.LVL84
	.4byte	0xa39
	.4byte	0x603
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.uleb128 0x16
	.4byte	.LVL85
	.4byte	0xa6b
	.4byte	0x617
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL86
	.4byte	0xa39
	.4byte	0x62b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.uleb128 0x16
	.4byte	.LVL87
	.4byte	0x937
	.4byte	0x645
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL88
	.4byte	0xa6b
	.4byte	0x658
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x41
	.byte	0
	.uleb128 0x16
	.4byte	.LVL89
	.4byte	0xb5e
	.4byte	0x66c
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.byte	0
	.uleb128 0x16
	.4byte	.LVL90
	.4byte	0xa6b
	.4byte	0x680
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.byte	0
	.uleb128 0x23
	.4byte	.LVL91
	.byte	0x1
	.4byte	0x783
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x783
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x6d8
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0x67
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	.LVL66
	.4byte	0xa39
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xb
	.2byte	0xf800
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x704
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb7
	.4byte	0x67
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LVL69
	.4byte	0xa39
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.2byte	0x7e0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x72e
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb8
	.4byte	0x67
	.4byte	.LLST23
	.uleb128 0x18
	.4byte	.LVL72
	.4byte	0xa39
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x75a
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb9
	.4byte	0x67
	.4byte	.LLST24
	.uleb128 0x18
	.4byte	.LVL75
	.4byte	0xa39
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xa
	.2byte	0x7ff
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL63
	.4byte	0x937
	.4byte	0x772
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL64
	.4byte	0xa6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST17
	.byte	0x1
	.4byte	0x800
	.uleb128 0x25
	.4byte	.LASF25
	.byte	0x1
	.byte	0xad
	.4byte	0x55
	.4byte	.LLST18
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x7d7
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb0
	.4byte	0x67
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LVL61
	.4byte	0xa39
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL58
	.4byte	0x937
	.4byte	0x7ef
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.uleb128 0x17
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL59
	.4byte	0xa6b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x931
	.uleb128 0x25
	.4byte	.LASF22
	.byte	0x1
	.byte	0x99
	.4byte	0x931
	.4byte	.LLST12
	.uleb128 0x24
	.ascii	"sx\000"
	.byte	0x1
	.byte	0x9a
	.4byte	0x55
	.4byte	.LLST13
	.uleb128 0x24
	.ascii	"sy\000"
	.byte	0x1
	.byte	0x9a
	.4byte	0x55
	.4byte	.LLST14
	.uleb128 0x24
	.ascii	"ex\000"
	.byte	0x1
	.byte	0x9a
	.4byte	0x55
	.4byte	.LLST15
	.uleb128 0x24
	.ascii	"ey\000"
	.byte	0x1
	.byte	0x9a
	.4byte	0x55
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	.LVL43
	.4byte	0xa6b
	.4byte	0x875
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL45
	.4byte	0xa39
	.4byte	0x88b
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x77
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0xa39
	.4byte	0x8a2
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL47
	.4byte	0xa39
	.4byte	0x8b8
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL48
	.4byte	0xa39
	.4byte	0x8cf
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL49
	.4byte	0xa6b
	.4byte	0x8e3
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LVL51
	.4byte	0xa39
	.4byte	0x8f9
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL52
	.4byte	0xa39
	.4byte	0x910
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL53
	.4byte	0xa39
	.4byte	0x926
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL55
	.byte	0x1
	.4byte	0xa39
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x21e
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST8
	.byte	0x1
	.4byte	0xa39
	.uleb128 0x26
	.ascii	"x\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x55
	.4byte	.LLST9
	.uleb128 0x26
	.ascii	"y\000"
	.byte	0x1
	.byte	0x8c
	.4byte	0x55
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0xa6b
	.4byte	0x97f
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0xa39
	.4byte	0x995
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0xa39
	.4byte	0x9ac
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0xa39
	.4byte	0x9bf
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0xa39
	.4byte	0x9d3
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0xa6b
	.4byte	0x9e7
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xa39
	.4byte	0x9fd
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x4
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0
	.uleb128 0x16
	.4byte	.LVL36
	.4byte	0xa39
	.4byte	0xa14
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x16
	.4byte	.LVL37
	.4byte	0xa39
	.4byte	0xa27
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL38
	.byte	0x1
	.4byte	0xa39
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0xdf
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF34
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0xa6b
	.uleb128 0x26
	.ascii	"dat\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x55
	.4byte	.LLST3
	.uleb128 0x1f
	.4byte	.LVL5
	.byte	0x1
	.4byte	0xb0b
	.byte	0
	.uleb128 0x27
	.4byte	.LASF35
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0xa9d
	.uleb128 0x26
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x55
	.4byte	.LLST2
	.uleb128 0x1f
	.4byte	.LVL3
	.byte	0x1
	.4byte	0xb0b
	.byte	0
	.uleb128 0x28
	.4byte	.LASF45
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x55
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST4
	.byte	0x1
	.4byte	0xb0b
	.uleb128 0x24
	.ascii	"ia\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x6e
	.4byte	.LLST5
	.uleb128 0x24
	.ascii	"ib\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x6e
	.4byte	.LLST6
	.uleb128 0x24
	.ascii	"dat\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x55
	.4byte	.LLST7
	.uleb128 0x15
	.4byte	.LVL7
	.4byte	0xb49
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0xb6b
	.4byte	0xb01
	.uleb128 0x17
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.4byte	.LVL25
	.4byte	0xb34
	.byte	0
	.uleb128 0x29
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xb34
	.uleb128 0x26
	.ascii	"dat\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0x55
	.4byte	.LLST1
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x2b
	.byte	0x1
	.byte	0x1
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x2
	.byte	0x3d
	.uleb128 0x2b
	.byte	0x1
	.byte	0x1
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x2
	.byte	0x39
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
.LLST41:
	.4byte	.LFB15
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI18
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL123
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL131
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL122
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL124-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL122
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL124-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x12
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130-1
	.2byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LFB14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 40
	.4byte	.LCFI16
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x7d
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL109
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL107
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL110-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL107
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL108
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL107
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL121
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL116-1
	.4byte	.LVL117
	.2byte	0x13
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL114
	.4byte	.LVL118
	.2byte	0x5
	.byte	0x38
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x5
	.byte	0x37
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LFB13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LFB12
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI13
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL96
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB11
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI11
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB10
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB9
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x7
	.byte	0xa
	.2byte	0x9601
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x7
	.byte	0xa
	.2byte	0x9601
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x7
	.byte	0xa
	.2byte	0x9601
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x7
	.byte	0xa
	.2byte	0x9601
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE9
	.2byte	0x7
	.byte	0xa
	.2byte	0x9600
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB8
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x8
	.byte	0x8
	.byte	0x96
	.byte	0x3a
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x9
	.byte	0xc
	.4byte	0x25801
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE8
	.2byte	0x8
	.byte	0x8
	.byte	0x96
	.byte	0x3a
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB7
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI5
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB6
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL29-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB3
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE3
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB2
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF45:
	.ascii	"tftRead\000"
.LASF28:
	.ascii	"tftWriteMem\000"
.LASF20:
	.ascii	"bmpGokon\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"startx\000"
.LASF13:
	.ascii	"starty\000"
.LASF30:
	.ascii	"lcdClear2\000"
.LASF8:
	.ascii	"long long int\000"
.LASF2:
	.ascii	"signed char\000"
.LASF36:
	.ascii	"tftWrite\000"
.LASF33:
	.ascii	"tftSetPos\000"
.LASF22:
	.ascii	"rect\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF26:
	.ascii	"bytes\000"
.LASF29:
	.ascii	"tftInit\000"
.LASF23:
	.ascii	"tftBmpDraw\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF24:
	.ascii	"tftCharDraw\000"
.LASF35:
	.ascii	"tftRegWrite\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"tftPinWrite\000"
.LASF21:
	.ascii	"fontDigit24x31\000"
.LASF15:
	.ascii	"ysize\000"
.LASF42:
	.ascii	"src/driver/r61509v.c\000"
.LASF27:
	.ascii	"tftReadId\000"
.LASF17:
	.ascii	"tftId1\000"
.LASF18:
	.ascii	"tftId2\000"
.LASF19:
	.ascii	"tftId3\000"
.LASF44:
	.ascii	"tftReadMem\000"
.LASF39:
	.ascii	"kthreadSleep\000"
.LASF16:
	.ascii	"TftRect\000"
.LASF38:
	.ascii	"tftPinRead\000"
.LASF31:
	.ascii	"lcdClear\000"
.LASF41:
	.ascii	"GNU C11 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m3 -mthumb -gdwa"
	.ascii	"rf-2 -Os -std=gnu11 -ffunction-sections -fdata-sect"
	.ascii	"ions -fno-builtin -ffreestanding\000"
.LASF34:
	.ascii	"tftDatWrite\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"delay\000"
.LASF3:
	.ascii	"short int\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF25:
	.ascii	"color\000"
.LASF14:
	.ascii	"xsize\000"
.LASF11:
	.ascii	"__gpioCrH\000"
.LASF10:
	.ascii	"__gpioCrL\000"
.LASF32:
	.ascii	"tftSetWindow\000"
.LASF4:
	.ascii	"uint8_t\000"
.LASF43:
	.ascii	"/Users/franky/Desktop/github/WaterBed/program/displ"
	.ascii	"ay\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
