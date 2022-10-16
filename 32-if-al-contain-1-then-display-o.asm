.model small
.stack 100h
.code 
main proc
    
    mov ah,1
    int 21h
    ;mov bl,al
    
    cmp al,1
    je one_or_three
    cmp al,3
    je one_or_three   
    
    cmp al,2
    je two_or_four
    cmp al,4
    je two_or_four 
    ;jmp exit
    
    one_or_three:
        mov ah,2
        mov dl,'o'
        int 21h   
        jmp exit
    
    two_or_four: 
        mov ah,2
        mov dl,'e'
        int 21h  
        jmp exit
        
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
