ADC EQU 0x20

 org 0x00 ;Inicio del programa en la posici�n cero de memoria
 nop ;Libre (uso del debugger)

_inicio
	bcf STATUS,RP0 ;Ir banco 0
	bcf STATUS,RP1
	movlw b'01000001' ;A/D conversion Fosc/8
	movwf ADCON0
	;     	     7     6     5    4    3    2       1 0
	; 1Fh ADCON0 ADCS1 ADCS0 CHS2 CHS1 CHS0 GO/DONE � ADON
	bsf STATUS,RP0 ;Ir banco 1
	bcf STATUS,RP1
	movlw b'00000111'
	movwf OPTION_REG ;TMR0 preescaler, 1:156
	;                7    6      5    4    3   2   1   0 
	; 81h OPTION_REG RBPU INTEDG T0CS T0SE PSA PS2 PS1 PS0
	movlw b'00001110' ;A/D Port AN0/RA0
	movwf ADCON1
	;            7    6     5 4 3     2     1     0 
	; 9Fh ADCON1 ADFM ADCS2 � � PCFG3 PCFG2 PCFG1 PCFG0
	bsf TRISA,0 ;RA0 linea de entrada para el ADC
	clrf TRISB
    bcf STATUS,RP0 ;Ir banco 0
	bcf STATUS,RP1
	clrf PORTB ;Limpiar PORTB

_bucle
	btfss INTCON,T0IF
	goto _bucle ;Esperar que el timer0 desborde
	bcf INTCON,T0IF ;Limpiar el indicador de desborde
	bsf ADCON0,GO ;Comenzar conversion A/D
_espera
	btfsc ADCON0,GO ;ADCON0 es 0? (la conversion esta completa?)
	goto _espera ;No, ir _espera
	movf ADRESH,W ;Si, W=ADRESH
	; 1Eh ADRESH A/D Result Register High Byte
		; 9Eh ADRESL A/D Result Register Low Byte 
	movwf ADC ;ADC=W
	rrf ADC,F ;ADC /4
	rrf ADC,F
	bcf ADC,7
	bcf ADC,6
	movfw ADC ;W = ADC
	call _tablas
	movwf PORTB ;PORTB = W
	movlw D'32' ;Comparamos el valor del ADC para saber si es menor que 128
	subwf ADC,W
	btfss STATUS,C ;Es mayor a 128?
	goto _desactivar ;No, desactivar RC7
	bsf PORTC,7 ;Si, RC7 = 1 logico
	goto _bucle ;Ir bucle
_desactivar
	bcf PORTB,7 ;RC7 = 0 logico
	goto _bucle ;Ir bucle
	
_tablas
	ADDWF PCL, 1
	RETLW b'00111111'			;0
	RETLW b'00000110'			;1
	RETLW b'01011011'			;2
	RETLW b'01001111'			;3
	RETLW b'01100110'			;4
	RETLW b'01101101'			;5
	RETLW b'01111101'			;6
	RETLW b'00100111'			;7
	RETLW b'01111111'			;8
	RETLW b'01101111'			;9
	RETLW b'01110111'			;A
	RETLW b'01111100'			;B
	RETLW b'00111001'			;C
	RETLW b'01011110'			;D
	RETLW b'01111001'			;E
	RETLW b'01110001'			;F	
end