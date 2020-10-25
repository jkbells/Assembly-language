
; A program in assmebly that swap the two values using only two registers

[org 0x100]

mov ax,15
mov bx,10

sub ax,bx

mov cx,ax
mov ax,15

; using loop  
 
l1:
sub ax,1
add bx,1
sub cx,1
jnz l1


mov ax,0x4c00
int 0x21

