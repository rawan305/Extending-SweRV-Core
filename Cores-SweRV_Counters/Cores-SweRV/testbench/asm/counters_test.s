
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
   li x10, 0x00
   li x11, 0x02
   // x10=0 start, x11=A end : for (i=0 ; i < 2 ; i++) - br = 2 br_taken = 1
loop1:
   addi x10, x10, 1
   bne x10, x11, loop1
   
   addi x6, x6, 48 //will be replaced with stop counting //4c
   
   
   // FIRST MESSAGE
   li x3, STDOUT
   la x4, message
int_loop1:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, int_loop1
   addi x6, x6, 48 //will be replaced with read branch counter to x6 //6a
   addi x7, x6, 0x30
   sb x7, 0(x3)
   li x7 , 0x20
   sb x7, 0(x3)
   addi x6, x6, 48 //will be replaced with read branch taken counter to x6 //7e
   addi x7, x6, 0x30
   sb x7, 0(x3)
   
  
  //SECOND LOOPING - not supposed to change
   li x10, 0x00
   li x11, 0x0A
   // x10=0 start, x11=A end : for (i=0 ; i < 10 ; i++) - br = 2 br_taken = 1
loop2:
   addi x10, x10, 1
   bne x10, x11, loop2
   
   
   //SECOND MESSAGE
   li x3, STDOUT
   la x4, message
int_loop2:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, int_loop2
   addi x6, x6, 48 //will be replaced with read branch counter to x6 //ae
   addi x7, x6, 0x30
   sb x7, 0(x3)
   li x7 , 0x20
   sb x7, 0(x3)
   addi x6, x6, 48 //will be replaced with read branch taken counter to x6 //c2
   addi x7, x6, 0x30
   sb x7, 0(x3)
    
   
   // THIRD LOOPING - does change values
   addi x6, x6, 48 //will be replaced with start counting //ce
   li x10, 0x00
   li x11, 0x2
   // x10=0 start, x11=A end : for (i=0 ; i < 10 ; i++) - br = 4 br_taken = 2
loop3:
   addi x10, x10, 1
   bne x10, x11, loop3
   
   addi x6, x6, 48 //will be replaced with stop counting //dc
   
   //THIRD MESSAGE
   li x3, STDOUT
   la x4, message
int_loop3:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, int_loop3
   addi x6, x6, 48 //will be replaced with read branch counter to x6 //fa
   addi x7, x6, 0x30
   sb x7, 0(x3)
   li x7 , 0x20
   sb x7, 0(x3)
   addi x6, x6, 48 //will be replaced with read branch taken counter to x6 //10e
   addi x7, x6, 0x30
   sb x7, 0(x3)
   
   
   addi x6, x6, 48 //will be replaced with reset counters //11a
   addi x6, x6, 48 //will be replaced with reset counters //11e
   addi x6, x6, 48 //will be replaced with start counting //122
   
   // FOURTH LOOPING
   li x10, 0x00
   li x11, 0x02
   // x10=0 start, x11=A end : for (i=0 ; i < 10 ; i++) - br = 2 br_taken = 1
loop4:
   addi x10, x10, 1
   bne x10, x11, loop4
   
   addi x6, x6, 48 //will be replaced with stop counting //130
   
   
   // FOURTH MESSAGE
   li x3, STDOUT
   la x4, message
int_loop4:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, int_loop4
   addi x6, x6, 48 //will be replaced with read branch counter to x6 //14e
   addi x7, x6, 0x30
   sb x7, 0(x3)
   li x7 , 0x20
   sb x7, 0(x3)
   addi x6, x6, 48 //will be replaced with read branch taken counter to x6 //162
   addi x7, x6, 0x30
   sb x7, 0(x3)
    


   //Expected output: 2,1 ; 2,1 ; 4,2 ; 2,1 

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