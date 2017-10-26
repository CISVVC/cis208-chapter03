segment .data
	message: db 'Message',0

segment .bss

segment .text
	global main

main:
	nop
	mov ax,0c123H
	shl ax, 1	; shift 1 bit to left, ax=8246H, CF=1
	shr ax,1	; shift 1 bit to right, ax=4123H, CF=0
	shr ax,1	; shift 1 bit to right, ax=2091H, CF=1
	mov ax,0c123H
	shl ax, 2	; shift 2 bits to left, ax=048CH, CF=1
	mov cl,3
	shr ax,cl	; shift 3 bits to right, ax=0091H, CF=1

	mov eax,1
	mov ebx,0
	int 80H
