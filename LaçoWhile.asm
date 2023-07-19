.text

	move $t0, $zero                                     # int i = 0;
												
	while:						    # while (i<10){
		beq $t0, 10, saida			    # 	i++;
		addi $t0, $t0, 1			    # }
		j while
			
	saida: 						    # printf("%d",&i); 
		li $v0, 1
		move $a0, $t0
		syscall