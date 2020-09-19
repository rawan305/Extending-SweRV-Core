# 1 "/home/smep/smep_tb/Cores-SweRV_edited//testbench/asm/new_instruction.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/smep/smep_tb/Cores-SweRV_edited//testbench/asm/new_instruction.s"





# 1 "snapshots/default/defines.h" 1
# 7 "/home/smep/smep_tb/Cores-SweRV_edited//testbench/asm/new_instruction.s" 2





.section .text
.global _start
_start:


    csrw minstret, zero
    csrw minstreth, zero


    li x1, 0xee000000
    csrw mtvec, x1



    li x1, 0x5f555555
    csrw 0x7c0, x1




    li x3, 0xd0580000
    la x4, hw_data

loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop



   li x6,0x00
   li x10, 0x00
   li x11, 0x09


ext_loop:

   addi x6, x6, 48
   li x3, 0xd0580000
   la x4, message


int_loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, int_loop

   addi x7, x6, 0x30
   sb x7, 0(x3)


   addi x10, x10, 1
   bne x10, x11, ext_loop






_finish:
    li x3, 0xd0580000
    addi x5, x0, 0xff
    sb x5, 0(x3)
    beq x0, x0, _finish
.rept 100
    nop
.endr

.global hw_data
.data
hw_data:
.ascii "----------------------------------\n"
.ascii "Hello World from SweRV EH1 @WDC !!\n"
.ascii "----------------------------------\n"
.byte 0
.global message
message:
.ascii "\nNew instruction result: "
.byte 0
