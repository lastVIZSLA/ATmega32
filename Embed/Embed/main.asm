
.INCLUDE"M32DEF.INC"
.ORG 0x00



LDI R17,0xFF
OUT DDRA,R17


LOOP:
DEC R17
OUT PORTA, R17
BRNE LOOP
LDI R17,0XFF
JMP LOOP