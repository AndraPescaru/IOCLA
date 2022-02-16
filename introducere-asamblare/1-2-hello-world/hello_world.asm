%include "printf32.asm"

section .data
    myString: db "Hello, World!", 0
    myString2: db "Goodbye, World!", 0

section .text
    global main
    extern printf

main:
    mov ecx, 6                      ; N = valoarea registrului ecx
    mov eax, 2
    mov ebx, 0
bucla:
    cmp ecx, ebx
    jg print  
    cmp ecx, ebx
    je print2                      ; TODO1: eax > ebx?
    ret

print:
    PRINTF32 `%s\n\x0`, myString
    add ebx, 1
    jmp bucla

print2:
    PRINTF32 `%s\n\x0`, myString2
                                    ; TODO2.2: afisati "Hello, World!" de N ori
                                    ; TODO2.1: afisati "Goodbye, World!"

    ret
