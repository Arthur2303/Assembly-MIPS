# Percorre e l� uma string
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
		
   		# Condi��o de parada
    		lb $a1, endLine           # pega o valor de endLine
    		beq $a0, $a1, exit        # Se forem iguais, v� para exit
    
    		j loop
	exit:
		li $v0, 10
		syscall
