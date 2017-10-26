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
        mov ax,0xc123
        shl ax,1
        shr ax,1
        shr ax,1
        mov ax,0xc123
b1:
        shl ax,2
b2:
        mov cl,3
        shr ax,cl

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


