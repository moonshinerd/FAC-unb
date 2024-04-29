    .data
adicao: .string "ADD: "
subtracao: .string "SUB: "
e: .string "AND: "
ou: .string "OR: "
ouexclusivo: .string "XOR: "
mascara: .string "MASK: "
esquerda: .string "SLL("
direita: .string "SRL("
fecha: .string "): "
quebra_linha: .string "\n"
    .text
main:
    # Lê o primeiro número
    li a7, 5
    ecall
    mv t0, a0  # Guarda o primeiro número em t0

    # Lê o segundo número
    li a7, 5
    ecall
    mv t1, a0  # Guarda o segundo número em t1
    
     # Lê o terceiro número
    li a7, 5
    ecall
    mv t2, a0  # Guarda o segundo número em t2

    # Soma os números
    add t3, t0, t1  # t3 = t0 + t1

    #Imprimindo adição
    la a0, adicao #Carregando o ADD
    li a7, 4 #printando
    ecall
    
    # Imprime o resultado
    mv a0, t3
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    #subtração dos numeros
    sub t3,t0,t1 #t3 = t0 - t1
    
    #Imprimindo subtração
    la a0, subtracao #Carregando o SUB
    li a7, 4 #printando
    ecall
    
    # Imprime o resultado
    mv a0, t3
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    #and dos numeros
    and t3,t0,t1 #t3 = t0 * t1
    
    #Imprimindo o and
    la a0, e #Carregando o AND
    li a7, 4 #printando
    ecall
    
    # Imprime o resultado
    mv a0, t3
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    #fazendo or entre os numeros
    or t3,t0,t1

    #Imprimindo o or
    la a0, ou #Carregando o ou
    li a7, 4 #printando
    ecall
    
    # Imprime o resultado
    mv a0, t3
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    #fazendo xor entre os numeros
    xor t3,t0,t1

    #Imprimindo o xor
    la a0, ouexclusivo #Carregando o ouexclusivo
    li a7, 4 #printando
    ecall
    
    # Imprime o resultado
    mv a0, t3
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    #fazendo mask entre os numeros
    andi t3, t2, 31 

    #Imprimindo o mask
    la a0, mascara #Carregando o mask
    li a7, 4 #printando
    ecall
    
    # Imprime o resultado
    mv a0, t3
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    #imprimindo o ssl(
    la a0, esquerda #Carregando o ssl
    li a7, 4 #printando
    ecall
    
    # Imprime o mask
    mv a0, t3
    li a7, 1
    ecall
    
    #imprimindo o )
    la a0, fecha #Carregando o )
    li a7, 4 #printando
    ecall
    
    #deslocamento a esquerda
    sll t4, t0, t3
    
    #imprimindo o resultado
    mv a0, t4
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
        #imprimindo o srl(
    la a0, direita #Carregando o srl
    li a7, 4 #printando
    ecall
    
    # Imprime o mask
    mv a0, t3
    li a7, 1
    ecall
    
    #imprimindo o )
    la a0, fecha #Carregando o )
    li a7, 4 #printando
    ecall
    
    #deslocamento a esquerda
    srl t4, t1, t3
    
    #imprimindo o resultado
    mv a0, t4
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    # Termina o programa
    li a7, 10
    ecall
