.data
quebra_linha: .string "\n"
.text
main:
    # Lê o número de entradas
    li a7, 5
    ecall
    mv t0, a0  # Guarda o primeiro número em t0
    
    #fazendo a leitura do primeiro número
    li a7, 5
    ecall
    mv t1, a0  # Guarda o primeiro número em t1
    
    addi t0, t0, -1 # Decrementa t0 pois já lemos o primeiro numero
    
loop:
    beqz t0, sair #conferindo se a t0 chegou a 0 se a condição é atendida ele vai para sair
    
    #fazendo a leitura do número atual
    li a7, 5
    ecall
    mv t2, a0  # Guarda o primeiro número em t2
    
    bge t2, t1, trocavar # Se t2 >= t1, pula para trocavar

    j continua

trocavar:
    mv t1,t2 #carregando a variavel com o maior valor
    #depois segue para o continua que está abaixo para continuar no loop

continua:
    addi t0, t0, -1 # Decrementa t0 pois se passou uma iteração
    j loop

sair:
    # Imprime o resultado
    mv a0, t1
    li a7, 1
    ecall
    
    #Imprimindo o quebra linha
    la a0, quebra_linha #Carregando o \n
    li a7, 4 #printando
    ecall
    
    # Termina o programa
    li a7, 10
    ecall
