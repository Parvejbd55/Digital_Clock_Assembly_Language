org 100h
.data
num db ?
temp db 2
prime db 'This number is prime$'
nprime db 'This number is not prime$'
.code
main proc
mov ax,@data 
mov ds,ax        

mov ah,1   ;   
int 21h
sub al,48   

mov bl,10  ;
mul bl  

mov num,al      

mov ah,1   ;
int 21h
sub al,48  

add num,al ; 

start:
mov ax,0
mov al,num
mov bl,temp
div bl
cmp ah,0    ;
je next
add temp,1
mov ah,num
cmp ah,temp 

je last    

jmp start    

last:
mov ah,9
lea dx,prime
int 21h 
jmp finish   

next:
mov ah,9
lea dx,nprime
int 21h         

finish:         

ret