.data 
msg:
	.asciz  "Ola Mundo\n"
.text

main:
	la a0, msg
	li a7, 4
	ecall
	
	li a0,0
	li a7,10
	ecall
