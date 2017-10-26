%include "asm_io.inc"

; Arithmetic Shifts

segment .data
	message: db 'Message',0

segment .bss

segment .text
	global main

main:
	nop
	mov eax,0C123H
	mov ebx,0	;bl will contain the count of ON bits
	mov ecx,32	;ecx is the loop counter
count_loop:
	shl eax, 1	; shift bit into carry flag
	jnc skip_inc    ; if cf == 0, goto skip_inc
	inc bl
skip_inc:
	loop count_loop

end_prog:
	mov eax,1
	mov ebx,0
	int 80H
