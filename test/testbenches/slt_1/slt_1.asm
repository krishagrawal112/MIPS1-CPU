lui $t0, 0xBFC0
addiu $t2, $t2, 0x0002
addiu $t1, $t1, 0x0001
slt $v0, $t1, $t2
sw $v0, 0x100($t0) //1
slt $v0, $t2, $t1
sw $v0, 0x104($t0) //0
lui $t2, 0x8000
slt $v0, $t1, $t2
sw $v0, 0x108($t0) //0
slt $v0, $t2, $t1
sw $v0, 0x10C($t0) //1
lui $t1, 0x9000
slt $v0, $t1, $t2
sw $v0, 0x110($t0) //0
slt $v0, $t2, $t1
sw $v0, 0x114($t0) //1
lui $t2, 0x9000
slt $v0, $t1, $t2
sw $v0, 0x118($t0) //0
j 0x0
slt $v0, $t2, $t1 //0

