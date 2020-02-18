EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D7C9607
P 1250 1250
F 0 "J1" H 1312 1294 50  0000 L CNN
F 1 "Input" H 1403 1294 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 1250 1250 50  0001 C CNN
F 3 "~" H 1250 1250 50  0001 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5D7C99BF
P 2250 1350
F 0 "J2" V 2312 1394 50  0000 L CNN
F 1 "Output" V 2403 1394 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 2250 1350 50  0001 C CNN
F 3 "~" H 2250 1350 50  0001 C CNN
	1    2250 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5D7CA86C
P 1750 1000
F 0 "R1" H 1820 1046 50  0000 L CNN
F 1 "1k" H 1820 955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1680 1000 50  0001 C CNN
F 3 "~" H 1750 1000 50  0001 C CNN
	1    1750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1350 1900 1350
Wire Wire Line
	1450 1250 1750 1250
Wire Wire Line
	1750 1150 1750 1250
Connection ~ 1750 1250
Wire Wire Line
	1750 1250 2050 1250
$Comp
L Device:LED LED1
U 1 1 5D7CE818
P 2200 1000
F 0 "LED1" H 2193 1216 50  0000 C CNN
F 1 "LED" H 2193 1125 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm_IRBlack" H 2200 1000 50  0001 C CNN
F 3 "~" H 2200 1000 50  0001 C CNN
	1    2200 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 850  2350 850 
Wire Wire Line
	2350 850  2350 1000
Wire Wire Line
	2050 1000 1900 1000
Wire Wire Line
	1900 1000 1900 1350
Connection ~ 1900 1350
Wire Wire Line
	1900 1350 2050 1350
$EndSCHEMATC
