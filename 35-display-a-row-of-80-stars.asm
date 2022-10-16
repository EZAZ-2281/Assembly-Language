.model small
.stack 100h
.code 
main proc
    ;lev:
    mov cx,80
    mov ah,2
    mov dl,'*' 
    lev:
    int 21h  
    loop lev
        
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
