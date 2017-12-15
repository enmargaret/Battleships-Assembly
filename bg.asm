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
INST	DB		'PRESS < esc >  for EXIT$'

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
INST6 DB        ' "O" means that you have successfully hit the ship.$'
INST7 DB        ' "X" means that you missed. There are 3 ships in total.$'
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
A1 DB '******#$'
A2 DB '*#***##$'
A3 DB '*#****#$'
A4 DB '*#**#**$'
A5 DB '*#**##*$'
A6 DB '****#**$'
A7 DB '*******$'

B1 DB '***#***$'
B2 DB '**###**$'
B3 DB '*******$'
B4 DB '**####*$'
B5 DB '*#*****$'
B6 DB '*##****$'
B7 DB '*#*****$'

C1 DB '*#*****$'
C2 DB '##*****$'
C3 DB '*#*****$'
C4 DB '***###*$'
C5 DB '****#**$'
C6 DB '*******$'
C7 DB '***####$'

D1 DB '*******$'
D2 DB '###****$'
D3 DB '*#**#**$'
D4 DB '****#**$'
D5 DB '*#**#**$'
D6 DB '*##*#**$'
D7 DB '*#*****$'

E1 DB '******#$'
E2 DB '******#$'
E3 DB '******#$'
E4 DB '******#$'
E5 DB '***#**#$'
E6 DB '***####$'
E7 DB '***#**#$'
	
S1	DB '###$', 10, 13
S2	DB ' # $', 0DH, 0AH
S3	DB '####$', 0DH, 0AH
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
	STR_LEN DW ?
	STR_LEN2 DW ?

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
	WIN DB 'YOU WIN!$', 10,13
	TYPES DB 'SHIP TYPES: $', 10, 13
	NOTE DB 'NOTE: Ship$'
	NOTE1 DB 'positions may$'
	NOTE2 DB 'vary$' 
	SHIPS_DOWN DW 0
	INPUT DB 3 DUP ('$')
	H_SCORE_STR DB 3 DUP ('$')
	MISS_STR DB 3 DUP ('$')
	H_SCORE DW 0
	C_SCORE DW 0
	MISSED DW 0
	NUM DW '$'
	RAND DB 0
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
	TWOSIX DB 26	
	EIGHTEEN DB 18
	DZERO DB 0
	DONE DB 1
	DTWO DB 2
	DFOUR DB 4
	DFIVE DB 5
	DSIX DB 6
	DSEVEN DB 7
	FIFTY DB 50
	MISS DB 'X$'
	HIT DB 'O$'
	SPACE DB ' $'
;-------------MOVE_ARROW VARIABLES-----------	
	DL_ROW DB ?
	DH_COL DB ?
	NEW_INPUT DB ?
	X_LOC DW 1
	Y_LOC DW 1
	COUNT_X DW 1
	COUNT_Y DW 1
	COUNT DW 1
	COUNTER DW ?
	SUM DW 0

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
DISPLAY_MENU PROC NEAR ;prints the main menu
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
	
	CALL GET_KEY
	CMP AL, 27 ;checks if the 'esc' key has been pressed
	JE EXIT_PROG
	;-----------------------------
	CALL    _BLACK_SCREEN ;prints the help screen
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

	CALL	_BLACK_SCREEN ;prints the loading screen
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
_TERMINATE PROC	NEAR ;displays the game over screen
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
PRINT	PROC	NEAR ;print function
	MOV		AH, 09H
	INT		21H
	RET
PRINT	ENDP
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
	
	CALL SHIP_TYPES

	RET
_MAIN_SCREEN	ENDP
;------------------------------------------------
SHIP_TYPES PROC NEAR
	MOV DL, 6
	MOV DH, 5
	CALL SET_CURSOR
	LEA DX, TYPES
	CALL PRINT
	
	MOV DL, 9
	MOV DH, 7
	CALL SET_CURSOR
	LEA DX, S1
	CALL PRINT
	
	MOV DL, 9
	MOV DH, 8
	CALL SET_CURSOR
	LEA DX, S2
	CALL PRINT
	
	MOV DL, 8
	MOV DH, 10
	CALL SET_CURSOR
	LEA DX, S3
	CALL PRINT
	
	MOV DL, 6
	MOV DH, 12
	CALL SET_CURSOR
	LEA DX, NOTE
	CALL PRINT
	
	MOV DL, 6
	MOV DH, 13
	CALL SET_CURSOR
	LEA DX, NOTE1
	CALL PRINT
	
	MOV DL, 6
	MOV DH, 14
	CALL SET_CURSOR
	LEA DX, NOTE2
	CALL PRINT
	
	RET
SHIP_TYPES ENDP
;=======================================PROCEDURES==================================================
EXIT PROC NEAR	
	CALL CLEAR_SCREEN
	MOV AH,4CH
	INT 21H
EXIT ENDP
;-------------------------------------------------------
PRINT_GRID PROC NEAR ;Prints the grid on to the screen
	MOV DH, DFIVE
	MOV DH_COL, DH
	MOV DL, DZERO
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
	
	CALL SHIP_TYPES
	
	RET
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

	CALL RANDGEN

	MOV AL, DSIX
	MOV DH_COL, AL
	MOV AL, TWOSIX
	MOV DL_ROW, AL
	
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
		MOV CL, DTWO
		SUB	DH_COL, CL
		MOV CX, SIX
		DEC Y_LOC
		CMP DH_COL, CL
		JL UPPER_BORDER	
		JMP	ITERATE
		
	ADD_LEFT: ;moves the cursor left
		MOV CL, DFOUR
		SUB	DL_ROW, CL
		MOV	CL, TWOSIX
		DEC X_LOC
		CMP	DL_ROW, CL
		JL LEFT_BORDER
		JMP	ITERATE
		
	ADD_DOWN: ;moves the cursor down
		MOV CL, DTWO
		ADD	DH_COL, CL
		MOV CL, EIGHTEEN 
		INC Y_LOC
		CMP	DH_COL, CL
		JG LOWER_BORDER
		JMP	ITERATE
	  
	ADD_RIGHT: ;moves the cursor right
		MOV CL, DFOUR
		ADD	DL_ROW, CL
		MOV CL, FIFTY 
		INC X_LOC
		CMP	DL_ROW, CL
		JG RIGHT_BORDER
		JMP	ITERATE
	  
	RIGHT_BORDER: ;locks the cursor within the right boundary
		MOV CL, FIFTY
		MOV DL_ROW, CL
		MOV CX, SEVEN
		MOV X_LOC, CX
		JMP ITERATE

	LEFT_BORDER: ;locks the cursor within the left boundary
		MOV CL, TWOSIX
		MOV DL_ROW, CL
		MOV CX, ONE
		MOV X_LOC, CX
		JMP ITERATE
		
	UPPER_BORDER: ;locks the cursor within the upper boundary
		MOV CL, DSIX
		MOV DH_COL, CL
		MOV CX, ONE
		MOV Y_LOC, CX
		JMP ITERATE

	LOWER_BORDER: ;locks the cursor withing the lower boundary
		MOV CL, EIGHTEEN
		MOV DH_COL, CL
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
	MOV AX, C_SCORE
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
	MOV AX, MISSED
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
CHECK_HS PROC NEAR	;this procedure checks if current score is higher than the saved high score
	;CMP MISSED, 10
	;JE GAME_OVER
	;CMP C_SCORE, 12
	;JE YOU_WIN
	
	CLD               			  ;clear direction flag (left to right)
  	MOV CX, COUNT        ;initializes CX (counter) to 16 bytes
  	LEA SI, H_SCORE_STR  		  ;initialize receiving address
	MOV COUNTER, 1
	MOV SUM, 0000
	CONVERT_TO_DEC:
		XOR AX, AX
	    MOV AL, [SI]
	    SUB AL, '0'
	    ADC AH, 0 				;--get rid of unneccesary values in ah
	    MOV AH, 00
	    MUL COUNTER
	    ADD SUM, AX
	    INC SI
	    MOV AX, COUNTER
	    MUL TEN
	    MOV COUNTER, AX
	    MOV AX, 0000
	LOOP CONVERT_TO_DEC

	PROCEED_TO_COMPARE:
		MOV AH, 00
		MOV AX, C_SCORE
		CMP AX, SUM
		JLE END_NORMAL
		CMP MISSED, 10
		JE GAME_OVER_NEW_HS
		;JMP CHECK_WIN
		CALL YOU_WIN 
		JMP RET1
	END_NORMAL:
		CALL GAME_OVER
	RET1:
		RET

GAME_OVER_NEW_HS:
	CALL FILE_WRITE
	CALL _TERMINATE
GAME_OVER:
	CALL _TERMINATE
	
YOU_WIN:
	CALL CLEAR_BOTTOM
	MOV DL, 34
	MOV DH, 22
	CALL SET_CURSOR
	LEA DX, WIN
	CALL PRINT
	JMP REPLACE_HS
	
REPLACE_HS:	
	CALL FILE_WRITE
	MOV AH,4CH
	INT 21H
	
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

	MOV STR_LEN, AX
  
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
CHANGE_STR PROC NEAR ;this part checks whether you have hit a ship or not
	MOV BX, ONE
	MOV COUNT_X, BX

;compares which solution to check based on the number generated	
	CMP RAND, 0
	JE ANS_1
	CMP RAND, 1
	JE ANS_2
	CMP RAND, 2
	JE ANS_3
	CMP RAND, 3
	JE ANS_4
	CMP RAND, 4
	JE ANS_5
	
ANS_1:
	MOV BX, ONE
	CMP Y_LOC, BX
	JE A_1

	MOV BX, TWO
	CMP Y_LOC, BX
	JE A_2

	MOV BX, THREE
	CMP Y_LOC, BX
	JE A_3
	
	MOV BX, FOUR
	CMP Y_LOC, BX
	JE A_4
	
	MOV BX, FIVE
	CMP Y_LOC, BX
	JE A_5
	
	MOV BX, SIX
	CMP Y_LOC, BX
	JE A_6
	
	MOV BX, SEVEN
	CMP Y_LOC, BX
	JE A_7

ANS_2:
	MOV BX, ONE
	CMP Y_LOC, BX
	JE B_1

	MOV BX, TWO
	CMP Y_LOC, BX
	JE B_2

	MOV BX, THREE
	CMP Y_LOC, BX
	JE B_3
	
	MOV BX, FOUR
	CMP Y_LOC, BX
	JE B_4
	
	MOV BX, FIVE
	CMP Y_LOC, BX
	JE B_5
	
	MOV BX, SIX
	CMP Y_LOC, BX
	JE B_6
	
	MOV BX, SEVEN
	CMP Y_LOC, BX
	JE B_7
	
	
ANS_3:
	MOV BX, ONE
	CMP Y_LOC, BX
	JE C_1

	MOV BX, TWO
	CMP Y_LOC, BX
	JE C_2

	MOV BX, THREE
	CMP Y_LOC, BX
	JE C_3
	
	MOV BX, FOUR
	CMP Y_LOC, BX
	JE C_4
	
	MOV BX, FIVE
	CMP Y_LOC, BX
	JE C_5
	
	MOV BX, SIX
	CMP Y_LOC, BX
	JE C_6
	
	MOV BX, SEVEN
	CMP Y_LOC, BX
	JE C_7
	
ANS_4:
	MOV BX, ONE
	CMP Y_LOC, BX
	JE D_1

	MOV BX, TWO
	CMP Y_LOC, BX
	JE D_2

	MOV BX, THREE
	CMP Y_LOC, BX
	JE D_3
	
	MOV BX, FOUR
	CMP Y_LOC, BX
	JE D_4
	
	MOV BX, FIVE
	CMP Y_LOC, BX
	JE D_5
	
	MOV BX, SIX
	CMP Y_LOC, BX
	JE D_6
	
	MOV BX, SEVEN
	CMP Y_LOC, BX
	JE D_7
	
ANS_5:
	MOV BX, ONE
	CMP Y_LOC, BX
	JE E_1

	MOV BX, TWO
	CMP Y_LOC, BX
	JE E_2

	MOV BX, THREE
	CMP Y_LOC, BX
	JE E_3
	
	MOV BX, FOUR
	CMP Y_LOC, BX
	JE E_4
	
	MOV BX, FIVE
	CMP Y_LOC, BX
	JE E_5
	
	MOV BX, SIX
	CMP Y_LOC, BX
	JE E_6
	
	MOV BX, SEVEN
	CMP Y_LOC, BX
	JE E_7
	
A_1:
	LEA SI, A1
	JMP CHECK_X
	
A_2:
	LEA SI, A2
	JMP CHECK_X

A_3:
	LEA SI, A3
	JMP CHECK_X

A_4:
	LEA SI, A4
	JMP CHECK_X
	
A_5:
	LEA SI, A5
	JMP CHECK_X
	
A_6:
	LEA SI, A6
	JMP CHECK_X
	
A_7:
	LEA SI, A7
	JMP CHECK_X
	
B_1:
	LEA SI, B1
	JMP CHECK_X
	
B_2:
	LEA SI, B2
	JMP CHECK_X

B_3:
	LEA SI, B3
	JMP CHECK_X

B_4:
	LEA SI, B4
	JMP CHECK_X
	
B_5:
	LEA SI, B5
	JMP CHECK_X
	
B_6:
	LEA SI, B6
	JMP CHECK_X
	
B_7:
	LEA SI, B7
	JMP CHECK_X	

C_1:
	LEA SI, C1
	JMP CHECK_X
	
C_2:
	LEA SI, C2
	JMP CHECK_X

C_3:
	LEA SI, C3
	JMP CHECK_X

C_4:
	LEA SI, C4
	JMP CHECK_X
	
C_5:
	LEA SI, C5
	JMP CHECK_X
	
C_6:
	LEA SI, C6
	JMP CHECK_X
	
C_7:
	LEA SI, C7
	JMP CHECK_X
	
D_1:
	LEA SI, D1
	JMP CHECK_X
	
D_2:
	LEA SI, D2
	JMP CHECK_X

D_3:
	LEA SI, D3
	JMP CHECK_X

D_4:
	LEA SI, D4
	JMP CHECK_X
	
D_5:
	LEA SI, D5
	JMP CHECK_X
	
D_6:
	LEA SI, D6
	JMP CHECK_X
	
D_7:
	LEA SI, D7
	JMP CHECK_X

E_1:
	LEA SI, E1
	JMP CHECK_X
	
E_2:
	LEA SI, E2
	JMP CHECK_X

E_3:
	LEA SI, E3
	JMP CHECK_X

E_4:
	LEA SI, E4
	JMP CHECK_X
	
E_5:
	LEA SI, E5
	JMP CHECK_X
	
E_6:
	LEA SI, E6
	JMP CHECK_X
	
E_7:
	LEA SI, E7
	JMP CHECK_X	
	
CHECK_X:
	MOV BX, COUNT_X
	CMP X_LOC, BX
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
  MOV CX, 2            ;record length
  LEA DX, INPUT    ;address of output area
  INT 21H
  JC FW_DISPLAY_ERROR2     ;if carry flag = 1, there's error in writing (nothing is written)
  CMP AX, 2            ;after writing, set AX to size of chars nga na write
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
RANDGEN PROC NEAR  ;generate a rand no using the system time and changes current box number accordingly

	MOV AH, 00h   ; interrupts to get system time        
	INT 1AH       ; CX:DX now hold number of clock ticks since midnight      

	mov  ax, dx
	xor  dx, dx 	 ;clear DX
	mov  cx, 5    ;
	div  cx       ; here dx contains the remainder of the division - from 0 to 2

	ADD DL, 1
	MOV RAND, DL ;RAND holds random value
	
	RET 
RANDGEN endp
;---------------------------------------------------------------
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
