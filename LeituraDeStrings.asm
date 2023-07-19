.data
	msg: .asciiz "Qual o seu nome? "
	saida: .asciiz "Ola, "
	
	# variavel que ira armazenar o nome (possui um tamanho maximo de 25 caracteres).
	nome: .space 25

.text
	
	# imprimindo msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# leitura da string
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	# copiando valor do nome para registrador t0 (string fornecida)
	move $t0, $a0
	
	#  imprimindo saida
	li $v0, 4
	la $a0, saida
	syscall
	
	# imprimindo nome
	li $v0, 4
	move $a0, $t0
	syscall


	
