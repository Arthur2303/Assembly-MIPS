.data 
	maior: .asciiz "N�mero � maior que zero."
	menor: .asciiz "N�mero � menor que zero."
	igual: .asciiz "N�mero � igual a zero."

.text

	# lendo o n�mero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, Igual
	bgt $t0, $zero, Maior
	blt $t0, $zero, Menor
	
	# r�tulo � executada quando o n�mero � 0 
	Igual:
		li $v0, 4
		la $a0, igual
		syscall
		
		j EXIT
		
	# r�tulo � executada quando o n�mero � maior que 0
	Maior:
		li $v0, 4
		la $a0, maior
		syscall
		
		j EXIT
		
	# r�tulo � executada quando o n�mero � menor que 0
	Menor:
		li $v0, 4
		la $a0, menor
		syscall
		
		j EXIT
		
	EXIT:
		li $v0, 10
		syscall
		
	
