addiu t0 t0 0x0001
subu t1 zero t0
BLTZAL t1 0x0002
sll zero zero 0x0
j 0x0
sll zero zero 0x0
BLTZAL t1 0xFFFC
addiu v0 ra 0x0