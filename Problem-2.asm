org 100h

.data    
even db 'The number is even number $'
odd db 'The number is odd number$'

.code
main proc
mov ax,@data
mov ds,ax   

mov ah,1    ;input
int 21h
sub al,48 

mov bl,2
div bl
cmp ah,0
je evennumber
mov ah,9
lea dx,odd
int 21h
jmp finish      

evennumber:
mov ah,9
lea dx,even
int 21h  

finish:
ret
