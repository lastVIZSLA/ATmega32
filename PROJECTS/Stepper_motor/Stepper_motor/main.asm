.INCLUDE"M32DEF.INC"
.ORG 0x00
LDI R16,HIGH(RAMEND)
OUT SPH,R16
LDI R16, LOW(RAMEND)
OUT SPL,R16

LDI R16,0xFF
OUT DDRA,R16
	LOOP:
		LDI R16,0xFF
		OUT PORTA,R16
		CALL DELAY
		LDI R16,0x00
		OUT PORTA,R16
		CALL DELAY
		RJMP LOOP
	DELAY:
		
    ldi  r18, 6
    ldi  r19, 19
    ldi  r20, 174
L1: dec  r20
    brne L1
    dec  r19
    brne L1
    dec  r18
    brne L1

	RET

