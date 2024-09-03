ENTRY(Reset_Handler)


/*Memory section definition*/
MEMORY
{
    RAM    (rw)    : ORIGIN = 0x20000000,   LENGTH = 64K
    FLASH  (rx)    : ORIGIN = 0x08000000,   LENGTH = 256K
}

SECTIONS
{
    .vector_table :
  {
    . = ALIGN(4);
    KEEP(*(.vector_table))
    . = ALIGN(4);
  } >FLASH

    .text :
  {
    . = ALIGN(4);
    *(.text)
    . = ALIGN(4);
  } >FLASH

    .rodata :
  {
    . = ALIGN(4);
    *(.rodata)
    . = ALIGN(4);
  } >FLASH

   .data :
  {  
    . = ALIGN(4);
    PROVIDE(_sdata = .) ; 
    *(.data)
    PROVIDE(_edata = .);
    . = ALIGN(4);      
  } >RAM AT> FLASH

    PROVIDE(_sload_data = LOADADDR(.data));                 /*This contains the load address of the .data section*/
    PROVIDE(_StackStart = ORIGIN(RAM) + LENGTH(RAM) );      /*This contains the Stack_Start/RAM_End address      */

   .bss :
  {
    . = ALIGN(4);
    _sbss = . ;
    *(.bss)
    _ebss = . ;
    . = ALIGN(4);
  } >RAM

}
