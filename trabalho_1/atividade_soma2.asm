    .data
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

    # Soma os números
    add t2, t0, t1  # t2 = t0 + t1

    # Imprime o resultado
    mv a0, t2
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    # Termina o programa
    li a7, 10
    ecall
