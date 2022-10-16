.model small
.stack 100h 
.data
er db 'positive$'
.code
main proc
         
    mov ax,@data     
    mov ds,ax
              
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,0
    jl negative
    jz zero
    jg positive
    
    negative: 
        mov bl,-1
        jmp exit
    zero:
        mov bl,0
        jmp exit
    positive:
        mov ah,9
        lea dx,er 
        int 21h       
        jmp exit
     
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main
