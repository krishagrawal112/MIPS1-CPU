lui $t0, 0xBFC0
lui $t1, 0xA000
sra $v0, $t1, 0x1E
sw $v0, 0x100($t0)
lui $t1, 0x7000
sra $v0, $t1, 0x1E
j 0x0