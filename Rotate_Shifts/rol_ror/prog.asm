%include "asm_io.inc"

; Arithmetic Shifts

segment .data
	message: db 'Message',0

segment .bss

segment .text
	global main

main:
	nop
	mov ax,0c123H
	rol ax, 1	; rotate 1 bit to left, ax=8247H, CF=1
	rol ax, 1	; rotate 1 bit to left, ax=048FH, CF=1
	rol ax, 1	; rotate 1 bit to left, ax=091EH, CF=0
	ror ax, 2	; rotate 1 bit to left, ax=8247H, CF=1
	ror ax, 1	; rotate 1 bit to left, ax=C123H, CF=1

	mov eax,1
	mov ebx,0
	int 80H
