# Imprime Array de Strings
.data
	one: 	.asciiz "ADSON BRENO MEDEIROS DOS SANTOS\n"
	two: 	.asciiz "ANA JULIA FERNANDES DE BRITO AMENO\n"
	three: 	.asciiz "ANA LARISSA COSTA DOS SANTOS\n"
	four: 	.asciiz "ANNA CAROLLYNE DANTAS DE LIMA\n"
	five: 	.asciiz "ANTONIO KALLIL CAVALCANTE QUIRINO FILHO\n"
	
	alunosArray: .word one, two, three, four, five

.text
	
	la $t0, alunosArray	# Endereço do primeiro array.
	li $v0, 4		# print_string.
	li $t1, 0		# Initialize array offset.
	li $t2, 20		# tamanho do array

	loop:

		lw $a0, alunosArray($t1)	
		syscall

		addi $t1, $t1, 4	
		bne $t1, $t2, loop

		li $v0, 10   		
 		syscall
