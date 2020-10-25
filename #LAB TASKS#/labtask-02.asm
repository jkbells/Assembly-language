; task no 2

;Q#2 Write a program to sum numbers from 1 to n.
Example:
Input: n=5
Output: 1+2+3+4+5 = 15
Input: n=7
Output: 1+2+3+4+5+6+7 = 28;


[org 0x100]

mov ax,5
mov bx,0
mov cx,ax

loop:
add bx,cx
sub cx,1
jnz loop

mov ax,0x4c00
int 0x21



; task no 1

;Q#1 Write a program to swap two numbers. Your program must be generic and it should not use
the traditional swapping method. You should use CMP and loop logic as simple swapping is not
allowed. You can not fix two numbers either, any number can be smaller or greater.;

[org 0x100]

mov ax,15
mov bx,10
mov cx,ax
sub cx,bx

l1:
sub ax,1
add bx,1
sub cx,1

jnz l1

mov ax,0x4c00
int 0x21

