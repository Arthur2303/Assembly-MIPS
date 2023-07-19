.text

	# realiza a divisão e manda a parte inteira para o registrador lo e o resto para hi
	li $t0, 32
	li $t1, 5
	div $t0, $t1
	srl $s2, $t0, 2 # dividi por 2^2
	
	# necessário passar os valores de lo e hi para algum registrador dos 32 da arquitetura MIPS
	mflo $s0
	mfhi $s1

	# OBS: lo e hi são registradores especiais para divisão, não fazendo parte dos 32 registradores.