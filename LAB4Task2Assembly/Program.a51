m   equ r1
i   equ r5
x   equ r2
si  equ r6
itr equ r4
j  equ r3

cseg at 0
    jmp start


start:
    mov m,#100
    mov x, #0
    mov itr, #100

loop:
    mov a, m 
    subb a, x
    mov si, a
    mov j, #10
    innerLoop:
        mov b, x    
        mov a, si  
        mul ab 
        xch a,b
        rl a
        anl b,#0x7f
        orl a,b
        mov a, m
        subb a, b

        mov si, a
        dec j
        mov a, j
    jnz innerLoop
    inc x 
    mov P3, si 
    dec itr 
    mov a, itr
    jnz loop
	end