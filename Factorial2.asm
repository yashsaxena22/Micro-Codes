DATA SEGMENT
    N DB 08H
DATA ENDS
CODE SEGMENT
    ASSUME CS: CODE DS: DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,01H
    LEA SI,N
    MOV CX,[SI]
    BACK:
    MUL CX 
    LOOP BACK
    MOV [SI+1],AX
    MOV [SI+3],DX
CODE ENDS
END START