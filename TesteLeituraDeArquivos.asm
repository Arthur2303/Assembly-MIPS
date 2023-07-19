.data
    filename:   .asciiz "AlunosASD-2022.2.txt"
    buffer:     .space 256        # Buffer para armazenar a string lida
    array_size: .equ 55            # Tamanho máximo do array
    strings:    .space 256         # Array para armazenar as strings lidas

.text
    main:
        # Abrir o arquivo para leitura
        li $v0, 13                  # Código da syscall para abrir arquivo
        la $a0, filename            # Carregar o endereço do nome do arquivo
        li $a1, 0                   # Modo de abertura: leitura
        li $a2, 0                   # Permissões: padrão
        syscall                     # Fazer a chamada ao sistema para abrir o arquivo

        move $s0, $v0               # Armazenar o descritor de arquivo em $s0

        # Ler as strings do arquivo para o array
        li $v0, 14                  # Código da syscall para ler arquivo
        move $a0, $s0               # Carregar o descritor de arquivo
        la $a1, buffer              # Carregar o endereço do buffer
        li $a2, 256                 # Tamanho máximo de leitura
        syscall                     # Fazer a chamada ao sistema para ler o arquivo

        # Copiar as strings lidas para o array
        move $t0, $a1               # Carregar o endereço do buffer em $t0
        la $t1, strings             # Carregar o endereço do array de strings em $t1

        li $t2, 0                   # Inicializar o índice do array

    copy_loop:
        lb $t3, ($t0)               # Carregar o próximo caractere do buffer em $t3
        sb $t3, ($t1)               # Copiar o caractere para o array de strings
        addiu $t0, $t0, 1           # Incrementar o endereço do buffer
        addiu $t1, $t1, 1           # Incrementar o endereço do array de strings

        beqz $t3, end_copy_loop     # Verificar se chegou ao final da string

        addiu $t2, $t2, 1           # Incrementar o índice do array
        bne $t2, array_size, copy_loop   # Verificar se o array está completo

    end_copy_loop:
        # Restante do código...

    # Fechar o arquivo
    li $v0, 16                  # Código da syscall para fechar o arquivo
    move $a0, $s0               # Carregar o descritor de arquivo
