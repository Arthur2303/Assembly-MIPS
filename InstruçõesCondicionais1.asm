.data
	msg: .asciiz "Forne�a um n�mero: "
	par: .asciiz "N�mero � par."
	impar: .asciiz "N�mero � �mpar"

.text
	
	# imprimindo msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo inteiro
	li $v0, 5
	syscall
	
	# dividindo o n�mero lido por 2
	li $t0, 2
	div $v0, $t0
	mfhi $t1 # resto da divis�o

	beq $t1, $zero, Par
	li $v0, 4
	la $a0, impar
	syscall
	
	# encerrando programa
	li $v0, 10 
	syscall
	Par:  	
		li $v0, 4
		la $a0, par
		syscall
		