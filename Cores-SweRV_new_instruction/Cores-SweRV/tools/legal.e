in=decode
out=decode.out
view=rv32i
.i 32
.o 1
.ilb  i[31] i[30] i[29] i[28] i[27] i[26] i[25] i[24] i[23] i[22] i[21] i[20] i[19] i[18] i[17] i[16] i[15] i[14] i[13] i[12] i[11] i[10] i[9] i[8] i[7] i[6] i[5] i[4] i[3] i[2] i[1] i[0]
.ob legal
.type fd
# add
0000000----------000-----0110011 1
# addi
-----------------000-----0010011 1
# and
0000000----------111-----0110011 1
# andi
-----------------111-----0010011 1
# auipc
-------------------------0010111 1
# beq
-----------------000-----1100011 1
# bge
-----------------101-----1100011 1
# bgeu
-----------------111-----1100011 1
# blt
-----------------100-----1100011 1
# bltu
-----------------110-----1100011 1
# bne
-----------------001-----1100011 1
# csrrc_ro
------------00000011-----1110011 1
# csrrc_rw0
------------1----011-----1110011 1
# csrrc_rw1
-------------1---011-----1110011 1
# csrrc_rw2
--------------1--011-----1110011 1
# csrrc_rw3
---------------1-011-----1110011 1
# csrrc_rw4
----------------1011-----1110011 1
# csrrci_ro
------------00000111-----1110011 1
# csrrci_rw0
------------1----111-----1110011 1
# csrrci_rw1
-------------1---111-----1110011 1
# csrrci_rw2
--------------1--111-----1110011 1
# csrrci_rw3
---------------1-111-----1110011 1
# csrrci_rw4
----------------1111-----1110011 1
# csrrs_ro
------------00000010-----1110011 1
# csrrs_rw0
------------1----010-----1110011 1
# csrrs_rw1
-------------1---010-----1110011 1
# csrrs_rw2
--------------1--010-----1110011 1
# csrrs_rw3
---------------1-010-----1110011 1
# csrrs_rw4
----------------1010-----1110011 1
# csrrsi_ro
------------00000110-----1110011 1
# csrrsi_rw0
------------1----110-----1110011 1
# csrrsi_rw1
-------------1---110-----1110011 1
# csrrsi_rw2
--------------1--110-----1110011 1
# csrrsi_rw3
---------------1-110-----1110011 1
# csrrsi_rw4
----------------1110-----1110011 1
# csrrw0
-----------------001----11110011 1
# csrrw1
-----------------001---1-1110011 1
# csrrw2
-----------------001--1--1110011 1
# csrrw3
-----------------001-1---1110011 1
# csrrw4
-----------------0011----1110011 1
# csrrwi0
-----------------101----11110011 1
# csrrwi1
-----------------101---1-1110011 1
# csrrwi2
-----------------101--1--1110011 1
# csrrwi3
-----------------101-1---1110011 1
# csrrwi4
-----------------1011----1110011 1
# csrw
-----------------001000001110011 1
# csrwi
-----------------101000001110011 1
# div
0000001----------100-----0110011 1
# divu
0000001----------101-----0110011 1
# ebreak
00000000000100000000000001110011 1
# ecall
00000000000000000000000001110011 1
# fence
0000--------00000000000000001111 1
# fence.i
00000000000000000001000000001111 1
# jal
-------------------------1101111 1
# jalr
-----------------000-----1100111 1
# lb
-----------------000-----0000011 1
# lbu
-----------------100-----0000011 1
# lh
-----------------001-----0000011 1
# lhu
-----------------101-----0000011 1
# lui
-------------------------0110111 1
# lw
-----------------010-----0000011 1
# mret
00110000001000000000000001110011 1
# mul
0000001----------000-----0110011 1
# mulh
0000001----------001-----0110011 1
# mulhsu
0000001----------010-----0110011 1
# mulhu
0000001----------011-----0110011 1
# new_inst
000000000000-----000-----0001011 1
# or
0000000----------110-----0110011 1
# ori
-----------------110-----0010011 1
# rem
0000001----------110-----0110011 1
# remu
0000001----------111-----0110011 1
# sb
-----------------000-----0100011 1
# sh
-----------------001-----0100011 1
# sll
0000000----------001-----0110011 1
# slli
0000000----------001-----0010011 1
# slt
0000000----------010-----0110011 1
# slti
-----------------010-----0010011 1
# sltiu
-----------------011-----0010011 1
# sltu
0000000----------011-----0110011 1
# sra
0100000----------101-----0110011 1
# srai
0100000----------101-----0010011 1
# srl
0000000----------101-----0110011 1
# srli
0000000----------101-----0010011 1
# sub
0100000----------000-----0110011 1
# sw
-----------------010-----0100011 1
# wfi
00010000010100000000000001110011 1
# xor
0000000----------100-----0110011 1
# xori
-----------------100-----0010011 1