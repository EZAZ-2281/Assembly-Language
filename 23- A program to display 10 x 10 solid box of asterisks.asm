.model small
.stack 100h
.code
main proc
    
    mov cx,10   ;loop will be running 10 times.    
    
    star:
    mov ah,2
    mov dl,'*'
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    loop star
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main