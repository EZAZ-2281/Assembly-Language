;imb character display
.model small
.stack 100h
.code
main proc
    mov ah,2    ;display charater function
    mov cx,256  ;number of character to display
    mov dl,0    ;dl has a ascii code of null character
    
    level1:
    int 21h     ;display a character
    inc dl      ;incerement ascii code
    dec cx      ;decrement counter 
    jnz level1  ;jnz(jump if not zero) keep going if cx not zero 
    
    exit: 
    mov ah,4ch
    int 21h
    main endp
end main   
;jump and loop instruction transfer control to another part of the program. 
