.MODEL TINY
.486
.DATA
	ORG 100H
	ARRAY1 DW 7888H, 980AH, 0FFFFH, 0203H
	COUNT DW 04H
	NEG1 DB ?
.CODE
.STARTUP
	LEA SI, ARRAY1
	MOV CX, COUNT
X1: MOV AX, [SI]
	BT AX, 0FH
	JNC X2
	INC NEG1
X2: INC SI
	INC SI
	LOOP X1
	MOV DL, NEG1 ;DISPLAYING CONTENTS OF NEG1 IN DX
.EXIT
END