addiu t1 zero 0x0001
subu t0 zero t1
BLTZ t0 0x0002
addiu v0 v0 0x0001
j 0x0
sll zero zero 0x0
BLTZ t0 0xFFFC