.data

	msg: .asciiz "Por favor, forneça sua idade: "
	saida: .asciiz "Sua idade é "

.text
	
	# imprimindo msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo intiero
	li $v0, 5
	syscall
	
	# copiando valor do $v0 para registrador t0 (valor fornecido)
	move $t0, $v0 
	
	# imprimindo saida
	li $v0, 4
	la $a0, saida
	syscall
	
	# imprimindo o inteiro (a idade)
	li $v0, 1
	move $a0, $t0
	syscall 
	
	