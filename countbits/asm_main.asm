;
; file: asm_main.asm

%include "asm_io.inc"
;
; initialized data is put in the .data segment
;
segment .data

; uninitialized data is put in the .bss segment
;
segment .bss

;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
	mov 	eax,0
	mov 	eax,0c123h
	not 	eax
b1:
	mov 	bl,0
	mov 	ecx,32
count_loop:
	shl 	eax,1
	jnc 	skip_inc
	inc 	bl
skip_inc:
	loop 	count_loop
end_inc:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


