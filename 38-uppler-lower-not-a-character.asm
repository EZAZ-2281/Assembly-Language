.model small
.stack 100h   
.data
upper db 'uppercase$'
lower db 'lowercase$'
nota db 'not a letter$'
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'A'
    jl lev
    cmp bl,'Z'
    jg lev
    lea dx,upper
    mov ah,9
    int 21h 
    jmp exit     
    
    lev:
        cmp bl,'a'
        jl not_letter
        cmp bl,'z'
        jg not_letter
        lea dx,lower
        mov ah,9
        int 21h  
        jmp exit
    
    not_letter:
        lea dx,nota
        mov ah,9
        int 21h  
        jmp exit
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
