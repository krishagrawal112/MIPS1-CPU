addiu $t1, $t1, 0x0001
addiu $t2, $t2, 0x0002
lui $s1, 0xFFFF
addiu $s1, $s1, 0xFFFF
subu $s2, $s1, $t1
beq $t1, $zero, 0x0002
beq $t0, $zero, 0x0002
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
bgez $s1, 0x0002
bgez $t1, 0x0002
lui $v0, 0xFFFF
bgez $zero, 0x0002
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
bgezal $s2, 0x0002
bgezal $t2, 0x0004
lui $v0, 0xDDDD
lui $v0, 0xEEEE
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
lui $t0, 0xBFC0
sw $ra, 0x0400($t0)
bgtz $s1, 0x0003
bgtz $zero, 0x0003
bgtz $t1, 0x0003
lui $v0, 0xEEEE
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
bltz $t1, 0x0003
bltz $zero, 0x0003
bltz $s1, 0x0003
lui $v0, 0xEEEE
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
blez $t1, 0x0002
blez $s1, 0x0002
lui $v0, 0xFFFF
blez $zero, 0x0002
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
bltzal $zero, 0x0002
bltzal $s1, 0x0004
lui $v0, 0xDDDD
lui $v0, 0xEEEE
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
sw $ra, 0x0404($t0)
bne $zero, $s0, 0x0002
bne $t1, $t2, 0x0002
lui $v0, 0xFFFF
addiu $v0, $v0, 0x0001
j 0x0