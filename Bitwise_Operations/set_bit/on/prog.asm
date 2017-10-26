%include "asm_io.inc"

; Arithmetic Shifts

segment .data
	message: db 'Message',0

segment .bss

segment .text
	global main

main:
	nop
	mov eax,0h
	mov bh,03H
	mov cl,bh	; first build the number to OR with
	mov ebx,1
	shl ebx,cl	; shift left cl times
	or  eax,ebx	; turn on bit

end_main:
	mov eax,1
	mov ebx,0
	int 80H
