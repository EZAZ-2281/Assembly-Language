.model small
.stack 100h
.code 
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,0
    jnl exit      ;jump if not less than or equal to, no, exit
    neg bl
        
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
