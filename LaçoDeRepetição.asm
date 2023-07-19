.data
	
	espaco: .byte ' '

.text
	# lendo inteiro 
	li $v0, 5
	syscall
	
	# movendo o valor lido para $t0 
	move $t0, $v0 
	
	move $t1, $zero
	
	loop:
		b	gt $t1, $t0, outLoop
		
		# imprimindo $t1
		li $v0, 1
		move $a0, $t1
		syscall
		
		# imprime espa�o em branco
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t1, $t1, 1
		j loop
	 
	outLoop: 
	
		
	
	