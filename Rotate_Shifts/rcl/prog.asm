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
	clc		; clear the carry flag (CF=0)
	rcl ax, 1	; ax = 08246H, CF=1
	rcl ax, 1	; ax = 048DH,  CF=1
	rcl ax, 1	; ax = 091BH,  CF=0
	rcr ax, 2	; ax = 08246H,  CF=1
	rcr ax, 1	; ax = 0C123H,  CF=0

	mov eax,1
	mov ebx,0
	int 80H
