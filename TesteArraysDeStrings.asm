# Percorre um array de string e percorre os caracteres de cada string.

# Imprimi a string completa e a primeira palavra antes de um espaço.

.data 
	endLine: .asciiz "\n"
	void: .asciiz " "
	
	# Alunos	
	one: .asciiz "ARTHUR HENRIQUE ROCHA ALVES\n"
	two: .asciiz "VALMIR FERREIRA DA SILVA\n"
	three: .asciiz "JULIANA PESSOA NUNES\n"
	
	alunosArray:
		.word one, two, three
	
.text 

	la $t0, alunosArray	# Endereço do primeiro array.
	li $t1, 0		# Indíce do array
	li $t2, 12		# Tamanho do array
	li $t3, 0		# Indíce da string

	loop1: # Acessa string do array
		li $v0, 4	# print string.
		lw $a0, alunosArray($t1)
		move $a1, $a0	
		syscall

		loop2:	# Acessa caracteres do array
			li $v0, 11		# print character
			lb $a0, ($a1)  		# pega caractere
			syscall
			addi $a1, $a1, 1
		    
    			# Condição de parada
    			lb $a2, void          		# pega o valor de void
    			beq $a0, $a2, saiDoLoop2        # Se forem iguais, vá para exit
    			
    			j loop2
    			
    		saiDoLoop2:
    			li $v0, 4	# print string.
			la $a0, endLine
			syscall	
			addi $t1, $t1, 4	
			bne $t1, $t2, loop1
	
	exit:
		li $v0, 10
		syscall
