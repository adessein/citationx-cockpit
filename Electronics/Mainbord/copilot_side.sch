EESchema Schematic File Version 4
LIBS:Mainboard-cache
EELAYER 26 0
EELAYER END
$Descr A3 11693 16535 portrait
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1700 950  0    50   ~ 0
PFD_HSI
Text Label 1700 1050 0    50   ~ 0
PFD_WXY
Text Label 1700 1150 0    50   ~ 0
ET
Text Label 1700 1250 0    50   ~ 0
TCAS
Text Label 1700 1350 0    50   ~ 0
ACFT_SYS
Text Label 1700 1450 0    50   ~ 0
MFD_MAP
Text Label 1700 1550 0    50   ~ 0
MFD_MX
Text Label 1700 1650 0    50   ~ 0
NORM
Text HLabel 2350 850  0    50   Input ~ 0
ISR_IN
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DC02371
P 2950 1450
AR Path="/5DC02371" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DC02371" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DC02371" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC02371" Ref="U?"  Part="1" 
AR Path="/5DC31399/5DC02371" Ref="U50"  Part="1" 
F 0 "U50" H 2950 2347 60  0000 C CNN
F 1 "74HC165" H 2950 2241 60  0000 C CNN
F 2 "" H 5140 230 60  0001 C CNN
F 3 "" H 5140 230 60  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC02378
P 2350 1950
AR Path="/5DB6029E/5DC02378" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02378" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02378" Ref="#PWR0367"  Part="1" 
F 0 "#PWR0367" H 2350 1700 50  0001 C CNN
F 1 "GND" V 2355 1822 50  0000 R CNN
F 2 "" H 2350 1950 50  0001 C CNN
F 3 "" H 2350 1950 50  0001 C CNN
	1    2350 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0237E
P 3550 2100
AR Path="/5DB6029E/5DC0237E" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC0237E" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC0237E" Ref="#PWR0368"  Part="1" 
F 0 "#PWR0368" H 3550 1850 50  0001 C CNN
F 1 "GND" V 3555 1972 50  0000 R CNN
F 2 "" H 3550 2100 50  0001 C CNN
F 3 "" H 3550 2100 50  0001 C CNN
	1    3550 2100
	0    -1   -1   0   
$EndComp
NoConn ~ 3550 1850
Wire Wire Line
	4000 1650 4000 2350
Wire Wire Line
	3550 1650 4000 1650
$Comp
L Device:C_Small C?
U 1 1 5DC02387
P 3550 900
AR Path="/5DB6029E/5DC02387" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC02387" Ref="C?"  Part="1" 
AR Path="/5DC31399/5DC02387" Ref="C57"  Part="1" 
F 0 "C57" H 3642 946 50  0000 L CNN
F 1 "0.1u" H 3642 855 50  0000 L CNN
F 2 "" H 3550 900 50  0001 C CNN
F 3 "~" H 3550 900 50  0001 C CNN
	1    3550 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0238E
P 3550 1000
AR Path="/5DB6029E/5DC0238E" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC0238E" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC0238E" Ref="#PWR0369"  Part="1" 
F 0 "#PWR0369" H 3550 750 50  0001 C CNN
F 1 "GND" H 3555 827 50  0000 C CNN
F 2 "" H 3550 1000 50  0001 C CNN
F 3 "" H 3550 1000 50  0001 C CNN
	1    3550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 800  3750 800 
$Comp
L power:+3.3V #PWR?
U 1 1 5DC02395
P 3750 800
AR Path="/5DB6029E/5DC02395" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02395" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02395" Ref="#PWR0370"  Part="1" 
F 0 "#PWR0370" H 3750 650 50  0001 C CNN
F 1 "+3.3V" V 3765 928 50  0000 L CNN
F 2 "" H 3750 800 50  0001 C CNN
F 3 "" H 3750 800 50  0001 C CNN
	1    3750 800 
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DC0239B
P 1450 1250
AR Path="/5DB6029E/5DC0239B" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DC0239B" Ref="RN?"  Part="1" 
AR Path="/5DC31399/5DC0239B" Ref="RN24"  Part="1" 
F 0 "RN24" V 1967 1250 50  0000 C CNN
F 1 "R_Network08" V 1876 1250 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1925 1250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1450 1250 50  0001 C CNN
	1    1450 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 950  2350 950 
Wire Wire Line
	1650 1050 2350 1050
Wire Wire Line
	1650 1150 2350 1150
Wire Wire Line
	1650 1250 2350 1250
Wire Wire Line
	1650 1350 2350 1350
Wire Wire Line
	1650 1450 2350 1450
Wire Wire Line
	1650 1550 2350 1550
Wire Wire Line
	1650 1650 2350 1650
$Comp
L power:+3.3V #PWR?
U 1 1 5DC023AA
P 1150 1650
AR Path="/5DB6029E/5DC023AA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC023AA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC023AA" Ref="#PWR0371"  Part="1" 
F 0 "#PWR0371" H 1150 1500 50  0001 C CNN
F 1 "+3.3V" V 1165 1778 50  0000 L CNN
F 2 "" H 1150 1650 50  0001 C CNN
F 3 "" H 1150 1650 50  0001 C CNN
	1    1150 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 1650 1150 1650
Text Label 1700 2850 0    50   ~ 0
ABN
Text Label 1700 2950 0    50   ~ 0
EMER
Text Label 1700 3450 0    50   ~ 0
SKP
Text Label 1700 3550 0    50   ~ 0
PAG
Text Label 1700 4800 0    50   ~ 0
RCL
Text Label 1700 4900 0    50   ~ 0
ENT
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DC023B7
P 2950 3350
AR Path="/5DC023B7" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DC023B7" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DC023B7" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC023B7" Ref="U?"  Part="1" 
AR Path="/5DC31399/5DC023B7" Ref="U51"  Part="1" 
F 0 "U51" H 2950 4247 60  0000 C CNN
F 1 "74HC165" H 2950 4141 60  0000 C CNN
F 2 "" H 5140 2130 60  0001 C CNN
F 3 "" H 5140 2130 60  0001 C CNN
	1    2950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC023BE
P 2350 3850
AR Path="/5DB6029E/5DC023BE" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC023BE" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC023BE" Ref="#PWR0372"  Part="1" 
F 0 "#PWR0372" H 2350 3600 50  0001 C CNN
F 1 "GND" V 2355 3722 50  0000 R CNN
F 2 "" H 2350 3850 50  0001 C CNN
F 3 "" H 2350 3850 50  0001 C CNN
	1    2350 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC023C4
P 3550 4000
AR Path="/5DB6029E/5DC023C4" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC023C4" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC023C4" Ref="#PWR0373"  Part="1" 
F 0 "#PWR0373" H 3550 3750 50  0001 C CNN
F 1 "GND" V 3555 3872 50  0000 R CNN
F 2 "" H 3550 4000 50  0001 C CNN
F 3 "" H 3550 4000 50  0001 C CNN
	1    3550 4000
	0    -1   -1   0   
$EndComp
NoConn ~ 3550 3750
Wire Wire Line
	3550 3550 4000 3550
$Comp
L Device:C_Small C?
U 1 1 5DC023CC
P 3550 2800
AR Path="/5DB6029E/5DC023CC" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC023CC" Ref="C?"  Part="1" 
AR Path="/5DC31399/5DC023CC" Ref="C58"  Part="1" 
F 0 "C58" H 3642 2846 50  0000 L CNN
F 1 "0.1u" H 3642 2755 50  0000 L CNN
F 2 "" H 3550 2800 50  0001 C CNN
F 3 "~" H 3550 2800 50  0001 C CNN
	1    3550 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC023D3
P 3550 2900
AR Path="/5DB6029E/5DC023D3" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC023D3" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC023D3" Ref="#PWR0374"  Part="1" 
F 0 "#PWR0374" H 3550 2650 50  0001 C CNN
F 1 "GND" H 3555 2727 50  0000 C CNN
F 2 "" H 3550 2900 50  0001 C CNN
F 3 "" H 3550 2900 50  0001 C CNN
	1    3550 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2700 3750 2700
$Comp
L power:+3.3V #PWR?
U 1 1 5DC023DA
P 3750 2700
AR Path="/5DB6029E/5DC023DA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC023DA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC023DA" Ref="#PWR0375"  Part="1" 
F 0 "#PWR0375" H 3750 2550 50  0001 C CNN
F 1 "+3.3V" V 3765 2828 50  0000 L CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "" H 3750 2700 50  0001 C CNN
	1    3750 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DC023E0
P 1450 3150
AR Path="/5DB6029E/5DC023E0" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DC023E0" Ref="RN?"  Part="1" 
AR Path="/5DC31399/5DC023E0" Ref="RN25"  Part="1" 
F 0 "RN25" V 1967 3150 50  0000 C CNN
F 1 "R_Network08" V 1876 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1925 3150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1450 3150 50  0001 C CNN
	1    1450 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 2850 2350 2850
Wire Wire Line
	1650 3450 2350 3450
Wire Wire Line
	1650 3550 2350 3550
$Comp
L power:+3.3V #PWR?
U 1 1 5DC023EA
P 1150 3550
AR Path="/5DB6029E/5DC023EA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC023EA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC023EA" Ref="#PWR0376"  Part="1" 
F 0 "#PWR0376" H 1150 3400 50  0001 C CNN
F 1 "+3.3V" V 1165 3678 50  0000 L CNN
F 2 "" H 1150 3550 50  0001 C CNN
F 3 "" H 1150 3550 50  0001 C CNN
	1    1150 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 3550 1150 3550
Wire Wire Line
	2350 2750 2200 2750
Wire Wire Line
	2200 2750 2200 2350
Wire Wire Line
	2200 2350 4000 2350
Connection ~ 3550 800 
Connection ~ 3550 2700
$Comp
L 74xx:74HC4051 U?
U 1 1 5DC023F6
P 5650 3900
AR Path="/5DB5DCD1/5DC023F6" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC023F6" Ref="U?"  Part="1" 
AR Path="/5DC31399/5DC023F6" Ref="U55"  Part="1" 
F 0 "U55" H 5700 4578 50  0000 C CNN
F 1 "74HC4051" H 5700 4487 50  0000 C CNN
F 2 "" H 5650 3500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 5650 3500 50  0001 C CNN
	1    5650 3900
	1    0    0    -1  
$EndComp
Text Label 6250 1200 0    50   ~ 0
PFD_DIM
Text Label 6250 1300 0    50   ~ 0
MFD_DIM
Text Label 6250 1400 0    50   ~ 0
COM1_HP
Text Label 6250 2000 0    50   ~ 0
COM1_LSPK
Wire Wire Line
	5650 4500 5700 4500
$Comp
L power:GND #PWR?
U 1 1 5DC02402
P 5700 4500
AR Path="/5DB5DCD1/5DC02402" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02402" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02402" Ref="#PWR0377"  Part="1" 
F 0 "#PWR0377" H 5700 4250 50  0001 C CNN
F 1 "GND" H 5705 4327 50  0000 C CNN
F 2 "" H 5700 4500 50  0001 C CNN
F 3 "" H 5700 4500 50  0001 C CNN
	1    5700 4500
	1    0    0    -1  
$EndComp
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 5750 4500
$Comp
L Device:C_Small C?
U 1 1 5DC0240A
P 6100 3400
AR Path="/5DB5DCD1/5DC0240A" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC0240A" Ref="C?"  Part="1" 
AR Path="/5DC31399/5DC0240A" Ref="C63"  Part="1" 
F 0 "C63" V 6329 3400 50  0000 C CNN
F 1 "0.1u" V 6238 3400 50  0000 C CNN
F 2 "" H 6100 3400 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3400 6000 3400
$Comp
L power:GND #PWR?
U 1 1 5DC02412
P 6200 3400
AR Path="/5DB5DCD1/5DC02412" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02412" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02412" Ref="#PWR0378"  Part="1" 
F 0 "#PWR0378" H 6200 3150 50  0001 C CNN
F 1 "GND" V 6205 3272 50  0000 R CNN
F 2 "" H 6200 3400 50  0001 C CNN
F 3 "" H 6200 3400 50  0001 C CNN
	1    6200 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC02418
P 5450 3400
AR Path="/5DB5DCD1/5DC02418" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02418" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02418" Ref="#PWR0379"  Part="1" 
F 0 "#PWR0379" H 5450 3250 50  0001 C CNN
F 1 "+3.3V" V 5465 3528 50  0000 L CNN
F 2 "" H 5450 3400 50  0001 C CNN
F 3 "" H 5450 3400 50  0001 C CNN
	1    5450 3400
	0    -1   -1   0   
$EndComp
Connection ~ 5650 3400
Wire Wire Line
	5450 3400 5650 3400
Text HLabel 5350 3600 0    50   Output ~ 0
ADC
Text HLabel 5350 4200 0    50   Input ~ 0
ADC_E_1
Text Label 6250 1500 0    50   ~ 0
COM2_HP
Text Label 6250 2100 0    50   ~ 0
COM2_LSPK
Text HLabel 5050 1400 0    50   Input ~ 0
ADC_E_0
Text GLabel 5050 2100 0    50   Input ~ 0
A3
Text GLabel 5050 1900 0    50   Input ~ 0
A1
Text GLabel 5050 2000 0    50   Input ~ 0
A2
Text GLabel 5050 1800 0    50   Input ~ 0
A0
Text HLabel 5050 2500 0    50   Output ~ 0
ADC
$Comp
L Device:C_Small C?
U 1 1 5DC0242A
P 6050 1050
AR Path="/5DB5DCD1/5DC0242A" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC0242A" Ref="C?"  Part="1" 
AR Path="/5DC31399/5DC0242A" Ref="C62"  Part="1" 
F 0 "C62" V 6279 1050 50  0000 C CNN
F 1 "0.1u" V 6188 1050 50  0000 C CNN
F 2 "" H 6050 1050 50  0001 C CNN
F 3 "~" H 6050 1050 50  0001 C CNN
	1    6050 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC02431
P 6150 1050
AR Path="/5DB5DCD1/5DC02431" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02431" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02431" Ref="#PWR0380"  Part="1" 
F 0 "#PWR0380" H 6150 800 50  0001 C CNN
F 1 "GND" V 6155 922 50  0000 R CNN
F 2 "" H 6150 1050 50  0001 C CNN
F 3 "" H 6150 1050 50  0001 C CNN
	1    6150 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC02437
P 5400 1050
AR Path="/5DB5DCD1/5DC02437" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02437" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02437" Ref="#PWR0381"  Part="1" 
F 0 "#PWR0381" H 5400 900 50  0001 C CNN
F 1 "+3.3V" V 5415 1178 50  0000 L CNN
F 2 "" H 5400 1050 50  0001 C CNN
F 3 "" H 5400 1050 50  0001 C CNN
	1    5400 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 1050 5650 1050
Wire Wire Line
	5650 1150 5650 1050
Connection ~ 5650 1050
Wire Wire Line
	5650 1050 5950 1050
$Comp
L power:GND #PWR?
U 1 1 5DC02441
P 5650 2800
AR Path="/5DB5DCD1/5DC02441" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02441" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02441" Ref="#PWR0382"  Part="1" 
F 0 "#PWR0382" H 5650 2550 50  0001 C CNN
F 1 "GND" H 5655 2627 50  0000 C CNN
F 2 "" H 5650 2800 50  0001 C CNN
F 3 "" H 5650 2800 50  0001 C CNN
	1    5650 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2800 5650 2750
$Comp
L adessein:4067 U54
U 1 1 5DC02448
P 5650 1950
F 0 "U54" H 5650 2966 50  0000 C CNN
F 1 "4067" H 5650 2875 50  0000 C CNN
F 2 "" H 5650 1950 50  0001 C CNN
F 3 "" H 5650 1950 50  0001 C CNN
	1    5650 1950
	1    0    0    -1  
$EndComp
Text GLabel 2350 1850 0    50   Input ~ 0
CLK
Text GLabel 2350 2050 0    50   Input ~ 0
ISR_LATCH
Text GLabel 2350 3750 0    50   Input ~ 0
CLK
Text GLabel 2350 3950 0    50   Input ~ 0
ISR_LATCH
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DC02453
P 2950 5300
AR Path="/5DC02453" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DC02453" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DC02453" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC02453" Ref="U?"  Part="1" 
AR Path="/5DC31399/5DC02453" Ref="U52"  Part="1" 
F 0 "U52" H 2950 6197 60  0000 C CNN
F 1 "74HC165" H 2950 6091 60  0000 C CNN
F 2 "" H 5140 4080 60  0001 C CNN
F 3 "" H 5140 4080 60  0001 C CNN
	1    2950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0245A
P 2350 5800
AR Path="/5DB6029E/5DC0245A" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC0245A" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC0245A" Ref="#PWR0383"  Part="1" 
F 0 "#PWR0383" H 2350 5550 50  0001 C CNN
F 1 "GND" V 2355 5672 50  0000 R CNN
F 2 "" H 2350 5800 50  0001 C CNN
F 3 "" H 2350 5800 50  0001 C CNN
	1    2350 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC02460
P 3550 5950
AR Path="/5DB6029E/5DC02460" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02460" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02460" Ref="#PWR0384"  Part="1" 
F 0 "#PWR0384" H 3550 5700 50  0001 C CNN
F 1 "GND" V 3555 5822 50  0000 R CNN
F 2 "" H 3550 5950 50  0001 C CNN
F 3 "" H 3550 5950 50  0001 C CNN
	1    3550 5950
	0    -1   -1   0   
$EndComp
NoConn ~ 3550 5700
$Comp
L Device:C_Small C?
U 1 1 5DC02467
P 3550 4750
AR Path="/5DB6029E/5DC02467" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC02467" Ref="C?"  Part="1" 
AR Path="/5DC31399/5DC02467" Ref="C59"  Part="1" 
F 0 "C59" H 3642 4796 50  0000 L CNN
F 1 "0.1u" H 3642 4705 50  0000 L CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "~" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0246E
P 3550 4850
AR Path="/5DB6029E/5DC0246E" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC0246E" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC0246E" Ref="#PWR0385"  Part="1" 
F 0 "#PWR0385" H 3550 4600 50  0001 C CNN
F 1 "GND" H 3555 4677 50  0000 C CNN
F 2 "" H 3550 4850 50  0001 C CNN
F 3 "" H 3550 4850 50  0001 C CNN
	1    3550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4650 3750 4650
$Comp
L power:+3.3V #PWR?
U 1 1 5DC02475
P 3750 4650
AR Path="/5DB6029E/5DC02475" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC02475" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC02475" Ref="#PWR0386"  Part="1" 
F 0 "#PWR0386" H 3750 4500 50  0001 C CNN
F 1 "+3.3V" V 3765 4778 50  0000 L CNN
F 2 "" H 3750 4650 50  0001 C CNN
F 3 "" H 3750 4650 50  0001 C CNN
	1    3750 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DC0247B
P 1450 5100
AR Path="/5DB6029E/5DC0247B" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DC0247B" Ref="RN?"  Part="1" 
AR Path="/5DC31399/5DC0247B" Ref="RN26"  Part="1" 
F 0 "RN26" V 1967 5100 50  0000 C CNN
F 1 "R_Network08" V 1876 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1925 5100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1450 5100 50  0001 C CNN
	1    1450 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 4800 2350 4800
Wire Wire Line
	1650 4900 2350 4900
Wire Wire Line
	1650 5000 2350 5000
Wire Wire Line
	1650 5100 2350 5100
Wire Wire Line
	1650 5200 2350 5200
Wire Wire Line
	1650 5300 2350 5300
Wire Wire Line
	1650 5400 2350 5400
Wire Wire Line
	1650 5500 2350 5500
$Comp
L power:+3.3V #PWR?
U 1 1 5DC0248A
P 1150 5500
AR Path="/5DB6029E/5DC0248A" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC0248A" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC0248A" Ref="#PWR0387"  Part="1" 
F 0 "#PWR0387" H 1150 5350 50  0001 C CNN
F 1 "+3.3V" V 1165 5628 50  0000 L CNN
F 2 "" H 1150 5500 50  0001 C CNN
F 3 "" H 1150 5500 50  0001 C CNN
	1    1150 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 5500 1150 5500
Wire Wire Line
	2350 4700 2200 4700
Wire Wire Line
	2200 4700 2200 4300
Connection ~ 3550 4650
Text GLabel 2350 5700 0    50   Input ~ 0
CLK
Text GLabel 2350 5900 0    50   Input ~ 0
ISR_LATCH
Wire Wire Line
	4000 3550 4000 4300
Wire Wire Line
	4000 4300 2200 4300
Wire Wire Line
	2350 2950 1650 2950
Wire Wire Line
	1650 3050 2350 3050
Wire Wire Line
	2350 3150 1650 3150
Wire Wire Line
	1650 3250 2350 3250
Wire Wire Line
	2350 3350 1650 3350
Text Label 1700 3050 0    50   ~ 0
LEFT
Text Label 1700 3150 0    50   ~ 0
UP
Text Label 1700 3250 0    50   ~ 0
RIGHT
Text Label 1700 3350 0    50   ~ 0
DOWN
Text HLabel 3600 7450 2    50   Output ~ 0
ISR_OUT
Text Label 6250 1600 0    50   ~ 0
HF_1
Text Label 6250 2200 0    50   ~ 0
ADF_1
Text Label 6250 2300 0    50   ~ 0
ADF_2
Text Label 6250 1700 0    50   ~ 0
NAV_1
Text Label 6250 2400 0    50   ~ 0
DME_1
Text Label 6250 1800 0    50   ~ 0
NAV_2
Text Label 6250 2500 0    50   ~ 0
DME_2
Text Label 6250 1900 0    50   ~ 0
INPH
Text Label 6250 2600 0    50   ~ 0
MIXER
Text Label 6250 2700 0    50   ~ 0
SPKR
Text Label 6050 3600 0    50   ~ 0
MLS_1
Text Label 6050 3700 0    50   ~ 0
MLS_2
Text Label 6050 3800 0    50   ~ 0
MKR
Text Label 6050 3900 0    50   ~ 0
HDPH
Text GLabel 5350 3900 0    50   Input ~ 0
A1
Text GLabel 5350 4000 0    50   Input ~ 0
A2
Text GLabel 5350 3800 0    50   Input ~ 0
A0
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DC024B3
P 2950 7250
AR Path="/5DC024B3" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DC024B3" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DC024B3" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC024B3" Ref="U?"  Part="1" 
AR Path="/5DC31399/5DC024B3" Ref="U53"  Part="1" 
F 0 "U53" H 2950 8147 60  0000 C CNN
F 1 "74HC165" H 2950 8041 60  0000 C CNN
F 2 "" H 5140 6030 60  0001 C CNN
F 3 "" H 5140 6030 60  0001 C CNN
	1    2950 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC024BA
P 2350 7750
AR Path="/5DB6029E/5DC024BA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC024BA" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC024BA" Ref="#PWR0388"  Part="1" 
F 0 "#PWR0388" H 2350 7500 50  0001 C CNN
F 1 "GND" V 2355 7622 50  0000 R CNN
F 2 "" H 2350 7750 50  0001 C CNN
F 3 "" H 2350 7750 50  0001 C CNN
	1    2350 7750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC024C0
P 3550 7900
AR Path="/5DB6029E/5DC024C0" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC024C0" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC024C0" Ref="#PWR0389"  Part="1" 
F 0 "#PWR0389" H 3550 7650 50  0001 C CNN
F 1 "GND" V 3555 7772 50  0000 R CNN
F 2 "" H 3550 7900 50  0001 C CNN
F 3 "" H 3550 7900 50  0001 C CNN
	1    3550 7900
	0    -1   -1   0   
$EndComp
NoConn ~ 3550 7650
Wire Wire Line
	3550 7450 3600 7450
$Comp
L Device:C_Small C?
U 1 1 5DC024C8
P 3550 6700
AR Path="/5DB6029E/5DC024C8" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC024C8" Ref="C?"  Part="1" 
AR Path="/5DC31399/5DC024C8" Ref="C60"  Part="1" 
F 0 "C60" H 3642 6746 50  0000 L CNN
F 1 "0.1u" H 3642 6655 50  0000 L CNN
F 2 "" H 3550 6700 50  0001 C CNN
F 3 "~" H 3550 6700 50  0001 C CNN
	1    3550 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC024CF
P 3550 6800
AR Path="/5DB6029E/5DC024CF" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC024CF" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC024CF" Ref="#PWR0390"  Part="1" 
F 0 "#PWR0390" H 3550 6550 50  0001 C CNN
F 1 "GND" H 3555 6627 50  0000 C CNN
F 2 "" H 3550 6800 50  0001 C CNN
F 3 "" H 3550 6800 50  0001 C CNN
	1    3550 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6600 3750 6600
$Comp
L power:+3.3V #PWR?
U 1 1 5DC024D6
P 3750 6600
AR Path="/5DB6029E/5DC024D6" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC024D6" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC024D6" Ref="#PWR0391"  Part="1" 
F 0 "#PWR0391" H 3750 6450 50  0001 C CNN
F 1 "+3.3V" V 3765 6728 50  0000 L CNN
F 2 "" H 3750 6600 50  0001 C CNN
F 3 "" H 3750 6600 50  0001 C CNN
	1    3750 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DC024DC
P 1450 7050
AR Path="/5DB6029E/5DC024DC" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DC024DC" Ref="RN?"  Part="1" 
AR Path="/5DC31399/5DC024DC" Ref="RN27"  Part="1" 
F 0 "RN27" V 1967 7050 50  0000 C CNN
F 1 "R_Network08" V 1876 7050 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1925 7050 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1450 7050 50  0001 C CNN
	1    1450 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 6750 2350 6750
Wire Wire Line
	1650 6850 2350 6850
Wire Wire Line
	1650 6950 2350 6950
Wire Wire Line
	1650 7050 2350 7050
Wire Wire Line
	1650 7150 2350 7150
Wire Wire Line
	1650 7250 2350 7250
Wire Wire Line
	1650 7350 2350 7350
Wire Wire Line
	1650 7450 2350 7450
$Comp
L power:+3.3V #PWR?
U 1 1 5DC024EB
P 1150 7450
AR Path="/5DB6029E/5DC024EB" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC024EB" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DC024EB" Ref="#PWR0392"  Part="1" 
F 0 "#PWR0392" H 1150 7300 50  0001 C CNN
F 1 "+3.3V" V 1165 7578 50  0000 L CNN
F 2 "" H 1150 7450 50  0001 C CNN
F 3 "" H 1150 7450 50  0001 C CNN
	1    1150 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 7450 1150 7450
Wire Wire Line
	2350 6650 2200 6650
Wire Wire Line
	2200 6650 2200 6250
Connection ~ 3550 6600
Text GLabel 2350 7650 0    50   Input ~ 0
CLK
Text GLabel 2350 7850 0    50   Input ~ 0
ISR_LATCH
Wire Wire Line
	4000 5500 4000 6250
Wire Wire Line
	4000 6250 2200 6250
Wire Wire Line
	3550 5500 4000 5500
Text Label 1700 5000 0    50   ~ 0
PB_COM_1
Text Label 1700 5100 0    50   ~ 0
PB_COM_2
Text Label 1700 5200 0    50   ~ 0
PB_HF_1
Text Label 1700 5300 0    50   ~ 0
PB_CABIN
Text Label 1700 5400 0    50   ~ 0
PB_EMER
Text Label 1700 5500 0    50   ~ 0
PB_MUTE
Text Label 1700 6750 0    50   ~ 0
PB_SG_TEST
Text Label 1700 6850 0    50   ~ 0
PB_ADC_REV
Text Label 1700 6950 0    50   ~ 0
PB_IRS_REV
Text Label 7700 3400 0    50   ~ 0
PFD_DIM
Text Label 7700 3500 0    50   ~ 0
MFD_DIM
Text Label 7700 3600 0    50   ~ 0
COM1_HP
Text Label 7700 4200 0    50   ~ 0
COM1_LSPK
Text Label 7700 3700 0    50   ~ 0
COM2_HP
Text Label 7700 4300 0    50   ~ 0
COM2_LSPK
Text Label 7700 3800 0    50   ~ 0
HF_1
Text Label 7700 4400 0    50   ~ 0
ADF_1
Text Label 7700 4500 0    50   ~ 0
ADF_2
Text Label 7700 3900 0    50   ~ 0
NAV_1
Text Label 7700 4600 0    50   ~ 0
DME_1
Text Label 7700 4000 0    50   ~ 0
NAV_2
Text Label 7700 4700 0    50   ~ 0
DME_2
Text Label 7700 4100 0    50   ~ 0
INPH
Text Label 7700 4800 0    50   ~ 0
MIXER
Text Label 7700 4900 0    50   ~ 0
SPKR
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DF7CBB3
P 8600 1600
AR Path="/5DB6029E/5DF7CBB3" Ref="J?"  Part="1" 
AR Path="/5DC174D4/5DF7CBB3" Ref="J?"  Part="1" 
AR Path="/5DC31399/5DF7CBB3" Ref="J42"  Part="1" 
F 0 "J42" H 8680 1546 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 8520 966 50  0001 C CNN
F 2 "" H 8600 1600 50  0001 C CNN
F 3 "~" H 8600 1600 50  0001 C CNN
	1    8600 1600
	1    0    0    1   
$EndComp
Text Label 7700 1100 0    50   ~ 0
PFD_HSI
Text Label 7700 1200 0    50   ~ 0
PFD_WXY
Text Label 7700 1300 0    50   ~ 0
ET
Text Label 7700 1400 0    50   ~ 0
TCAS
Text Label 7700 1500 0    50   ~ 0
ACFT_SYS
Text Label 7700 1600 0    50   ~ 0
MFD_MAP
Text Label 7700 1700 0    50   ~ 0
MFD_MX
Text Label 7700 1800 0    50   ~ 0
NORM
Wire Wire Line
	7700 1100 8400 1100
Wire Wire Line
	7700 1200 8400 1200
Wire Wire Line
	7700 1400 8400 1400
Wire Wire Line
	7700 1500 8400 1500
Wire Wire Line
	7700 1600 8400 1600
Wire Wire Line
	7700 1800 8400 1800
Wire Wire Line
	7700 1300 8400 1300
Wire Wire Line
	7700 1700 8400 1700
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DF7CBCA
P 8600 2600
AR Path="/5DB6029E/5DF7CBCA" Ref="J?"  Part="1" 
AR Path="/5DC174D4/5DF7CBCA" Ref="J?"  Part="1" 
AR Path="/5DC31399/5DF7CBCA" Ref="J43"  Part="1" 
F 0 "J43" H 8680 2546 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 8520 1966 50  0001 C CNN
F 2 "" H 8600 2600 50  0001 C CNN
F 3 "~" H 8600 2600 50  0001 C CNN
	1    8600 2600
	1    0    0    1   
$EndComp
Text Label 7700 1900 0    50   ~ 0
ABN
Text Label 7700 2000 0    50   ~ 0
EMER
Text Label 7700 2100 0    50   ~ 0
SKP
Text Label 7700 2200 0    50   ~ 0
PAG
Wire Wire Line
	7700 1900 8400 1900
Wire Wire Line
	7700 2100 8400 2100
Wire Wire Line
	7700 2200 8400 2200
Wire Wire Line
	8400 2000 7700 2000
Text Label 7700 2300 0    50   ~ 0
RCL
Text Label 7700 2400 0    50   ~ 0
ENT
Wire Wire Line
	7700 2300 8400 2300
Wire Wire Line
	7700 2400 8400 2400
Wire Wire Line
	7700 2500 8400 2500
Wire Wire Line
	7700 2600 8400 2600
Wire Wire Line
	7700 2700 8400 2700
Wire Wire Line
	7700 2800 8400 2800
Wire Wire Line
	7700 2900 8400 2900
Wire Wire Line
	7700 3000 8400 3000
Text Label 7700 2500 0    50   ~ 0
PB_COM_1
Text Label 7700 2600 0    50   ~ 0
PB_COM_2
Text Label 7700 2700 0    50   ~ 0
PB_HF_1
Text Label 7700 2800 0    50   ~ 0
PB_CABIN
Text Label 7700 2900 0    50   ~ 0
PB_EMER
Text Label 7700 3000 0    50   ~ 0
PB_MUTE
Wire Wire Line
	7700 3100 8400 3100
Wire Wire Line
	7700 3200 8400 3200
Wire Wire Line
	7700 3300 8400 3300
Wire Wire Line
	7700 3400 8400 3400
Text Label 7700 3100 0    50   ~ 0
PB_SG_TEST
Text Label 7700 3200 0    50   ~ 0
PB_ADC_REV
Text Label 7700 3300 0    50   ~ 0
PB_IRS_REV
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DF7CBF0
P 8600 3600
AR Path="/5DB6029E/5DF7CBF0" Ref="J?"  Part="1" 
AR Path="/5DC174D4/5DF7CBF0" Ref="J?"  Part="1" 
AR Path="/5DC31399/5DF7CBF0" Ref="J44"  Part="1" 
F 0 "J44" H 8680 3546 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 8520 2966 50  0001 C CNN
F 2 "" H 8600 3600 50  0001 C CNN
F 3 "~" H 8600 3600 50  0001 C CNN
	1    8600 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 3500 8400 3500
Wire Wire Line
	8400 3600 7700 3600
Wire Wire Line
	7700 3700 8400 3700
Wire Wire Line
	8400 3800 7700 3800
Wire Wire Line
	7700 3900 8400 3900
Wire Wire Line
	8400 4000 7700 4000
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DF7CBFD
P 8600 4600
AR Path="/5DB6029E/5DF7CBFD" Ref="J?"  Part="1" 
AR Path="/5DC174D4/5DF7CBFD" Ref="J?"  Part="1" 
AR Path="/5DC31399/5DF7CBFD" Ref="J45"  Part="1" 
F 0 "J45" H 8680 4546 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 8520 3966 50  0001 C CNN
F 2 "" H 8600 4600 50  0001 C CNN
F 3 "~" H 8600 4600 50  0001 C CNN
	1    8600 4600
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 4100 8400 4100
Wire Wire Line
	8400 4200 7700 4200
Wire Wire Line
	7700 4300 8400 4300
Wire Wire Line
	7700 4400 8400 4400
Wire Wire Line
	8400 4500 7700 4500
Wire Wire Line
	7700 4600 8400 4600
Wire Wire Line
	8400 4700 7700 4700
Wire Wire Line
	7700 4800 8400 4800
Wire Wire Line
	8400 4900 7700 4900
Text Label 7700 5000 0    50   ~ 0
MLS_1
Text Label 7700 5100 0    50   ~ 0
MLS_2
Text Label 7700 5200 0    50   ~ 0
MKR
Text Label 7700 5300 0    50   ~ 0
HDPH
Wire Wire Line
	8400 5000 7700 5000
Wire Wire Line
	8400 5100 7700 5100
Wire Wire Line
	7700 5200 8400 5200
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DF7CC14
P 8600 5600
AR Path="/5DB6029E/5DF7CC14" Ref="J?"  Part="1" 
AR Path="/5DC174D4/5DF7CC14" Ref="J?"  Part="1" 
AR Path="/5DC31399/5DF7CC14" Ref="J46"  Part="1" 
F 0 "J46" H 8680 5546 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 8520 4966 50  0001 C CNN
F 2 "" H 8600 5600 50  0001 C CNN
F 3 "~" H 8600 5600 50  0001 C CNN
	1    8600 5600
	1    0    0    1   
$EndComp
Wire Wire Line
	7700 5300 8400 5300
Text Label 7700 5400 0    50   ~ 0
COM_1
Text Label 7700 5500 0    50   ~ 0
COM_2
Text Label 7700 5600 0    50   ~ 0
HF_1
Text Label 7700 5700 0    50   ~ 0
CABIN
Text Label 7700 5800 0    50   ~ 0
EMER
Wire Wire Line
	8400 5400 7700 5400
Wire Wire Line
	7700 5500 8400 5500
Wire Wire Line
	8400 5600 7700 5600
Wire Wire Line
	7700 5700 8400 5700
Wire Wire Line
	8400 5800 7700 5800
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DF95124
P 8600 6600
AR Path="/5DB6029E/5DF95124" Ref="J?"  Part="1" 
AR Path="/5DC174D4/5DF95124" Ref="J?"  Part="1" 
AR Path="/5DC31399/5DF95124" Ref="J47"  Part="1" 
F 0 "J47" H 8680 6546 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 8520 5966 50  0001 C CNN
F 2 "" H 8600 6600 50  0001 C CNN
F 3 "~" H 8600 6600 50  0001 C CNN
	1    8600 6600
	1    0    0    1   
$EndComp
Text HLabel 8400 5900 0    50   BiDi ~ 0
SDA
Text HLabel 8400 6000 0    50   Input ~ 0
SCL
$Comp
L power:+3.3V #PWR?
U 1 1 5DFA1204
P 8400 6100
AR Path="/5DB5DCD1/5DFA1204" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DFA1204" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DFA1204" Ref="#PWR0279"  Part="1" 
F 0 "#PWR0279" H 8400 5950 50  0001 C CNN
F 1 "+3.3V" V 8415 6228 50  0000 L CNN
F 2 "" H 8400 6100 50  0001 C CNN
F 3 "" H 8400 6100 50  0001 C CNN
	1    8400 6100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFA1241
P 8400 6200
AR Path="/5DB5DCD1/5DFA1241" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DFA1241" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5DFA1241" Ref="#PWR0280"  Part="1" 
F 0 "#PWR0280" H 8400 5950 50  0001 C CNN
F 1 "GND" V 8405 6072 50  0000 R CNN
F 2 "" H 8400 6200 50  0001 C CNN
F 3 "" H 8400 6200 50  0001 C CNN
	1    8400 6200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E013912
P 5600 5500
AR Path="/5DB5DCD1/5E013912" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5E013912" Ref="C?"  Part="1" 
AR Path="/5DC31399/5E013912" Ref="C49"  Part="1" 
F 0 "C49" H 5692 5546 50  0000 L CNN
F 1 "0.1u" H 5692 5455 50  0000 L CNN
F 2 "" H 5600 5500 50  0001 C CNN
F 3 "~" H 5600 5500 50  0001 C CNN
	1    5600 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E013919
P 5700 5500
AR Path="/5DB5DCD1/5E013919" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5E013919" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5E013919" Ref="#PWR0281"  Part="1" 
F 0 "#PWR0281" H 5700 5250 50  0001 C CNN
F 1 "GND" H 5705 5327 50  0000 C CNN
F 2 "" H 5700 5500 50  0001 C CNN
F 3 "" H 5700 5500 50  0001 C CNN
	1    5700 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5500 5500 5300
$Comp
L 74xx:74HC595 U?
U 1 1 5E013920
P 5500 6100
AR Path="/5DB5DCD1/5E013920" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5E013920" Ref="U?"  Part="1" 
AR Path="/5DC31399/5E013920" Ref="U31"  Part="1" 
F 0 "U31" H 5500 6878 50  0000 C CNN
F 1 "74HC595" H 5500 6787 50  0000 C CNN
F 2 "" H 5500 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5500 6100 50  0001 C CNN
	1    5500 6100
	1    0    0    -1  
$EndComp
Connection ~ 5500 5500
$Comp
L power:GND #PWR?
U 1 1 5E013928
P 5500 6800
AR Path="/5DB5DCD1/5E013928" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5E013928" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5E013928" Ref="#PWR0282"  Part="1" 
F 0 "#PWR0282" H 5500 6550 50  0001 C CNN
F 1 "GND" H 5505 6627 50  0000 C CNN
F 2 "" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0001 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
Text HLabel 5100 5700 0    50   Input ~ 0
OSR_IN
$Comp
L power:GND #PWR?
U 1 1 5E01392F
P 5100 6300
AR Path="/5DB5DCD1/5E01392F" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5E01392F" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5E01392F" Ref="#PWR0283"  Part="1" 
F 0 "#PWR0283" H 5100 6050 50  0001 C CNN
F 1 "GND" H 5105 6127 50  0000 C CNN
F 2 "" H 5100 6300 50  0001 C CNN
F 3 "" H 5100 6300 50  0001 C CNN
	1    5100 6300
	1    0    0    -1  
$EndComp
Text HLabel 5900 6600 2    50   Output ~ 0
OSR_OUT
$Comp
L power:+3.3V #PWR?
U 1 1 5E013936
P 5500 5300
AR Path="/5DB5DCD1/5E013936" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5E013936" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5E013936" Ref="#PWR0284"  Part="1" 
F 0 "#PWR0284" H 5500 5150 50  0001 C CNN
F 1 "+3.3V" H 5515 5473 50  0000 C CNN
F 2 "" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0001 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E01393C
P 5100 6000
AR Path="/5DB5DCD1/5E01393C" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5E01393C" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5E01393C" Ref="#PWR0306"  Part="1" 
F 0 "#PWR0306" H 5100 5850 50  0001 C CNN
F 1 "+3.3V" V 5115 6128 50  0000 L CNN
F 2 "" H 5100 6000 50  0001 C CNN
F 3 "" H 5100 6000 50  0001 C CNN
	1    5100 6000
	0    -1   -1   0   
$EndComp
Text Notes 5050 7300 0    50   ~ 0
8-channel output shift register connected \nto Darlington transistor array for draining \ncurrent from LEDs
Text GLabel 5100 6200 0    50   Input ~ 0
OSR_LATCH
Text GLabel 5100 5900 0    50   Input ~ 0
CLK
Text Label 7150 5600 0    50   ~ 0
COM_1
Text Label 7150 5700 0    50   ~ 0
COM_2
Text Label 7150 5800 0    50   ~ 0
HF_1
Text Label 7150 5900 0    50   ~ 0
CABIN
Text Label 7150 6000 0    50   ~ 0
EMER
$Comp
L Transistor_Array:ULN2803A U?
U 1 1 5E01394A
P 6450 5900
AR Path="/5DBF6FEB/5E01394A" Ref="U?"  Part="1" 
AR Path="/5DC33C09/5E01394A" Ref="U?"  Part="1" 
AR Path="/5DC31399/5E01394A" Ref="U37"  Part="1" 
AR Path="/5DC174D4/5E01394A" Ref="U?"  Part="1" 
F 0 "U37" H 6450 6467 50  0000 C CNN
F 1 "ULN2803A" H 6450 6376 50  0000 C CNN
F 2 "" H 6500 5250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 6550 5700 50  0001 C CNN
	1    6450 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E013951
P 6450 6600
AR Path="/5DB5DCD1/5E013951" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5E013951" Ref="#PWR?"  Part="1" 
AR Path="/5DC31399/5E013951" Ref="#PWR0307"  Part="1" 
F 0 "#PWR0307" H 6450 6350 50  0001 C CNN
F 1 "GND" H 6455 6427 50  0000 C CNN
F 2 "" H 6450 6600 50  0001 C CNN
F 3 "" H 6450 6600 50  0001 C CNN
	1    6450 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E013957
P 7000 5600
AR Path="/5DC33C09/5E013957" Ref="R?"  Part="1" 
AR Path="/5DC31399/5E013957" Ref="R23"  Part="1" 
AR Path="/5DC174D4/5E013957" Ref="R?"  Part="1" 
F 0 "R23" V 7000 5550 50  0000 C CNN
F 1 "R" V 7000 5650 50  0000 C CNN
F 2 "" V 6930 5600 50  0001 C CNN
F 3 "~" H 7000 5600 50  0001 C CNN
	1    7000 5600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E01395E
P 7000 5700
AR Path="/5DC33C09/5E01395E" Ref="R?"  Part="1" 
AR Path="/5DC31399/5E01395E" Ref="R24"  Part="1" 
AR Path="/5DC174D4/5E01395E" Ref="R?"  Part="1" 
F 0 "R24" V 7000 5650 50  0000 C CNN
F 1 "R" V 7000 5750 50  0000 C CNN
F 2 "" V 6930 5700 50  0001 C CNN
F 3 "~" H 7000 5700 50  0001 C CNN
	1    7000 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E013965
P 7000 5800
AR Path="/5DC33C09/5E013965" Ref="R?"  Part="1" 
AR Path="/5DC31399/5E013965" Ref="R25"  Part="1" 
AR Path="/5DC174D4/5E013965" Ref="R?"  Part="1" 
F 0 "R25" V 7000 5750 50  0000 C CNN
F 1 "R" V 7000 5850 50  0000 C CNN
F 2 "" V 6930 5800 50  0001 C CNN
F 3 "~" H 7000 5800 50  0001 C CNN
	1    7000 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E01396C
P 7000 5900
AR Path="/5DC33C09/5E01396C" Ref="R?"  Part="1" 
AR Path="/5DC31399/5E01396C" Ref="R26"  Part="1" 
AR Path="/5DC174D4/5E01396C" Ref="R?"  Part="1" 
F 0 "R26" V 7000 5850 50  0000 C CNN
F 1 "R" V 7000 5950 50  0000 C CNN
F 2 "" V 6930 5900 50  0001 C CNN
F 3 "~" H 7000 5900 50  0001 C CNN
	1    7000 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E013973
P 7000 6000
AR Path="/5DC33C09/5E013973" Ref="R?"  Part="1" 
AR Path="/5DC31399/5E013973" Ref="R27"  Part="1" 
AR Path="/5DC174D4/5E013973" Ref="R?"  Part="1" 
F 0 "R27" V 7000 5950 50  0000 C CNN
F 1 "R" V 7000 6050 50  0000 C CNN
F 2 "" V 6930 6000 50  0001 C CNN
F 3 "~" H 7000 6000 50  0001 C CNN
	1    7000 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 5700 5900 5700
Wire Wire Line
	5900 5800 6050 5800
Wire Wire Line
	6050 5900 5900 5900
Wire Wire Line
	5900 6000 6050 6000
Wire Wire Line
	6050 6100 5900 6100
Wire Wire Line
	5900 6200 6050 6200
Wire Wire Line
	6050 6300 5900 6300
Wire Wire Line
	5900 6400 6050 6400
Wire Notes Line
	4450 5050 4450 7350
Wire Notes Line
	4450 7350 7550 7350
Wire Notes Line
	7550 7350 7550 5050
Wire Notes Line
	7550 5050 4450 5050
$EndSCHEMATC
