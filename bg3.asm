TITLE BG (SIMPLFIED .EXE FORMAT)
.MODEL SMALL
.386P
;---------------------------------------------
.STACK 32
;---------------------------------------------
.DATA
;---------------------------------------------GAME SCREEN---------------------------------------
L1 		DB		'                                                                                     ', 0DH
        DB		'  -----------     ------    ------------ ------------ ----         ------------      ', 0DH
        DB		'  ***********    ********   ************ ************ ****         ************      ', 0DH
        DB		'  ----       -  ----------  ------------ ------------ ----         ----              ', 0DH   
        DB		'  ***********  ****    ****     ****         ****     ****         ************      ', 0DH
        DB		'  -----------  ------------     ----         ----     ----         ------------      ', 0DH
        DB		'  ****       * ************     ****         ****     ************ ****              ', 0DH
        DB		'  -----------  ----    ----     ----         ----     ------------ ------------      ', 0DH
        DB		'  ***********  ****    ****     ****         ****     ************ ************      ', 0DH, 0AH
        DB		'           ------------ -----------  --------  ----------   ------------        ', 0DH 
        DB		'           ************ ***********  ********  ************ ************        ', 0DH
        DB		'           ----         ----    ---    ----    --        -- ----                ', 0DH
        DB		'           ****  ****** *********      ****    **        ** ************        ', 0DH
        DB		'           ----  ------ ---------      ----    --        -- ------------        ', 0DH
        DB		'           ****    **** ****  ****     ****    **        **        *****        ', 0DH
        DB		'           ------------ ----   ----  --------  ------------ ------------        ', 0DH
        DB		'           ************ ****    **** ********  **********   ************        ', 0DH, 0AH, '$'

INST2	DB		'DESTROY ALL SHIPS$'
INST3	DB		'Press any key to start$'
INST	DB		'PRESS E for EXIT$'

L2 	  DB        '                                                                                 ', 0DH
      DB        '                                       |\/                                       ', 0DH
      DB		'                                       ---                                       ', 0DH  
      DB		'                                       / | [                                     ', 0DH
      DB		'                                !      | |||                                     ', 0DH   
      DB		'                              _/|     _/|-++`                                    ', 0DH
      DB		'                          +  +--|    |--|--|_ |-                                 ', 0DH
      DB		'                       { /|__|  |/\__|  |--- |||__/                              ', 0DH
      DB		'                      +---------------___[}-_===_.|____                 /\       ', 0DH
      DB		'                  ____`-` ||___-{]_| _[}-  |     |_[___\==--            \/   _   ', 0DH
      DB		'   __..._____--==/___]_|__|_____________________________[___\==--____,------| .7 ', 0DH
      DB		'  |                                                                          /   ', 0DH 
      DB		'   \_________________________________________________________________________|   ', 0DH, 0AH, '$'

TEMP		DB		?
LOAD_STR	DB		'Loading...$'
COMPLETE_STR	DB		'Complete!     $'

INST4 DB        ' Use the arrow keys to navigate around the grid$'
INST5 DB        ' Press ENTER to attack$'
INST6 DB        ' "O" means that you have successfully hit the ship$'
INST7 DB        ' "X" means that you missed$'
INST8 DB        ' Press any key to play$' 

L3	  DB        '                                                          ||                     ', 0DH		
 	  DB        '                       |                                  ||                     ', 0DH	
 	  DB        '                |    __-__                    [:::::::::::||                     ', 0DH
 	  DB        '              __-__ /  | (                                ||                     ', 0DH
 	  DB        '             /  | ((   | |                  _._._._       ||                     ', 0DH
 	  DB        '            /(   | ||___|_.  .|             I.____________||__________/.___      ', 0DH
 	  DB        '     _    ./ |___|_|`---|-*.* (           ..I|""""""""""""  """"""""""``""/      ', 0DH     
 	  DB        '      -._/_| (   |\     |.*    \          I I|                           /       ', 0DH
 	  DB        '         *-._|.-.|-.    |*-.____*.       /  ||________........__________/        ', 0DH
 	  DB        '             |------------------*       |   |         |      |                   ', 0DH
 	  DB        '              `----------------*        |___|         |      |                   ', 0DH
 	  DB        '                                                       \____/                    ', 0DH, 0AH, '$'        

L4    DB        '    _______ _______ _______ _______    _______ _     _ _______ ______            ', 0DH
      DB        '   (_______|_______|_______|_______)  (_______|_)   (_|_______|_____ \           ', 0DH
      DB        '    _   ___ _______ _  _  _ _____      _     _ _     _ _____   _____) )          ', 0DH
      DB        '   | | (_  |  ___  | ||_|| |  ___)    | |   | | |   | |  ___) |  __  /           ', 0DH
      DB        '   | |___) | |   | | |   | | |_____   | |___| |\ \ / /| |_____| |  \ \           ', 0DH
      DB        '    \_____/|_|   |_|_|   |_|_______)   \_____/  \___/ |_______)_|   |_|          ', 0DH, 0AH, '$'

MSG   DB        'THANK YOU FOR PLAYING !$'             




;--------------GRID---------------------------
C1 DB '*#*****$'
C2 DB '##*****$'
C3 DB '*#*****$'
C4 DB '***###*$'
C5 DB '****#**$'
C6 DB '*******$'
C7 DB '***####$'

S1	DB ' #', 0DH
	DB '##', 0DH
	DB ' #', 0DH, 0AH, '$'
	
S2	DB '###', 0DH
	DB ' #', 0DH, 0AH, '$'
	
S3	DB '####', 0DH, 0AH, '$'
;-----------------FILE READING---------------
	PATHFILENAME  DB 'grid2.txt', 00H
	FR_PATHFILENAME  DB 'hs.txt', 00H
	FW_PATHFILENAME  DB 'hs.txt', 00H
	FW_FILEHANDLE    DW ?
	FILEHANDLE    DW ?
	FR_FILEHANDLE    DW ?
	OUT_FILEHANDLE DW ?

	RECORD_STR    DB 1001 DUP('$')  
	DISPLAY_STR    DB 1001 DUP('$')  
	COPY_STR    DB 1001 DUP('$')  ;length = original length of record + 1 (for $)
	MODIFIED DB 10,13, 'Modified file: $'
	STR_LEN DB ?
	STR_LEN2 DB ?

	FW_ERROR1_STR    DB 'Error in creating file.$'
	FW_ERROR2_STR    DB 'Error writing in file.$'
	FW_ERROR3_STR    DB 'Record not written properly.$'

	ERROR1_STR    DB 'Error in opening file.$'
	ERROR2_STR    DB 'Error reading from file.$'
	ERROR3_STR    DB 'No record read from file.$'
	
	DEBOG DB 'IT HAS REACHED THE NUMBER$'
;------------SHIP VARIABLES--------------------
	HIGH_SCORE DB 'HIGH SCORE: $'
	CURRENT_SCORE DB 'SCORE: $'
	NUM_MISS DB 'NO. of MISSES: $'
	SHIP_MISS DB 'You missed!$', 10,13
	SHIP_DOWN DB 'You hit part of a ship!$', 10, 13
	SHIPS_DOWN DW 0
	INPUT DB 3 DUP ('$')
	H_SCORE_STR DB 3 DUP ('$')
	C_SCORE_STR DB 3 ('$')
	MISS_STR DB 3 DUP ('$')
	H_SCORE DW 0
	C_SCORE DW 0
	MISSED DW 0
	NUM DB 0
	COUNTER DW 0
;-------CONSTANTS AND OTHER VARIABLES----------
	ZERO DW 0
	ONE DW 1
	TWO DW 2
	THREE DW 3
	FOUR DW 4
	FIVE DW 5	
	SIX DW 6
	SEVEN DW 7
	TEN DW 10
	TWELVE DW 12
	TWOSIX DW 26	
	EIGHTEEN DW 18
	FIFTY DW 50
	MISS DB 'X$'
	HIT DB 'O$'
	SPACE DB ' $'
;-------------MOVE_ARROW VARIABLES-----------	
	DL_ROW DW ?
	DH_COL DW ?
	NEW_INPUT DB ?
	X_LOC DB 1
	Y_LOC DB 1
	COUNT_X DB 1
	COUNT_Y DB 1
	COUNT DB 1
	POINTER DW 0
;---------------------------------------------

;============================================MAIN=================================================
.CODE
MAIN PROC FAR
	MOV AX,@DATA
	MOV DS,AX     	
	
	CALL DISPLAY_MENU
	CALL PRINT_GRID
	CALL MOVE_ARROW
	CALL EXIT
MAIN ENDP
;=======================================END OF MAIN=================================================

;========================================GAME SCREENS===============================================
;------------------------------------------------------------------
DISPLAY_MENU PROC NEAR
	CALL	_BLACK_SCREEN
	MOV DL, 00H
	MOV DH, 00H
	CALL	SET_CURSOR
	LEA		DX, L1
	CALL 	PRINT

	MOV		DH, 21
	MOV		DL, 25

	CALL	SET_CURSOR
	LEA		DX, INST2
	CALL	PRINT

	MOV		DH, 22
	MOV		DL, 25

	CALL	SET_CURSOR
	LEA		DX, INST
	CALL	PRINT


	MOV		DH, 23
	MOV		DL, 25

	CALL	SET_CURSOR
	LEA		DX, INST3
	CALL	PRINT

	MOV		AH, 10H				;input
	INT 	16H
	MOV		AX, 0003H
	INT		10H
	;-----------------------------
	CALL    _BLACK_SCREEN 
	MOV     DL, 8H
	MOV     DH, 6H

	CALL    SET_CURSOR
	LEA     DX, INST4
	CALL    PRINT

	MOV     DL, 8H
	MOV     DH, 7H

	CALL    SET_CURSOR
	LEA     DX, INST5
	CALL    PRINT

	MOV     DL, 8H
	MOV     DH, 8H

	CALL    SET_CURSOR
	LEA     DX, INST6
	CALL    PRINT

	MOV     DL, 8H
	MOV     DH, 9H

	CALL    SET_CURSOR
	LEA     DX, INST7
	CALL    PRINT

	MOV     DL, 00H
	MOV     DH, 10H

	CALL    SET_CURSOR
	LEA     DX, L3
	CALL    PRINT

	MOV     DL, 8H
	MOV     DH, 17H

	CALL    SET_CURSOR
	LEA     DX, INST8
	CALL    PRINT

	MOV		AH, 10H				;input
	INT 	16H

	MOV		AX, 0003H
	INT		10H

		;-----------------------------

		CALL	_BLACK_SCREEN
		MOV DL, 00H
		MOV DH, 00H
		CALL	SET_CURSOR
		LEA		DX, L2
		CALL 	PRINT

		
		MOV		DL, 22H
		MOV		DH, 15
		CALL	SET_CURSOR

        LEA		DX, LOAD_STR
        CALL	PRINT


			;MOV		TEMP, 00

	__ITERATE:
			;set cursor
			MOV		DL, TEMP
			MOV		DH, 16
			CALL	SET_CURSOR

			;display char from register
			MOV		AL, 0DBH
			MOV		AH, 02H
			MOV		DL, AL
			INT		21H

			CALL	DELAY

			INC		TEMP
			CMP		TEMP, 50H
			JE		PROCEED

			JMP		__ITERATE
PROCEED:
	RET
DISPLAY_MENU ENDP
;-------------------------------------------



;-------------------------------------------
_TERMINATE PROC	NEAR
			;set cursor
			MOV		DL, 22H
			MOV		DH, 15
			CALL	SET_CURSOR

			;display complete string
			MOV		AH, 09H
			LEA		DX, COMPLETE_STR
			INT		21H

			CALL    _BLACK_SCREEN
			MOV     DL, 00H
			MOV     DH, 7H
			CALL    SET_CURSOR

			LEA     DX, L4
			CALL    PRINT

			MOV     DL, 18H
			MOV     DH, 10H
			CALL    SET_CURSOR

			LEA     DX, MSG
			CALL    PRINT


			;set cursor
			MOV		DL, 00
			MOV		DH, 20
			CALL	SET_CURSOR

			MOV		AX, 4C00H
			INT		21H
_TERMINATE ENDP

;-----------------------------------------------
PRINT	PROC	NEAR
		MOV		AH, 09H
		INT		21H
		RET
PRINT	ENDP
;-----------------------------------------------
_INPUT	PROC	NEAR
		MOV    	AH, 01H		;checks keyboard activity
		INT    	16H

		MOV 	AH, 00H		;actually stores the input into ax
		INT 	16H

	BACK:
		RET
_INPUT	ENDP
;-----------------------------------------------
_BLACK_SCREEN	PROC	NEAR
				MOV		AX, 0003H
				INT		10H
				RET
_BLACK_SCREEN	ENDP
;-----------------------------------------------
_BORDER_SCREEN	PROC	NEAR
				MOV 	AX, 0600H
				MOV 	BH, 0BFH
				MOV 	CX, 0000H
				MOV		DX, 134FH
				INT 	10H
				RET
_BORDER_SCREEN	ENDP
;-----------------------------------------------
_MAIN_SCREEN	PROC	NEAR
				MOV 	AX, 0600H
				MOV 	BH, 0FH
				MOV 	CX, 0101H
				MOV		DX, 124EH
				INT 	10H

				MOV 	CX, 3200H
				MOV 	AH, 01H
				INT 	10H

				RET
_MAIN_SCREEN	ENDP
;-----------------------------------------------


;=======================================PROCEDURES==================================================
;-------------------------------------------------------
EXIT PROC NEAR	
	CALL CLEAR_SCREEN
	MOV AH,4CH
	INT 21H
EXIT ENDP
;-------------------------------------------------------
PRINT_GRID PROC NEAR ;Prints the grid on to the screen
	MOV DH, FIVE
	MOV DH_COL, DH
	MOV DL, ZERO
	MOV DL_ROW, DL
	CALL FILE_READ

	MOV DL, 6
	MOV DH, 1
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, HIGH_SCORE
	INT 21H
	
	CALL READ_HS
	MOV DL, 10
	MOV DH, 2
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, H_SCORE_STR
	INT 21H
	
	MOV DL, 67
	MOV DH, 1
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, CURRENT_SCORE
	INT 21H
	
	MOV DL, 32
	MOV DH, 1
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, NUM_MISS
	INT 21H
	RET
	
	MOV DL, 26
	MOV DH, 6
	CALL SET_CURSOR
PRINT_GRID ENDP
;---------------------------------------------------------------
SET_CURSOR PROC	NEAR
	MOV		AH, 02H
	MOV		BH, 00
	INT		10H
	RET
SET_CURSOR ENDP
;---------------------------------------------------------------
MOVE_ARROW PROC NEAR ;moves the cursor and checks for keys pressed

	MOV AX, SIX
	MOV DH_COL, AX
	MOV AX, TWOSIX
	MOV DL_ROW, AX
	
	ITERATE:
		MOV	DL, DL_ROW
		MOV	DH, DH_COL
		CALL SET_CURSOR
	 
		CALL DELAY
	  	
		CALL GET_KEY	
		
		CMP AL, 13;checks if the 'enter' key has been pressed
		JE ENTER_KEY
  	  
		CMP AL, 50H ;checks if the 'arrow down' key has been pressed
		JE ADD_DOWN		
	  
		CMP AL, 4BH ;checks if the 'arrow right' key has been pressed
		JE ADD_LEFT	
	  
		CMP AL, 4DH ;checks if the 'arrow left' key has been pressed
		JE ADD_RIGHT			
		
		CMP AL, 27 ;checks if the 'esc' key has been pressed
		JE EXIT_PROG
	  
		CMP AL, 48H ;checks if the 'arrow up' key has been pressed
		JE ADD_UP
		JA OTHERS
		JL OTHERS     
		
	EXIT_PROG:
		CALL EXIT
		
	ADD_UP:	 ;moves the cursor up
		MOV CX, TWO
		SUB	DH_COL, CX
		MOV CX, SIX
		DEC Y_LOC
		CMP DH_COL, CX
		JL UPPER_BORDER	
		JMP	ITERATE
		
	ADD_LEFT: ;moves the cursor left
		MOV CX, FOUR
		SUB	DL_ROW, CX
		MOV	CX, TWOSIX
		DEC X_LOC
		CMP	DL_ROW, CX
		JL LEFT_BORDER
		JMP	ITERATE
		
	ADD_DOWN: ;moves the cursor down
		MOV CX, TWO
		ADD	DH_COL, CX
		MOV CX, EIGHTEEN 
		INC Y_LOC
		CMP	DH_COL, CX
		JG LOWER_BORDER
		JMP	ITERATE
	  
	ADD_RIGHT: ;moves the cursor right
		MOV CX, FOUR
		ADD	DL_ROW, CX
		MOV CX, FIFTY 
		INC X_LOC
		CMP	DL_ROW, CX
		JG RIGHT_BORDER
		JMP	ITERATE
	  
	RIGHT_BORDER: ;locks the cursor within the right boundary
		MOV CX, FIFTY
		MOV DL_ROW, CX
		MOV CX, SEVEN
		MOV X_LOC, CX
		JMP ITERATE

	LEFT_BORDER: ;locks the cursor within the left boundary
		MOV CX, TWOSIX
		MOV DL_ROW, CX
		MOV CL, ONE
		MOV X_LOC, CX
		JMP ITERATE
		
	UPPER_BORDER: ;locks the cursor within the upper boundary
		MOV CX, SIX
		MOV DH_COL, CX
		MOV CX, ONE
		MOV Y_LOC, CX
		JMP ITERATE

	LOWER_BORDER: ;locks the cursor withing the lower boundary
		MOV CX, EIGHTEEN
		MOV DH_COL, CX
		MOV CX, SEVEN
		MOV Y_LOC, CX
		JMP ITERATE
		
	ENTER_KEY: ;when the enter key is pressed, it then checks whether player has hit a ship or not	
		CALL _GET_CHAR_AT_CURSOR 
		CMP AL, SPACE
		JE CONTINUE
		CMP AL, HIT
		JE ITERATE
		CMP AL, MISS
		JE ITERATE
		
		CONTINUE:
			CALL CHANGE_STR
			CALL TO_STRING
			JMP ITERATE	
	
	OTHERS:
		JMP ITERATE
		
	TERMINATE:
		MOV AH, 4CH
		INT 21H
		
	RET
MOVE_ARROW ENDP
;---------------------------------------------------------------
GET_KEY	PROC	NEAR
	MOV AH, 07
	INT 21H
	
	RET
GET_KEY 	ENDP
;---------------------------------------------------------------
_GET_CHAR_AT_CURSOR PROC	NEAR	
			MOV		AH, 08H
			MOV		BH, 00
			INT		10H
_GET_CHAR_AT_CURSOR ENDP
;---------------------------------------------------------------
DELAY PROC	NEAR
			mov bp, 2 ;lower value faster
			mov si, 2 ;lower value faster
		delay2:
			dec bp
			nop
			jnz delay2
			dec si
			cmp si,0
			jnz delay2
			RET
DELAY ENDP
;---------------------------------------------------------------
PRINT_SCORE PROC	NEAR
	MOV DL, 69
	MOV DH, 2
	CALL SET_CURSOR
	LEA DX, INPUT
	PUSH DX
	CALL DISPLAY
	
	MOV DL, DL_ROW
	MOV DH, DH_COL
	CALL SET_CURSOR
	RET
PRINT_SCORE ENDP
;---------------------------------------------------------------
PRINT_MISSED PROC	NEAR
	MOV DL, 37
	MOV DH, 2
	CALL SET_CURSOR
	LEA DX, MISS_STR
	PUSH DX
	CALL DISPLAY
	
	MOV DL, DL_ROW
	MOV DH, DH_COL
	CALL SET_CURSOR
	JMP ITERATE
	RET
PRINT_MISSED ENDP
;---------------------------------------------------------------
TO_STRING PROC NEAR
	MOV AL, C_SCORE
  	XOR AH, AH

	;number to convert is in AX
	;variable to store to is INPUT

	  mov  bx, 10 
	  mov  cx, 0 
	cycle1:       
	  mov  dx, 0
	  div  bx 
	  push dx 
	  inc  cx
	  cmp  ax, 0  
	  jne  cycle1 

	  mov  si, offset INPUT
	cycle2:  
	  pop  dx        
	  add  dl, 48 
	  mov  [si], dl
	  inc  si
	  loop cycle2 
	  
	  CALL PRINT_SCORE
	  CALL TO_STRING_MISS
	  CALL PRINT_MISSED

	RET
TO_STRING ENDP
;-----------------------------------------------
TO_STRING_MISS PROC NEAR
	MOV AL, MISSED
  	XOR AH, AH

	;number to convert is in AX
	;variable to store to is MISS_STR

	  mov  bx, 10 
	  mov  cx, 0 
	cycle3:       
	  mov  dx, 0
	  div  bx 
	  push dx 
	  inc  cx
	  cmp  ax, 0  
	  jne  cycle3 

	  mov  si, offset MISS_STR
	cycle4:  
	  pop  dx        
	  add  dl, 48 
	  mov  [si], dl
	  inc  si
	  loop cycle4 
	RET
TO_STRING_MISS ENDP
;-----------------------------------------------
CHECK_HS PROC NEAR
	CMP MISSED, 10
	JE GAME_OVER
	
	
	XOR AH, AH

	LEA SI, H_SCORE_STR
	MOV CX, STR_LEN2
	MOV NUM, 0
	CMP CX, 1
	JE ONE_DIGIT
	
	MOV BX, 10
	
	REPEAT:
	LEA SI, H_SCORE_STR
	MOV AL, [SI]
	SUB AL, 48
	MOV AH, 00
	MUL BX
	
	MOV NUM, AX
	MOV BX, 0
	INC SI
	
ONE_DIGIT:
	MOV AL, [SI]
	SUB AL, 48
	MOV AH, 00
	ADD NUM, AX
	
	MOV CX, C_SCORE
	CMP CX, NUM
	JG REPLACE_HS
	JLE NO_CHANGE
	
GAME_OVER:
	CALL _TERMINATE

REPLACE_HS:
	CALL FILE_WRITE
	
NO_CHANGE:
	CALL EXIT
	RET
CHECK_HS ENDP
;-----------------------------------------------
DISPLAY PROC NEAR									;display procedure		
  	POP 	BX
  	POP 	DX
  	PUSH 	BX
  	MOV 	AH, 9
  	INT 	21H
  	RET
DISPLAY ENDP
;-----------------------------------------------
FILE_READ PROC NEAR
;open file
	MOV AH, 3DH           ;requst open file
	MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
	LEA DX, PATHFILENAME
	INT 21H
	JC DISPLAY_ERROR1
	MOV FILEHANDLE, AX
  
  ;read file
	MOV AH, 3FH           ;request read record
	MOV BX, FILEHANDLE    ;file handle
	MOV CX, 1000          ;record length
	LEA DX, RECORD_STR    ;address of input area
	INT 21H
	JC DISPLAY_ERROR2
	CMP AX, 00            ;zero bytes read?
	JE DISPLAY_ERROR3

	MOV STR_LEN, AL
  
	CALL CLEAR_SCREEN
	MOV DL, DL_ROW
	MOV DH, DH_COL
	CALL SET_CURSOR
	
	;display record
	LEA DX, RECORD_STR
	MOV AH, 09
	INT 21H

	INC DL_ROW

	;close file handle
	MOV AH, 3EH           ;request close file
	MOV BX, FILEHANDLE    ;file handle
	INT 21H

	RET
  
DISPLAY_ERROR1:
  LEA DX, ERROR1_STR
  MOV AH, 09
  INT 21H

  CALL EXIT

DISPLAY_ERROR2:
  LEA DX, ERROR2_STR
  MOV AH, 09
  INT 21H

  CALL EXIT

DISPLAY_ERROR3:
  LEA DX, ERROR3_STR
  MOV AH, 09
  INT 21H
FILE_READ ENDP
;---------------------------------------------
READ_HS PROC NEAR
;open file
	MOV AH, 3DH           ;requst open file
	MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
	LEA DX, FR_PATHFILENAME
	INT 21H
	JC DISPLAY_ERROR1
	MOV FILEHANDLE, AX
	
	;read file
	MOV AH, 3FH           ;request read record
	MOV BX, FILEHANDLE    ;file handle
	MOV CX, 49          ;record length
	LEA DX, H_SCORE_STR    ;address of input area
	INT 21H
	
	JC DISPLAY_ERROR2
	CMP AX, 00            ;zero bytes read?
	JE DISPLAY_ERROR3
	
	MOV STR_LEN2, AX

	;close file handle
	MOV AH, 3EH           ;request close file
	MOV BX, FILEHANDLE    ;file handle
	INT 21H

	RET
READ_HS ENDP
;---------------------------------------------
CHANGE_STR PROC NEAR	
	MOV BL, ONE
	MOV COUNT, BL
	MOV COUNT_X, BL

	CMP Y_LOC, BL
	JE STRING_1

	MOV BL, TWO
	CMP Y_LOC, BL
	JE STRING_2

	MOV BL, THREE
	CMP Y_LOC, BL
	JE STRING_3
	
	MOV BL, FOUR
	CMP Y_LOC, BL
	JE STRING_4
	
	MOV BL, FIVE
	CMP Y_LOC, BL
	JE STRING_5
	
	MOV BL, SIX
	CMP Y_LOC, BL
	JE STRING_6
	
	MOV BL, SEVEN
	CMP Y_LOC, BL
	JE STRING_7

STRING_1:
	LEA SI, C1
	JMP CHECK_X
	
STRING_2:
	LEA SI, C2
	JMP CHECK_X

STRING_3:
	LEA SI, C3
	JMP CHECK_X

STRING_4:
	LEA SI, C4
	JMP CHECK_X
	
STRING_5:
	LEA SI, C5
	JMP CHECK_X
	
STRING_6:
	LEA SI, C6
	JMP CHECK_X
	
STRING_7:
	LEA SI, C7
	JMP CHECK_X
	
CHECK_X:
	MOV BL, COUNT_X
	CMP X_LOC, BL
	JL ADD_X
	JE CHECK_STAR
	
ADD_X:
	INC SI
	INC COUNT_X
	JMP CHECK_X
	
CHECK_STAR:
	MOV AL, [SI]	
	CMP AL, '*'
	JE PRINT_MISS
	JNE CHECK_HASH
	
CHECK_HASH:
	CMP AL, '#'
	JE PRINT_HIT
	JMP RETURN
	
PRINT_MISS:
	MOV DL, DL_ROW
	MOV DH, DH_COL
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, MISS
	INT 21H
	INC MISSED
	CALL CLEAR_BOTTOM
	MOV DL, 30
	MOV DH, 22
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, SHIP_MISS
	INT 21H
	
	CMP MISSED, 10
	JE GO_TO_EXIT
	
	JMP RETURN
	
PRINT_HIT:
	MOV DL, DL_ROW
	MOV DH, DH_COL
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, HIT
	INT 21H	
	INC C_SCORE
	CALL CLEAR_BOTTOM
	MOV DL, 28
	MOV DH, 22
	CALL SET_CURSOR
	MOV AH, 09
	LEA DX, SHIP_DOWN	
	INT 21H
	
	CMP C_SCORE, 12
	JE GO_TO_EXIT
	
	JMP RETURN 
	
GO_TO_EXIT:
	CALL CHECK_HS
RETURN:
	RET
CHANGE_STR ENDP
;---------------------------------------------
FILE_WRITE PROC NEAR
  MOV AH, 3CH           ;request create file
  MOV CX, 00            ;normal attribute
  LEA DX, FW_PATHFILENAME  ;load path and file name
  INT 21H
  JC FW_DISPLAY_ERROR1     ;if there's error in creating file, carry flag = 1, otherwise 0
  MOV FW_FILEHANDLE, AX

  ;write file
  MOV AH, 40H           ;request write record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, STR_LEN2            ;record length
  LEA DX, C_SCORE_STR    ;address of output area
  INT 21H
  JC FW_DISPLAY_ERROR2     ;if carry flag = 1, there's error in writing (nothing is written)
  CMP AX, STR_LEN2            ;after writing, set AX to size of chars nga na write
  JNE FW_DISPLAY_ERROR3
  
  ;close file handle
  MOV AH, 3EH           ;request close file
  MOV BX, FW_FILEHANDLE    ;file handle
  INT 21H
  
  RET

FW_DISPLAY_ERROR1:
  LEA DX, FW_ERROR1_STR
  MOV AH, 09
  INT 21H

  JMP EXIT

FW_DISPLAY_ERROR2:
  LEA DX, FW_ERROR2_STR
  MOV AH, 09
  INT 21H

  JMP EXIT

FW_DISPLAY_ERROR3:
  LEA DX, FW_ERROR3_STR
  MOV AH, 09
  INT 21H

FILE_WRITE ENDP
;--------------------------------------------------------------
CLEAR_SCREEN PROC NEAR  
  MOV AX, 0600H   ;full screen 
  MOV BH, 07H     ;white background (7), blue foreground (1)
  MOV CX, 0000H   ;upper left row:column (01:01)
  MOV DX, 184FH   ;lower right row:column (23:78)
  INT 10H
  RET
CLEAR_SCREEN ENDP
;---------------------------------------------------------------
CLEAR_BOTTOM PROC NEAR  
  MOV AX, 0600H   ;full screen 
  MOV BH, 07H     ;white background (7), blue foreground (1)
  MOV CX, 1618H   ;upper left row:column (01:01)
  MOV DX, 184FH   ;lower right row:column (23:78)
  INT 10H
  RET
CLEAR_BOTTOM ENDP
;---------------------------------------------------------------
END MAIN