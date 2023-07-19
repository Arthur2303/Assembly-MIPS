.data
	
	caractere: .byte 'A' 

.text

	li $v0, 4 #imprimi char ou string
	la $a0, caractere
	syscall # valor lido fica armazenado no $v0 
	
	# Encerrando o programa
	li $v0,10
	syscall
