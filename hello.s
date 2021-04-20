@hello.s
@ Hello, World! Program in ARM ASM
@

@-----
@	Data Section
@-----

	.data
string: .asciz "\nHello, World!\n"

@-----
@	Code Section
@-----

	.text
	.global main
	.extern printf

 main:
	push {ip, lr}
	
	ldr r0, =string
	bl printf

	pop {ip, pc}
