lui $t0, 0xBFC0
lui $t1, 0x1111
addiu $t1, $t1, 0x8888
sw $t1, 0x0100($t0)
lw $v0, 0x0100($t0)
lh $v0, 0x0100($t0)
lw $v0, 0x0100($t0)
lw $v0, 0x0100($t0)
lw $v0, 0x0100($t0)
lw $v0, 0x0100($t0)
lw $v0, 0x0100($t0)