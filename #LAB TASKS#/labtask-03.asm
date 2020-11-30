
; TASK NO 1

[org 0x0100]
  jmp start

 dividend: dw 13
 divisor: db 3

  start:
  
  mov ax,[dividend]
  mov bl,[divisor]

  div bl
     mov dh,ah           ;qoutient
     mov dl,al            ; remainder

     mov ax,0x4c00
     int 0x21
     
; TASK NO 2


[org 0x0100]
   jmp start

    multiplicand: dw 0xA5
    multiplier: db 0x25
    answer: dw 0

     start:

      mov cl,8
      mov al,[multiplier]
      outer:
      shr al,1
      jnc down

               mov dl,[multiplicand]
               add byte[answer],dl
               mov dl,[multiplicand+1]
               adc byte[answer+1],dl
               down:

               shl byte[multiplicand],1
               rcl byte[multiplier+1],1

               dec cl
               jnz outer

    mov ax,0x4c00
    int 0x21

    


