vari1 EQU 0X26
vari2 EQU 0X27
vari3 EQU 0X28
varMi EQU 0x29
varCe EQU 0x30
varDe EQU 0x31 
varUn EQU 0x32 
CONTA1 EQU 0X20
CONTA2 EQU 0X21
CONTA3 EQU 0X23
CONTA4 EQU 0X24
 
 ORG 0X00
 GOTO START

START
 BSF STATUS,5               ;Ingresando al banco 1}
 BSF TRISC, 0               ;ENTRADA 1 PUERTO C
 CLRF TRISB                 ;todo salida de puerto B
 CLRF TRISD                 ;Todo salida puerto D
 BCF STATUS, RP0
 BCF STATUS,5               ;Se pasa al banco 0
 GOTO INICIO

EncenderM
 MOVF varMi, W
 MOVWF PORTB
 MOVLW 0X7F                 ;Encender todos menos pin 7, PORT D
 MOVWF PORTD
 RETURN

EncenderC
 MOVF varCe, W
 MOVWF PORTB
 MOVLW 0XBF                 ;Encender todos menos pin 6, PORT D
 MOVWF PORTD
 RETURN

EncenderD
 MOVF varDe, W
 MOVWF PORTB
 MOVLW 0XDF                 ;Encender todos menos pin 6, PORT D
 MOVWF PORTD
 RETURN

EncenderU
 MOVF varUn, W
 MOVWF PORTB
 MOVLW 0XEF                 ;Encender todos menos pin 6, PORT D
 MOVWF PORTD
 RETURN

Milla
 MOVLW b'00111111'          ;0
 MOVWF varMi
 CALL Centena
 MOVLW b'00000110'          ;1
 MOVWF varMi
 CALL Centena
 MOVLW b'01011011'          ;2
 MOVWF varMi
 CALL Centena
 MOVLW b'01001111'          ;3
 MOVWF varMi
 CALL Centena
 MOVLW b'01100110'          ;4
 MOVWF varMi
 CALL Centena
 MOVLW b'01101101'          ;5
 MOVWF varMi
 CALL Centena
 MOVLW b'01111101'          ;6
 MOVWF varMi
 CALL Centena
 MOVLW b'00000111'          ;7
 MOVWF varMi
 CALL Centena
 MOVLW b'01111111'          ;8
 MOVWF varMi
 CALL Centena
 MOVLW b'01101111'          ;9
 MOVWF varMi
 CALL Centena

 RETURN

Centena
 MOVLW b'00111111'          ;0
 MOVWF varCe
 CALL Decena
 MOVLW b'00000110'          ;1
 MOVWF varCe
 CALL Decena
 MOVLW b'01011011'          ;2
 MOVWF varCe
 CALL Decena
 MOVLW b'01001111'          ;3
 MOVWF varCe
 CALL Decena
 MOVLW b'01100110'          ;4
 MOVWF varCe
 CALL Decena
 MOVLW b'01101101'          ;5
 MOVWF varCe
 CALL Decena
 MOVLW b'01111101'          ;6
 MOVWF varCe
 CALL Decena
 MOVLW b'00000111'          ;7
 MOVWF varCe
 CALL Decena
 MOVLW b'01111111'          ;8
 MOVWF varCe
 CALL Decena
 MOVLW b'01101111'          ;9
 MOVWF varCe
 CALL Decena
 RETURN

Decena
 MOVLW b'00111111'          ;0
 MOVWF varDe
 CALL Unidad
 MOVLW b'00000110'          ;1
 MOVWF varDe
 CALL Unidad
 MOVLW b'01011011'          ;2
 MOVWF varDe
 CALL Unidad
 MOVLW b'01001111'          ;3
 MOVWF varDe
 CALL Unidad
 MOVLW b'01100110'          ;4
 MOVWF varDe
 CALL Unidad
 MOVLW b'01101101'          ;5
 MOVWF varDe
 CALL Unidad
 MOVLW b'01111101'          ;6
 MOVWF varDe
 CALL Unidad
 MOVLW b'00000111'          ;7
 MOVWF varDe
 CALL Unidad
 MOVLW b'01111111'          ;8
 MOVWF varDe
 CALL Unidad
 MOVLW b'01101111'          ;9
 MOVWF varDe
 CALL Unidad
 
 RETURN

Unidad
 MOVLW b'00111111'          ;0
 MOVWF varUn
 CALL RETARDO100MS

 MOVLW b'00000110'          ;1
 MOVWF varUn
 CALL RETARDO100MS
            
 MOVLW b'01011011'          ;2
 MOVWF varUn
 CALL RETARDO100MS
            
 MOVLW b'01001111'          ;3
 MOVWF varUn
 CALL RETARDO100MS
         
 MOVLW b'01100110'          ;4
 MOVWF varUn
 CALL RETARDO100MS
           
 MOVLW b'01101101'          ;5
 MOVWF varUn
 CALL RETARDO100MS
            
 MOVLW b'01111101'          ;6
 MOVWF varUn
 CALL RETARDO100MS
              
 MOVLW b'00000111'          ;7
 MOVWF varUn
 CALL RETARDO100MS
            
 MOVLW b'01111111'	        ;8
 MOVWF varUn
 CALL RETARDO100MS

 MOVLW b'01101111'	        ;9
 MOVWF varUn
 CALL RETARDO100MS

 RETURN

RETARDO100MS
 MOVLW D'2'
 MOVWF CONTA1
BUCLE2
 MOVLW D'75'
 MOVWF CONTA2
BUCLE1
 CALL EncenderU
 CALL RETARDO10MS
 CALL EncenderD
 CALL RETARDO10MS
 CALL EncenderC
 CALL RETARDO10MS
 CALL EncenderM
 CALL RETARDO10MS
 DECFSZ CONTA2, 1
 GOTO BUCLE1
 DECFSZ CONTA1, 1
 GOTO BUCLE2
 RETURN


RETARDO10MS
 MOVLW D'1'
 MOVWF CONTA3
BUCLE4
 MOVLW D'190'
 MOVWF CONTA4
BUCLE3
 NOP
 DECFSZ CONTA4, 1
 GOTO BUCLE3
 DECFSZ CONTA3, 1
 GOTO BUCLE4
 RETURN


INICIO
 MOVLW 0X00 
 MOVWF PORTB
 BTFSS PORTC, 0             ;Validar si el pin 1 de a esta encendido
 CALL Milla                 ;Condicion falsa, decimal
 GOTO INICIO

END