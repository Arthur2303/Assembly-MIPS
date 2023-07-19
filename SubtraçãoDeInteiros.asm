.text
	li $t0, 75
	li $t1, 25
	sub $t2, $t0, $t1
	subi $t3, $t2, 40
	subi $t4, $t2, -40 # Irá executar uma Soma
	
	
	# Subtraindo com a instrução Addi
	# addi $t4, $t2, -40