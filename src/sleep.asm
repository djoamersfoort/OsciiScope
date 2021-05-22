; https://ww1.microchip.com/downloads/en/DeviceDoc/ATmega164P-324P-644P-Data-Sheet-40002071A.pdf
; http://ww1.microchip.com/downloads/en/AppNotes/Atmel-2505-Setup-and-Use-of-AVR-Timers_ApplicationNote_AVR130.pdf
; https://avrgeeks.com/timer-interrupt-atmega16-avr/
init_sleep:
  ldi r16, (1<<TOIE0)
  out TIMSK, r16

  ldi r16, (1<<CS01)|(1<<CS00)
  out TCCR0
  
  ret

wait_sleep:
  push r16
  in r16, SREG
  out SREG, r16
  pop r16

  ret