;: Scrieţi un subprogram care să primească două numere de 16 biţi, fără semn, ca 
;parametri de intrare (transmişi prin intermediul stivei) şi să returneze maximul celor două 
;numere (prin intermediul registrului AX). Exemplificaţi modul de utilizare al subprogramului 
;într-un program care compară trei numere de 16 biţi, fără semn definite în program ca variabile 
;de tip word (şi denumite alpha, beta şi gamma) în vederea găsirii maximului lor.

org 100h

main:

    mov AX, alpha
    mov BX, beta
    mov DX, gamma
    
    push BX
    push AX
    
    call subprogram 
    add SP, 4
    
    push DX
    push AX
    
    call subprogram 
    add SP, 4
    
    int 20h
    
subprogram:

    mov BP, SP
    mov AX, [BP + 2]
    mov BX, [BP + 4]
    
    cmp AX, BX
    ja exit 
    mov AX, BX
    
exit: 

    ret
    
alpha dw 10
beta dw 5
gamma dw 13

ret 
