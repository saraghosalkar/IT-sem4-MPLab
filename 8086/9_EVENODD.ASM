.model small
.data
array db 12h,23h,26h,23h,25h,36h,2fh,33h,10h,35h
.code
start:
        mov ax,@data
        mov ds,ax
        mov cl,10
        mov SI,2000h
        mov DI,2008h
        lea bp,array
   back:mov al,ds:[bp]
        mov bl,al
        and al,01H
        jz next
        mov [DI],bl
        inc DI
        jmp skip
   next:mov [SI],bl
        inc SI
   skip:inc bp
        dec cl
        jnz back
        int 03H
        end start

