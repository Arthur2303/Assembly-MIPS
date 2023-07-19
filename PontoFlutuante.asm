.data 

	msg: .asciiz "Digite um decimal: "
	pi: .float 3.141592
	zero: .float 0.0
	
.text 

	# imprimindo msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# lendo float
	li $v0, 6
	syscall # valor lido estará em $f0
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	# imprimindo o número ponto flutuante
	li $v0, 2
	syscall
	
	# Para os floats os registradores estão no Coproc1 (co-processador 1)
	lwc1 $f12, pi
	syscall
	 
