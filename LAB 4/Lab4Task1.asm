.Model Tiny
.386
.DATA
	FILE	DB	'ABCD.txt',0
	MYNAME	DB	'Shivankit' 
	NEWLINE	DB	0DH, 0AH
	IDNO	DB	'2015A7PS076P' 
	NEWLINE2	DB		0DH, 0AH
	
.CODE
.Startup
	
	;CREATING THE FILE
	MOV	AH, 3CH 
	LEA	DX,	FILE
	MOV CL, 2;
	INT 21H
	
	;OPENING THE FILE
	LEA DX, FILE 
	MOV AH, 3DH
	MOV AL, 02H
	INT 21H
	
	;WRITING DATA INTO THE FILE
	MOV BX,AX ;TRANSFERRING THE FILE HANDLE
	MOV AH, 40H
	MOV	CX,	25
	LEA	DX, MYNAME 
	INT 21H
	
	;CLOSING THE FILE
	MOV AH, 3EH 
	INT 21H
	
.EXIT
END
	 
	
	
	
		