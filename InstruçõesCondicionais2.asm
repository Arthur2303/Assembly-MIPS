.data 
	maior: .asciiz "Número é maior que zero."
	menor: .asciiz "Número é menor que zero."
	igual: .asciiz "Número é igual a zero."

.text

	# lendo o número inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, Igual
	bgt $t0, $zero, Maior
	blt $t0, $zero, Menor
	
	# rótulo é executada quando o número é 0 
	Igual:
		li $v0, 4
		la $a0, igual
		syscall
		
		j EXIT
		
	# rótulo é executada quando o número é maior que 0
	Maior:
		li $v0, 4
		la $a0, maior
		syscall
		
		j EXIT
		
	# rótulo é executada quando o número é menor que 0
	Menor:
		li $v0, 4
		la $a0, menor
		syscall
		
		j EXIT
		
	EXIT:
		li $v0, 10
		syscall
		
	
