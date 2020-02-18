EESchema Schematic File Version 4
LIBS:relays-cache
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
L SRD-05VDC-SL-C:SRD-05VDC-SL-C K1
U 1 1 5D7EE550
P 1900 1900
F 0 "K1" H 1900 2267 50  0000 C CNN
F 1 "Relay" H 1900 2176 50  0000 C CNN
F 2 "SRD-05VDC-SL-C:RELAY_SRD-05VDC-SL-C" H 1900 1900 50  0001 L BNN
F 3 "None" H 1900 1900 50  0001 L BNN
F 4 "5V Trigger Relay Module For Arduino And Raspberry Pi 5V Trigger Relay Module For Arduino And Raspberry Pi" H 1900 1900 50  0001 L BNN "Field4"
F 5 "None" H 1900 1900 50  0001 L BNN "Field5"
F 6 "Unavailable" H 1900 1900 50  0001 L BNN "Field6"
F 7 "Songle Relay" H 1900 1900 50  0001 L BNN "Field7"
F 8 "SRD-05VDC-SL-C" H 1900 1900 50  0001 L BNN "Field8"
	1    1900 1900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5D7EF430
P 950 1400
F 0 "J2" H 1058 1681 50  0000 C CNN
F 1 "Inputs" H 1058 1590 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 950 1400 50  0001 C CNN
F 3 "~" H 950 1400 50  0001 C CNN
	1    950  1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5D7EFC93
P 1500 2650
F 0 "J1" H 1528 2626 50  0000 L CNN
F 1 "DataIn" H 1528 2535 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1500 2650 50  0001 C CNN
F 3 "~" H 1500 2650 50  0001 C CNN
	1    1500 2650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5D7F01A2
P 3050 1800
F 0 "J3" H 3078 1776 50  0000 L CNN
F 1 "DataOut" H 3078 1685 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 3050 1800 50  0001 C CNN
F 3 "~" H 3050 1800 50  0001 C CNN
	1    3050 1800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5D7F0896
P 1900 1050
F 0 "Q1" H 2090 1096 50  0000 L CNN
F 1 "2N3904" H 2090 1005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2100 975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1900 1050 50  0001 L CNN
	1    1900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1300 2000 1300
Wire Wire Line
	2000 1300 2000 1250
Wire Wire Line
	1150 1500 1700 1500
Wire Wire Line
	1700 1500 1700 1050
Wire Wire Line
	2000 850  1500 850 
Wire Wire Line
	1500 850  1500 1800
Wire Wire Line
	1500 1800 1600 1800
Wire Wire Line
	1150 1400 1450 1400
Wire Wire Line
	1450 1400 1450 2100
Wire Wire Line
	1450 2100 1600 2100
Wire Wire Line
	2400 2650 2400 1900
Wire Wire Line
	2400 1900 2200 1900
Wire Wire Line
	1700 2650 2000 2650
Wire Wire Line
	2200 2100 2850 2100
Wire Wire Line
	2850 2100 2850 1900
Wire Wire Line
	2200 1800 2850 1800
Wire Wire Line
	1700 2550 2000 2550
Wire Wire Line
	2000 2550 2000 2650
Connection ~ 2000 2650
Wire Wire Line
	2000 2650 2400 2650
$EndSCHEMATC
