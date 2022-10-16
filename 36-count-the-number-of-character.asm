.model small
.stack 100h
.code 
main proc
    
    mov dx,0      ;dx count character
    mov ah,1
    int 21h
    mov bl,al
    
    while: 
        cmp bl,0dh      ;cr?
        je exit
        inc dx
        int 21h
        jmp while  
        
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
