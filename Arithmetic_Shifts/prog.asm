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
	sal ax, 1	; shift 1 bit to left, ax=8246H, CF=1
	sal ax,1	; shift 1 bit to left, ax=048CH, CF=1
	sar ax,2	; shift 2 bit to right, ax=0123H, CF=0

	mov eax,1
	mov ebx,0
	int 80H
