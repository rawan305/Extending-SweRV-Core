# 1 "/home/nimrodb/src/Cores-SweRV-EH2/testbench/asm/hello_world.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/nimrodb/src/Cores-SweRV-EH2/testbench/asm/hello_world.s"
# 21 "/home/nimrodb/src/Cores-SweRV-EH2/testbench/asm/hello_world.s"
# 1 "snapshots/default/defines.h" 1
# 22 "/home/nimrodb/src/Cores-SweRV-EH2/testbench/asm/hello_world.s" 2





.macro get_tid reg=a0
    csrr \reg, mhartid
    andi \reg,\reg, 0xf
.endm


.macro fork targ=thread reg=a0
    get_tid \reg
    bne \reg, x0, \targ
.endm

.macro set_lock id=1
    li a0, \id
    li a1, LOCK_SEMAPHORE
    amoswap.w.aq x0, a0, (a1)
.endm

.macro unlock
    li a1, LOCK_SEMAPHORE
    sw x0, 0 (a1)
.endm

.macro get_lock id=1
    li a1, LOCK_SEMAPHORE
1:
    lw a0, 0 (a1)
    bnez a0, 1b
.endm

    .equ mhartstart,0x7fc
    .equ LOCK_SEMAPHORE, 0xf004ffff - 3


.section .text
.global _start
_start:


    csrw minstret, zero
    csrw minstreth, zero


    li x1, 0xee000000
    csrw mtvec, x1

    fork bypass_init1

    li x1, 0x5f555555
    csrw 0x7c0, x1

    unlock
    set_lock

    csrwi mhartstart, 3
    li x3, 0xd0580000
    la x4, hw_data
    j loop

bypass_init1:


    li x3, 0xd0580000
    la x4, hw_data1
    get_lock

loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop
   unlock






_finish:
    li x3, 0xd0580000
    addi x5, x0, 0xff
    sb x5, 0(x3)
    beq x0, x0, _finish
.rept 100
    nop
.endr

.data
hw_data:
.ascii "----------------------------------------\n"
.ascii "Hello World from SweRV EH2 hart0 @WDC !!\n"
.ascii "----------------------------------------\n"
.byte 0

hw_data1:
.ascii "----------------------------------------\n"
.ascii "Hello World from SweRV EH2 hart1 @WDC !!\n"
.ascii "----------------------------------------\n"
.byte 0
