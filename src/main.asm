.include "inc/m644def.inc"
jmp initialize
.include "./sleep.asm"

initialize:
    ; set portc to output
    ser r16
    out DDRC, r16


codeloop:
    ldi r16, 0b00000011
    out PORTC, r16

    call init_sleep
    call wait_sleep
  
    clr r16
    out PORTC, r16

    call init_sleep
    call wait_sleep

    jmp codeloop