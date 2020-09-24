
// Assembly code for Testing New Instruction


#include "defines.h"

#define STDOUT 0xd0580000


// Code to execute
.section .text
.global _start
_start:

    // Clear minstret
    csrw minstret, zero
    csrw minstreth, zero

    // Set up MTVEC - not expecting to use it though
    li x1, RV_ICCM_SADR
    csrw mtvec, x1


    // Enable Caches in MRAC
    li x1, 0x5f555555
    csrw 0x7c0, x1

    // Load string from hw_data
    // and write to stdout address

    li x3, STDOUT
    la x4, hw_data

loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop

//~~~~~~~~~~~~~~~~~~~~new_part start ~~~~~~~~~~~~~~~~~~~~~~~~~~//
	
   addi x6, x6, 48 //will be replaced with reset counters //36
   addi x6, x6, 48 //will be replaced with reset counters //3a
   addi x6, x6, 48 //will be replaced with start counting //3e
   
   // FIRST LOOPING
   li x10, 0x02
   li x11, 0x02
   
section1:   
   bne x10, x11, section1 //br = 1 br_taken = 0
   blt x10, x11, section1 //br = 2 br_taken = 0
   bge x10, x11, section2 //br = 3 br_taken = 1

section2:
   beq x10, x0, section3 //br = 4 br_taken = 1
   beq x10, x11, section3 //br = 5 br_taken = 2

section3:
   addi x6, x6, 48 //will be replaced with stop counting //58
   
   
   // FIRST MESSAGE
   li x3, STDOUT
   la x4, message
int_loop1:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, int_loop1
   addi x6, x6, 48 //will be replaced with read branch counter to x6 //76
   addi x7, x6, 0x30
   sb x7, 0(x3)
   li x7 , 0x20
   sb x7, 0(x3)
   addi x6, x6, 48 //will be replaced with read branch taken counter to x6 //8a
   addi x7, x6, 0x30
   sb x7, 0(x3)
   
  

//~~~~~~~~~~~~~~~~~~~~new_part end ~~~~~~~~~~~~~~~~~~~~~~~~~~//



// Write 0xff to STDOUT for TB to terminate test.
_finish:
    li x3, STDOUT
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
.ascii "\nBranch counter, Branch Taken counter =  "
.byte 0