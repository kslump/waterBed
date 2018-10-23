MEMORY {
    CODE (rx)  : ORIGIN = 0x08000000, LENGTH = 128k
    DATA (wx)  : ORIGIN = 0x20000000, LENGTH = 20k
}

ENTRY(expReset)

SECTIONS {
    .text : {
        KEEP(*(.startup))
        . = ALIGN(4);
        *(.text*)
        . = ALIGN(4);
        *(.rodata*)
        . = ALIGN(4);
        _text_end = . ;
    } > CODE

    .bss (NOLOAD) : {
        . += 64;
        _stkirq_end = . ;
        _bss_start = . ;
        *(.bss*)
        . = ALIGN(4);
        *(COMMON*)
        . = ALIGN(4);
        _bss_end = . ;
    } > DATA

    .data : AT (_text_end) {
        _data_start = . ;
        *(.data*)
        . = ALIGN(4);
        _data_end = . ;
    } > DATA

    _heap1_start = . ;
    _heap1_end = 0x1000ff00;

    /* Stabs debugging sections.  */
    .stab          0 : { *(.stab) }
    .stabstr       0 : { *(.stabstr) }
    .stab.excl     0 : { *(.stab.excl) }
    .stab.exclstr  0 : { *(.stab.exclstr) }
    .stab.index    0 : { *(.stab.index) }
    .stab.indexstr 0 : { *(.stab.indexstr) }
    .comment       0 : { *(.comment) }
    /* DWARF debug sections. */
    /* DWARF 1 */
    .debug          0 : { *(.debug) }
    .line           0 : { *(.line) }
    /* GNU DWARF 1 extensions */
    .debug_srcinfo  0 : { *(.debug_srcinfo) }
    .debug_sfnames  0 : { *(.debug_sfnames) }
    /* DWARF 1.1 and DWARF 2 */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    /* DWARF 2 */
    .debug_info     0 : { *(.debug_info .gnu.linkonce.wi.*) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }
    /* SGI/MIPS DWARF 2 extensions */
    .debug_weaknames 0 : { *(.debug_weaknames) }
    .debug_funcnames 0 : { *(.debug_funcnames) }
    .debug_typenames 0 : { *(.debug_typenames) }
    .debug_varnames  0 : { *(.debug_varnames) }
}
