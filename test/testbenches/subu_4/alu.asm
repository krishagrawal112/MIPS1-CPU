addiu t0 zero 0xFFFF
sll t0 t0 0x0010
addiu t1 t0 0xFFFF
addiu t2 t1 0x0000
j 0x0
subu v0 t2 t1