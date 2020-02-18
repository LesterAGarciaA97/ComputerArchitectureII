EESchema Schematic File Version 4
LIBS:receptor-cache
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
L Connector:Conn_01x03_Male J1
U 1 1 5D801336
P 1150 1650
F 0 "J1" H 1258 1931 50  0000 C CNN
F 1 "Conn_01x03_Male" H 1258 1840 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 1150 1650 50  0001 C CNN
F 3 "~" H 1150 1650 50  0001 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D8017ED
P 1450 2400
F 0 "R1" H 1520 2446 50  0000 L CNN
F 1 "220" H 1520 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1380 2400 50  0001 C CNN
F 3 "~" H 1450 2400 50  0001 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D801A73
P 1800 1950
F 0 "R2" H 1870 1996 50  0000 L CNN
F 1 "1k" H 1870 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1730 1950 50  0001 C CNN
F 3 "~" H 1800 1950 50  0001 C CNN
	1    1800 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D8021E1
P 3650 1900
F 0 "R3" H 3720 1946 50  0000 L CNN
F 1 "220" H 3720 1855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 3580 1900 50  0001 C CNN
F 3 "~" H 3650 1900 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5D8023FF
P 1700 750
F 0 "Q1" H 1890 796 50  0000 L CNN
F 1 "2N3904" H 1890 705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1700 750 50  0001 L CNN
	1    1700 750 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5D8027DA
P 3250 1200
F 0 "Q2" H 3440 1246 50  0000 L CNN
F 1 "2N3904" H 3440 1155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3450 1125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3250 1200 50  0001 L CNN
	1    3250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D805AB6
P 2300 1500
F 0 "D1" H 2293 1716 50  0000 C CNN
F 1 "LED" H 2293 1625 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 2300 1500 50  0001 C CNN
F 3 "~" H 2300 1500 50  0001 C CNN
	1    2300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1550 1650 1550
Wire Wire Line
	1650 1550 1650 1800
Wire Wire Line
	1650 2250 1450 2250
Wire Wire Line
	1450 2550 2000 2550
Wire Wire Line
	2000 2550 2000 1350
Wire Wire Line
	2000 1350 2300 1350
Wire Wire Line
	1500 750  1500 1100
Wire Wire Line
	1500 1100 2550 1100
Wire Wire Line
	2550 1100 2550 1650
Wire Wire Line
	2550 1650 2300 1650
Wire Wire Line
	1800 950  1800 1650
Wire Wire Line
	1800 1650 1350 1650
Wire Wire Line
	1800 550  2700 550 
Wire Wire Line
	2700 550  2700 1200
Wire Wire Line
	2700 2100 1800 2100
Wire Wire Line
	1650 1800 1800 1800
Connection ~ 1650 1800
Wire Wire Line
	1650 1800 1650 2250
Wire Wire Line
	3050 1200 2700 1200
Connection ~ 2700 1200
Wire Wire Line
	2700 1200 2700 2100
Wire Wire Line
	1650 2250 3350 2250
Wire Wire Line
	3350 2250 3350 1400
Connection ~ 1650 2250
Wire Wire Line
	3350 1000 3650 1000
Wire Wire Line
	3650 1000 3650 1500
Wire Wire Line
	1800 1650 2200 1650
Wire Wire Line
	2200 1650 2200 2000
Wire Wire Line
	2200 2000 3100 2000
Wire Wire Line
	3100 2000 3100 2500
Wire Wire Line
	3100 2500 3650 2500
Wire Wire Line
	3650 2500 3650 2050
Connection ~ 1800 1650
Wire Wire Line
	1350 1750 1350 2800
Wire Wire Line
	1350 2800 4000 2800
Wire Wire Line
	4000 2800 4000 1500
Wire Wire Line
	4000 1500 3650 1500
Connection ~ 3650 1500
Wire Wire Line
	3650 1500 3650 1750
$EndSCHEMATC
