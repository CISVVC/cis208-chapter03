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
	or ax, 0E831H	; ax=E933H

end_main:
	mov eax,1
	mov ebx,0
	int 80H
