.data
	msg: .asciiz "Forneça um número: "
	par: .asciiz "Número é par."
	impar: .asciiz "Número é ímpar"

.text
	
	# imprimindo msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo inteiro
	li $v0, 5
	syscall
	
	# dividindo o número lido por 2
	li $t0, 2
	div $v0, $t0
	mfhi $t1 # resto da divisão

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
		