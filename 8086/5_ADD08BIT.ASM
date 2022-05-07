.model small
.data
a dw 34H
b dw 21H
.code
start:
        mov ax,@data
        mov ds,ax
        mov ax,a
        mov bx,b
        add al,bl
        daa
        mov bl,al
        adc ah,bh
        mov al,ah
        daa
        mov bh,al
        mov ch,02h
        mov cl,02h
     I2:rol bx,cl
        mov dl,bl
        and dl,0fH
        cmp dl,09
        jbe I4
        add dl,07
     I4:add dl,30H
        mov ah,02
        int 21H
        dec ch
        jnz I2
        mov ah,4cH
        int 21H
        end start

