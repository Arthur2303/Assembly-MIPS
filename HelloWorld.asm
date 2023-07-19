.data # área de dados na mem�ria principal

	msg: .asciiz "Hello, World!" # mensagem a ser exibida para o usu�rio

.text # área para instru��es do programa

	li $v0, 4 	# instrução para impress�o de String
	la $a0, msg 	# indica endere�o onde se encontra a mensagem
	
	syscall
