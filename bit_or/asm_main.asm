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
        xor eax,eax
        mov ax, 0xC123
b1:
        mov bx, 0xE831
        or ax, bx
b2:

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


