.text 
	# Multiplicação
	addi $t0, $zero, 12
	addi $t1, $zero, 10
	mul  $s0, $t0, $t1
	
	li $v0, 1
	move $a0, $s0
	
	sll $s1, $t1, 10 #shif left logical -> Multiplicando por 2^10 
	
	syscall