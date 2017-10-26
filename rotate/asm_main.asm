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
        mov ax, 0C123H
        rol ax, 1 ; ax = 8247H, CF = 1
b1:
        rol ax, 1 ; ax = 048FH, CF = 1
b2:
        rol ax, 1 ; ax = 091EH, CF = 0
b3:
        ror ax, 2 ; ax = 8247H, CF = 1
b4:
        ror ax, 1 ; ax = C123H, CF = 1
b5:
        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


