lui $t2, 0xBFC0
addiu $t0, $t0, 0x0001
addiu $t1, $t1, 0x0002
sltu $v0, $t0, $t1 
sw $v0, 0x100($t2)//1
sltu $v0, $t1, $t0
sw $v0, 0x104($t2)//0
lui $t0, 0x8000
sltu $v0, $t0, $t1 
sw $v0, 0x108($t2)//0
sltu $v0, $t1, $t0
sw $v0, 0x10C($t2)//1
lui $t1, 0x9000
sltu $v0, $t0, $t1 
sw $v0, 0x110($t2)//1
sltu $v0, $t1, $t0
sw $v0, 0x114($t2)//0
lui $t0, 0x9000
sltu $v0, $t1, $t0//0
j 0x0