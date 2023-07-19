# Percorre e lê uma string
.data 
	input: .asciiz "Arthur\n"
	endLine: .asciiz "\n"
	
.text 

	li $t1, 0 # indice
	
	loop:	
		li $v0, 11
		lb $a0, input($t1)	 # pega caractere
		syscall
		addi $t1, $t1, 1
		
   		# Condição de parada
    		lb $a1, endLine           # pega o valor de endLine
    		beq $a0, $a1, exit        # Se forem iguais, vá para exit
    
    		j loop
	exit:
		li $v0, 10
		syscall
