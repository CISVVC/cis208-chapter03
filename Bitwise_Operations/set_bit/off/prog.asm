%include "asm_io.inc"

; turn off a bit

segment .data
	message: db 'Message',0

segment .bss

segment .text
	global main

main:
	nop
	mov  ax,0FFFFH
	mov  bh,03H
	mov  cl,bh	; first build the number to AND with
	mov  ebx,1
	shl  ebx,cl	; shift left cl times
	not  ebx
	and  eax,ebx	; turn on bit

end_main:
	mov eax,1
	mov ebx,0
	int 80H
