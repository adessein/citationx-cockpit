EESchema Schematic File Version 4
LIBS:CitationX_cockpit-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 2 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2150 1050 0    50   Input ~ 0
ISR_IN
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DB5E504
P 2750 1650
AR Path="/5DB5E504" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DB5E504" Ref="U9"  Part="1" 
F 0 "U9" H 2750 2547 60  0000 C CNN
F 1 "74HC165" H 2750 2441 60  0000 C CNN
F 2 "" H 4940 430 60  0001 C CNN
F 3 "" H 4940 430 60  0001 C CNN
	1    2750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DB5FB30
P 2150 2150
F 0 "#PWR0101" H 2150 1900 50  0001 C CNN
F 1 "GND" V 2155 2022 50  0000 R CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DB5FB45
P 3350 2300
F 0 "#PWR0102" H 3350 2050 50  0001 C CNN
F 1 "GND" V 3355 2172 50  0000 R CNN
F 2 "" H 3350 2300 50  0001 C CNN
F 3 "" H 3350 2300 50  0001 C CNN
	1    3350 2300
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 2050
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DB5FBBC
P 2750 3350
AR Path="/5DB5FBBC" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DB5FBBC" Ref="U10"  Part="1" 
F 0 "U10" H 2750 4247 60  0000 C CNN
F 1 "74HC165" H 2750 4141 60  0000 C CNN
F 2 "" H 4940 2130 60  0001 C CNN
F 3 "" H 4940 2130 60  0001 C CNN
	1    2750 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DB5FBC3
P 2150 3850
F 0 "#PWR0103" H 2150 3600 50  0001 C CNN
F 1 "GND" V 2155 3722 50  0000 R CNN
F 2 "" H 2150 3850 50  0001 C CNN
F 3 "" H 2150 3850 50  0001 C CNN
	1    2150 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DB5FBC9
P 3350 4000
F 0 "#PWR0104" H 3350 3750 50  0001 C CNN
F 1 "GND" V 3355 3872 50  0000 R CNN
F 2 "" H 3350 4000 50  0001 C CNN
F 3 "" H 3350 4000 50  0001 C CNN
	1    3350 4000
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 3750
Wire Wire Line
	3800 1850 3800 2550
Wire Wire Line
	3800 2550 1950 2550
Wire Wire Line
	1950 2550 1950 2750
Wire Wire Line
	1950 2750 2150 2750
Wire Wire Line
	3350 1850 3800 1850
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DB5FC6F
P 2750 5050
AR Path="/5DB5FC6F" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DB5FC6F" Ref="U11"  Part="1" 
F 0 "U11" H 2750 5947 60  0000 C CNN
F 1 "74HC165" H 2750 5841 60  0000 C CNN
F 2 "" H 4940 3830 60  0001 C CNN
F 3 "" H 4940 3830 60  0001 C CNN
	1    2750 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5DB5FC76
P 2150 5550
F 0 "#PWR0105" H 2150 5300 50  0001 C CNN
F 1 "GND" V 2155 5422 50  0000 R CNN
F 2 "" H 2150 5550 50  0001 C CNN
F 3 "" H 2150 5550 50  0001 C CNN
	1    2150 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DB5FC7C
P 3350 5700
F 0 "#PWR0106" H 3350 5450 50  0001 C CNN
F 1 "GND" V 3355 5572 50  0000 R CNN
F 2 "" H 3350 5700 50  0001 C CNN
F 3 "" H 3350 5700 50  0001 C CNN
	1    3350 5700
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 5450
Wire Wire Line
	3800 3550 3800 4250
Wire Wire Line
	3800 4250 1950 4250
Wire Wire Line
	1950 4250 1950 4450
Wire Wire Line
	1950 4450 2150 4450
$Comp
L Device:C_Small C23
U 1 1 5DB5FD04
P 5250 950
F 0 "C23" H 5342 996 50  0000 L CNN
F 1 "0.1u" H 5342 905 50  0000 L CNN
F 2 "" H 5250 950 50  0001 C CNN
F 3 "~" H 5250 950 50  0001 C CNN
	1    5250 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5DB5FE54
P 5350 950
F 0 "#PWR0107" H 5350 700 50  0001 C CNN
F 1 "GND" H 5355 777 50  0000 C CNN
F 2 "" H 5350 950 50  0001 C CNN
F 3 "" H 5350 950 50  0001 C CNN
	1    5350 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 950  5150 750 
$Comp
L Device:C_Small C19
U 1 1 5DB60100
P 3350 2800
F 0 "C19" H 3442 2846 50  0000 L CNN
F 1 "0.1u" H 3442 2755 50  0000 L CNN
F 2 "" H 3350 2800 50  0001 C CNN
F 3 "~" H 3350 2800 50  0001 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5DB60107
P 3350 2900
F 0 "#PWR0108" H 3350 2650 50  0001 C CNN
F 1 "GND" H 3355 2727 50  0000 C CNN
F 2 "" H 3350 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0001 C CNN
	1    3350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2700 3550 2700
Wire Wire Line
	3350 3550 3800 3550
$Comp
L Device:C_Small C20
U 1 1 5DB602E2
P 3350 4500
F 0 "C20" H 3442 4546 50  0000 L CNN
F 1 "0.1u" H 3442 4455 50  0000 L CNN
F 2 "" H 3350 4500 50  0001 C CNN
F 3 "~" H 3350 4500 50  0001 C CNN
	1    3350 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5DB602E9
P 3350 4600
F 0 "#PWR0109" H 3350 4350 50  0001 C CNN
F 1 "GND" H 3355 4427 50  0000 C CNN
F 2 "" H 3350 4600 50  0001 C CNN
F 3 "" H 3350 4600 50  0001 C CNN
	1    3350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4400 3550 4400
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DB60CE1
P 2750 6750
AR Path="/5DB60CE1" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DB60CE1" Ref="U12"  Part="1" 
F 0 "U12" H 2750 7647 60  0000 C CNN
F 1 "74HC165" H 2750 7541 60  0000 C CNN
F 2 "" H 4940 5530 60  0001 C CNN
F 3 "" H 4940 5530 60  0001 C CNN
	1    2750 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DB60CE8
P 2150 7250
F 0 "#PWR0110" H 2150 7000 50  0001 C CNN
F 1 "GND" V 2155 7122 50  0000 R CNN
F 2 "" H 2150 7250 50  0001 C CNN
F 3 "" H 2150 7250 50  0001 C CNN
	1    2150 7250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5DB60CEE
P 3350 7400
F 0 "#PWR0111" H 3350 7150 50  0001 C CNN
F 1 "GND" V 3355 7272 50  0000 R CNN
F 2 "" H 3350 7400 50  0001 C CNN
F 3 "" H 3350 7400 50  0001 C CNN
	1    3350 7400
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 7150
Wire Wire Line
	3800 5250 3800 5950
Wire Wire Line
	3800 5950 1950 5950
Wire Wire Line
	1950 5950 1950 6150
Wire Wire Line
	1950 6150 2150 6150
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DB60CFB
P 2750 8450
AR Path="/5DB60CFB" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DB60CFB" Ref="U13"  Part="1" 
F 0 "U13" H 2750 9347 60  0000 C CNN
F 1 "74HC165" H 2750 9241 60  0000 C CNN
F 2 "" H 4940 7230 60  0001 C CNN
F 3 "" H 4940 7230 60  0001 C CNN
	1    2750 8450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5DB60D02
P 2150 8950
F 0 "#PWR0112" H 2150 8700 50  0001 C CNN
F 1 "GND" V 2155 8822 50  0000 R CNN
F 2 "" H 2150 8950 50  0001 C CNN
F 3 "" H 2150 8950 50  0001 C CNN
	1    2150 8950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5DB60D08
P 3350 9100
F 0 "#PWR0113" H 3350 8850 50  0001 C CNN
F 1 "GND" V 3355 8972 50  0000 R CNN
F 2 "" H 3350 9100 50  0001 C CNN
F 3 "" H 3350 9100 50  0001 C CNN
	1    3350 9100
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 8850
Wire Wire Line
	3800 6950 3800 7650
Wire Wire Line
	3800 7650 1950 7650
Wire Wire Line
	1950 7650 1950 7850
Wire Wire Line
	1950 7850 2150 7850
$Comp
L Device:C_Small C21
U 1 1 5DB60D15
P 3350 6200
F 0 "C21" H 3442 6246 50  0000 L CNN
F 1 "0.1u" H 3442 6155 50  0000 L CNN
F 2 "" H 3350 6200 50  0001 C CNN
F 3 "~" H 3350 6200 50  0001 C CNN
	1    3350 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5DB60D1C
P 3350 6300
F 0 "#PWR0114" H 3350 6050 50  0001 C CNN
F 1 "GND" H 3355 6127 50  0000 C CNN
F 2 "" H 3350 6300 50  0001 C CNN
F 3 "" H 3350 6300 50  0001 C CNN
	1    3350 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6100 3550 6100
Wire Wire Line
	3350 6950 3800 6950
$Comp
L Device:C_Small C22
U 1 1 5DB60D25
P 3350 7900
F 0 "C22" H 3442 7946 50  0000 L CNN
F 1 "0.1u" H 3442 7855 50  0000 L CNN
F 2 "" H 3350 7900 50  0001 C CNN
F 3 "~" H 3350 7900 50  0001 C CNN
	1    3350 7900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5DB60D2C
P 3350 8000
F 0 "#PWR0115" H 3350 7750 50  0001 C CNN
F 1 "GND" H 3355 7827 50  0000 C CNN
F 2 "" H 3350 8000 50  0001 C CNN
F 3 "" H 3350 8000 50  0001 C CNN
	1    3350 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 7800 3550 7800
Wire Wire Line
	3800 5250 3350 5250
Text HLabel 3350 8650 2    50   Output ~ 0
ISR_OUT
$Comp
L 74xx:74HC595 U14
U 1 1 5DB61974
P 5150 1550
F 0 "U14" H 5150 2328 50  0000 C CNN
F 1 "74HC595" H 5150 2237 50  0000 C CNN
F 2 "" H 5150 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5150 1550 50  0001 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
Connection ~ 5150 950 
$Comp
L power:GND #PWR0116
U 1 1 5DB62224
P 5150 2250
F 0 "#PWR0116" H 5150 2000 50  0001 C CNN
F 1 "GND" H 5155 2077 50  0000 C CNN
F 2 "" H 5150 2250 50  0001 C CNN
F 3 "" H 5150 2250 50  0001 C CNN
	1    5150 2250
	1    0    0    -1  
$EndComp
Text HLabel 4750 1150 0    50   Input ~ 0
OSR_IN
$Comp
L power:GND #PWR0117
U 1 1 5DB626A2
P 4750 1750
F 0 "#PWR0117" H 4750 1500 50  0001 C CNN
F 1 "GND" H 4755 1577 50  0000 C CNN
F 2 "" H 4750 1750 50  0001 C CNN
F 3 "" H 4750 1750 50  0001 C CNN
	1    4750 1750
	1    0    0    -1  
$EndComp
Text HLabel 5550 2050 2    50   Output ~ 0
OSR_OUT
$Comp
L power:+3.3V #PWR0118
U 1 1 5DB64C16
P 5150 750
F 0 "#PWR0118" H 5150 600 50  0001 C CNN
F 1 "+3.3V" H 5165 923 50  0000 C CNN
F 2 "" H 5150 750 50  0001 C CNN
F 3 "" H 5150 750 50  0001 C CNN
	1    5150 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 5DB64DDF
P 3550 2700
F 0 "#PWR0119" H 3550 2550 50  0001 C CNN
F 1 "+3.3V" V 3565 2828 50  0000 L CNN
F 2 "" H 3550 2700 50  0001 C CNN
F 3 "" H 3550 2700 50  0001 C CNN
	1    3550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C18
U 1 1 5DB64E87
P 3350 1100
F 0 "C18" H 3442 1146 50  0000 L CNN
F 1 "0.1u" H 3442 1055 50  0000 L CNN
F 2 "" H 3350 1100 50  0001 C CNN
F 3 "~" H 3350 1100 50  0001 C CNN
	1    3350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5DB64E8E
P 3350 1200
F 0 "#PWR0120" H 3350 950 50  0001 C CNN
F 1 "GND" H 3355 1027 50  0000 C CNN
F 2 "" H 3350 1200 50  0001 C CNN
F 3 "" H 3350 1200 50  0001 C CNN
	1    3350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1000 3550 1000
$Comp
L power:+3.3V #PWR0121
U 1 1 5DB64E95
P 3550 1000
F 0 "#PWR0121" H 3550 850 50  0001 C CNN
F 1 "+3.3V" V 3565 1128 50  0000 L CNN
F 2 "" H 3550 1000 50  0001 C CNN
F 3 "" H 3550 1000 50  0001 C CNN
	1    3550 1000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 5DB652D8
P 3550 4400
F 0 "#PWR0122" H 3550 4250 50  0001 C CNN
F 1 "+3.3V" V 3565 4528 50  0000 L CNN
F 2 "" H 3550 4400 50  0001 C CNN
F 3 "" H 3550 4400 50  0001 C CNN
	1    3550 4400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 5DB65371
P 3550 6100
F 0 "#PWR0123" H 3550 5950 50  0001 C CNN
F 1 "+3.3V" V 3565 6228 50  0000 L CNN
F 2 "" H 3550 6100 50  0001 C CNN
F 3 "" H 3550 6100 50  0001 C CNN
	1    3550 6100
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0124
U 1 1 5DB653E8
P 3550 7800
F 0 "#PWR0124" H 3550 7650 50  0001 C CNN
F 1 "+3.3V" V 3565 7928 50  0000 L CNN
F 2 "" H 3550 7800 50  0001 C CNN
F 3 "" H 3550 7800 50  0001 C CNN
	1    3550 7800
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0125
U 1 1 5DB65CBB
P 4750 1450
F 0 "#PWR0125" H 4750 1300 50  0001 C CNN
F 1 "+3.3V" V 4765 1578 50  0000 L CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Network08 RN1
U 1 1 5DB672BF
P 1250 1450
F 0 "RN1" V 1767 1450 50  0000 C CNN
F 1 "R_Network08" V 1676 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1725 1450 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1250 1450 50  0001 C CNN
	1    1250 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1150 2150 1150
Wire Wire Line
	1450 1250 2150 1250
Wire Wire Line
	1450 1350 2150 1350
Wire Wire Line
	1450 1450 2150 1450
Wire Wire Line
	1450 1550 2150 1550
Wire Wire Line
	1450 1650 2150 1650
Wire Wire Line
	1450 1750 2150 1750
Wire Wire Line
	1450 1850 2150 1850
$Comp
L power:+3.3V #PWR0126
U 1 1 5DB6A35F
P 950 1850
F 0 "#PWR0126" H 950 1700 50  0001 C CNN
F 1 "+3.3V" V 965 1978 50  0000 L CNN
F 2 "" H 950 1850 50  0001 C CNN
F 3 "" H 950 1850 50  0001 C CNN
	1    950  1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Network08 RN4
U 1 1 5DB6CDA4
P 1400 3150
F 0 "RN4" V 1917 3150 50  0000 C CNN
F 1 "R_Network08" V 1826 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1875 3150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1400 3150 50  0001 C CNN
	1    1400 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 2850 2150 2850
Text Label 2150 1150 2    50   ~ 0
EMER_LT_NORM
Wire Wire Line
	1600 2950 2150 2950
Wire Wire Line
	1600 3050 2150 3050
Wire Wire Line
	1600 3150 2150 3150
Wire Wire Line
	1600 3250 2150 3250
Wire Wire Line
	1600 3350 2150 3350
Wire Wire Line
	1600 3450 2150 3450
Wire Wire Line
	1600 3550 2150 3550
$Comp
L power:+3.3V #PWR0127
U 1 1 5DB6CDB4
P 1050 3550
F 0 "#PWR0127" H 1050 3400 50  0001 C CNN
F 1 "+3.3V" V 1065 3678 50  0000 L CNN
F 2 "" H 1050 3550 50  0001 C CNN
F 3 "" H 1050 3550 50  0001 C CNN
	1    1050 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 3550 1050 3550
$Comp
L Device:R_Network08 RN2
U 1 1 5DB6DC27
P 1250 4850
F 0 "RN2" V 1767 4850 50  0000 C CNN
F 1 "R_Network08" V 1676 4850 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1725 4850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1250 4850 50  0001 C CNN
	1    1250 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 4550 2150 4550
Wire Wire Line
	1450 4650 2150 4650
Wire Wire Line
	1450 4750 2150 4750
Wire Wire Line
	1450 4850 2150 4850
Wire Wire Line
	1450 4950 2150 4950
Wire Wire Line
	1450 5050 2150 5050
Wire Wire Line
	1450 5150 2150 5150
Wire Wire Line
	1450 5250 2150 5250
$Comp
L power:+3.3V #PWR0128
U 1 1 5DB6DC37
P 1050 5250
F 0 "#PWR0128" H 1050 5100 50  0001 C CNN
F 1 "+3.3V" V 1065 5378 50  0000 L CNN
F 2 "" H 1050 5250 50  0001 C CNN
F 3 "" H 1050 5250 50  0001 C CNN
	1    1050 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Network08 RN3
U 1 1 5DB6F051
P 1250 6550
F 0 "RN3" V 1767 6550 50  0000 C CNN
F 1 "R_Network08" V 1676 6550 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1725 6550 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1250 6550 50  0001 C CNN
	1    1250 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 6250 2150 6250
Wire Wire Line
	1450 6350 2150 6350
Wire Wire Line
	1450 6450 2150 6450
Wire Wire Line
	1450 6550 2150 6550
Wire Wire Line
	1450 6650 2150 6650
Wire Wire Line
	1450 6750 2150 6750
Wire Wire Line
	1450 6850 2150 6850
Wire Wire Line
	1450 6950 2150 6950
$Comp
L power:+3.3V #PWR0129
U 1 1 5DB6F061
P 1050 6950
F 0 "#PWR0129" H 1050 6800 50  0001 C CNN
F 1 "+3.3V" V 1065 7078 50  0000 L CNN
F 2 "" H 1050 6950 50  0001 C CNN
F 3 "" H 1050 6950 50  0001 C CNN
	1    1050 6950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Network08 RN5
U 1 1 5DB70CCC
P 1400 8250
F 0 "RN5" V 1917 8250 50  0000 C CNN
F 1 "R_Network08" V 1826 8250 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1875 8250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1400 8250 50  0001 C CNN
	1    1400 8250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 7950 2150 7950
Wire Wire Line
	1600 8050 2150 8050
Wire Wire Line
	1600 8150 2150 8150
Wire Wire Line
	1600 8250 2150 8250
Wire Wire Line
	1600 8350 2150 8350
Wire Wire Line
	1600 8450 2150 8450
Wire Wire Line
	1600 8550 2150 8550
Wire Wire Line
	1600 8650 2150 8650
$Comp
L power:+3.3V #PWR0130
U 1 1 5DB70CDC
P 1050 8650
F 0 "#PWR0130" H 1050 8500 50  0001 C CNN
F 1 "+3.3V" V 1065 8778 50  0000 L CNN
F 2 "" H 1050 8650 50  0001 C CNN
F 3 "" H 1050 8650 50  0001 C CNN
	1    1050 8650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 8650 1050 8650
$Comp
L Connector:Screw_Terminal_01x10 J10
U 1 1 5DB7391B
P 6700 3950
F 0 "J10" H 6780 3942 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 6780 3851 50  0000 L CNN
F 2 "" H 6700 3950 50  0001 C CNN
F 3 "~" H 6700 3950 50  0001 C CNN
	1    6700 3950
	1    0    0    -1  
$EndComp
Text Label 2150 1250 2    50   ~ 0
EMER_LT_OFF
Text Label 2150 1350 2    50   ~ 0
DAY_NIGHT_DIM_ON
Wire Wire Line
	1050 1850 950  1850
Text Label 2150 1450 2    50   ~ 0
G_XFLOW
Text Label 2150 1550 2    50   ~ 0
WXO_LH_OFF
Text Label 2150 1650 2    50   ~ 0
WXO_LH_NORM
Text Label 2150 1750 2    50   ~ 0
WXO_RH_OFF
Text Label 5550 1250 0    50   ~ 0
ENG_START_LH
Text Label 5550 1350 0    50   ~ 0
ENG_DISENGAGE
Text Label 5550 1450 0    50   ~ 0
ENG_START_RH
Text Label 5550 1550 0    50   ~ 0
STBY_PWR_GREEN
Text Label 5550 1650 0    50   ~ 0
STBY_PWR_RED
Text Label 5550 1750 0    50   ~ 0
OSR_X1
Text Label 5550 1850 0    50   ~ 0
OSR_X2
Text Label 2150 1850 2    50   ~ 0
WXO_RH_NORM
Text Label 2150 2850 2    50   ~ 0
BATT_1_ON
Text Label 2150 2950 2    50   ~ 0
LH_GEN_ON
Text Label 2150 3050 2    50   ~ 0
LH_GEN_RST
Text Label 2150 3150 2    50   ~ 0
RH_GEN_ON
Text Label 2150 3250 2    50   ~ 0
RH_GEN_RST
Text Label 2150 3350 2    50   ~ 0
BATT_2_ON
Text Label 2150 3450 2    50   ~ 0
EXT_PWR_ON
Text Label 2150 3550 2    50   ~ 0
AVIONICS_AVN
Text Label 2150 4550 2    50   ~ 0
AVIONICS_OFF
Text Label 2150 4650 2    50   ~ 0
ENG_START_LH_SW
Text Label 2150 4750 2    50   ~ 0
ENG_DISENGAGE_SW
Text Label 2150 4850 2    50   ~ 0
ENG_START_RH_SW
Text Label 2150 4950 2    50   ~ 0
IGN_LH_ON
Text Label 2150 5050 2    50   ~ 0
IGN_LH_NORM
Text Label 2150 5150 2    50   ~ 0
IGN_RH_ON
Text Label 2150 5250 2    50   ~ 0
IGN_RH_NORM
Text Label 2100 6250 2    50   ~ 0
FUEL_B_LH_ON
Text Label 2100 6550 2    50   ~ 0
FUEL_B_RH_NORM
Text Label 2100 6450 2    50   ~ 0
FUEL_B_RH_ON
Text Label 2100 6350 2    50   ~ 0
FUEL_B_LH_NORM
Text Label 2100 6650 2    50   ~ 0
FADEC_LH_RESET
Text Label 2100 6750 2    50   ~ 0
FADEC_LH_SELECT
Text Label 2100 6850 2    50   ~ 0
FADEC_RH_RESET
Text Label 2100 6950 2    50   ~ 0
FADEC_RH_SELECT
Text Label 2100 7950 2    50   ~ 0
STBY_PWR_ON
Text Label 2100 8050 2    50   ~ 0
ISR_X1
Text Label 2100 8150 2    50   ~ 0
ISR_X2
Text Label 2100 8250 2    50   ~ 0
ISR_X3
Text Label 2100 8350 2    50   ~ 0
ISR_X4
Text Label 2100 8450 2    50   ~ 0
ISR_X5
Text Label 2100 8550 2    50   ~ 0
ISR_X6
Text Label 2100 8650 2    50   ~ 0
ISR_X7
$Comp
L Connector:Screw_Terminal_01x10 J11
U 1 1 5DCA12CE
P 6700 4950
F 0 "J11" H 6780 4942 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 6780 4851 50  0000 L CNN
F 2 "" H 6700 4950 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x10 J12
U 1 1 5DCA1330
P 6700 5950
F 0 "J12" H 6780 5942 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 6780 5851 50  0000 L CNN
F 2 "" H 6700 5950 50  0001 C CNN
F 3 "~" H 6700 5950 50  0001 C CNN
	1    6700 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x10 J13
U 1 1 5DCAA24D
P 6700 6950
F 0 "J13" H 6780 6942 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 6780 6851 50  0000 L CNN
F 2 "" H 6700 6950 50  0001 C CNN
F 3 "~" H 6700 6950 50  0001 C CNN
	1    6700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3550 6500 3550
Wire Wire Line
	5800 3650 6500 3650
Wire Wire Line
	5800 3750 6500 3750
Wire Wire Line
	5800 3850 6500 3850
Wire Wire Line
	5800 3950 6500 3950
Wire Wire Line
	5800 4050 6500 4050
Wire Wire Line
	5800 4150 6500 4150
Wire Wire Line
	5800 4250 6500 4250
Text Label 6500 3550 2    50   ~ 0
EMER_LT_NORM
Text Label 6500 3650 2    50   ~ 0
EMER_LT_OFF
Text Label 6500 3750 2    50   ~ 0
DAY_NIGHT_DIM_ON
Text Label 6500 3850 2    50   ~ 0
G_XFLOW
Text Label 6500 3950 2    50   ~ 0
WXO_LH_OFF
Text Label 6500 4050 2    50   ~ 0
WXO_LH_NORM
Text Label 6500 4150 2    50   ~ 0
WXO_RH_OFF
Text Label 6500 4250 2    50   ~ 0
WXO_RH_NORM
Wire Wire Line
	5950 4350 6500 4350
Wire Wire Line
	5950 4450 6500 4450
Wire Wire Line
	5950 4550 6500 4550
Wire Wire Line
	5950 4650 6500 4650
Wire Wire Line
	5950 4750 6500 4750
Wire Wire Line
	5950 4850 6500 4850
Wire Wire Line
	5950 4950 6500 4950
Wire Wire Line
	5950 5050 6500 5050
Text Label 6500 4350 2    50   ~ 0
BATT_1_ON
Text Label 6500 4450 2    50   ~ 0
LH_GEN_ON
Text Label 6500 4550 2    50   ~ 0
LH_GEN_RST
Text Label 6500 4650 2    50   ~ 0
RH_GEN_ON
Text Label 6500 4750 2    50   ~ 0
RH_GEN_RST
Text Label 6500 4850 2    50   ~ 0
BATT_2_ON
Text Label 6500 4950 2    50   ~ 0
EXT_PWR_ON
Text Label 6500 5050 2    50   ~ 0
AVIONICS_AVN
Wire Wire Line
	5800 5150 6500 5150
Wire Wire Line
	5800 5250 6500 5250
Wire Wire Line
	5800 5350 6500 5350
Wire Wire Line
	5800 5450 6500 5450
Wire Wire Line
	5800 5550 6500 5550
Wire Wire Line
	5800 5650 6500 5650
Wire Wire Line
	5800 5750 6500 5750
Wire Wire Line
	5800 5850 6500 5850
Text Label 6500 5150 2    50   ~ 0
AVIONICS_OFF
Text Label 6500 5250 2    50   ~ 0
ENG_START_LH_SW
Text Label 6500 5350 2    50   ~ 0
ENG_DISENGAGE_SW
Text Label 6500 5450 2    50   ~ 0
ENG_START_RH_SW
Text Label 6500 5550 2    50   ~ 0
IGN_LH_ON
Text Label 6500 5650 2    50   ~ 0
IGN_LH_NORM
Text Label 6500 5750 2    50   ~ 0
IGN_RH_ON
Text Label 6500 5850 2    50   ~ 0
IGN_RH_NORM
Wire Wire Line
	5800 5950 6500 5950
Wire Wire Line
	5800 6050 6500 6050
Wire Wire Line
	5800 6150 6500 6150
Wire Wire Line
	5800 6250 6500 6250
Wire Wire Line
	5800 6350 6500 6350
Wire Wire Line
	5800 6450 6500 6450
Wire Wire Line
	5800 6550 6500 6550
Wire Wire Line
	5800 6650 6500 6650
Text Label 6450 5950 2    50   ~ 0
FUEL_B_LH_ON
Text Label 6450 6250 2    50   ~ 0
FUEL_B_RH_NORM
Text Label 6450 6150 2    50   ~ 0
FUEL_B_RH_ON
Text Label 6450 6050 2    50   ~ 0
FUEL_B_LH_NORM
Text Label 6450 6350 2    50   ~ 0
FADEC_LH_RESET
Text Label 6450 6450 2    50   ~ 0
FADEC_LH_SELECT
Text Label 6450 6550 2    50   ~ 0
FADEC_RH_RESET
Text Label 6450 6650 2    50   ~ 0
FADEC_RH_SELECT
Wire Wire Line
	5950 6750 6500 6750
Wire Wire Line
	5950 6850 6500 6850
Wire Wire Line
	5950 6950 6500 6950
Wire Wire Line
	5950 7050 6500 7050
Wire Wire Line
	5950 7150 6500 7150
Wire Wire Line
	5950 7250 6500 7250
Wire Wire Line
	5950 7350 6500 7350
Wire Wire Line
	5950 7450 6500 7450
Text Label 6450 6750 2    50   ~ 0
STBY_PWR_ON
Text Label 6450 6850 2    50   ~ 0
ISR_X1
Text Label 6450 6950 2    50   ~ 0
ISR_X2
Text Label 6450 7050 2    50   ~ 0
ISR_X3
Text Label 6450 7150 2    50   ~ 0
ISR_X4
Text Label 6450 7250 2    50   ~ 0
ISR_X5
Text Label 6450 7350 2    50   ~ 0
ISR_X6
Text Label 6450 7450 2    50   ~ 0
ISR_X7
$Comp
L Connector:Screw_Terminal_01x02 J15
U 1 1 5DCC1605
P 6700 8750
F 0 "J15" H 6780 8742 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6780 8651 50  0000 L CNN
F 2 "" H 6700 8750 50  0001 C CNN
F 3 "~" H 6700 8750 50  0001 C CNN
	1    6700 8750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DCC16C8
P 6500 9000
F 0 "R10" H 6570 9046 50  0000 L CNN
F 1 "150" H 6570 8955 50  0000 L CNN
F 2 "" V 6430 9000 50  0001 C CNN
F 3 "~" H 6500 9000 50  0001 C CNN
	1    6500 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0182
U 1 1 5DCC175C
P 6500 9150
F 0 "#PWR0182" H 6500 8900 50  0001 C CNN
F 1 "GND" H 6505 8977 50  0000 C CNN
F 2 "" H 6500 9150 50  0001 C CNN
F 3 "" H 6500 9150 50  0001 C CNN
	1    6500 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 8750 6500 8850
Connection ~ 6500 8850
$Comp
L Connector:Screw_Terminal_01x10 J14
U 1 1 5DCCB96C
P 6700 8000
F 0 "J14" H 6780 7992 50  0000 L CNN
F 1 "Screw_Terminal_01x10" H 6780 7901 50  0000 L CNN
F 2 "" H 6700 8000 50  0001 C CNN
F 3 "~" H 6700 8000 50  0001 C CNN
	1    6700 8000
	1    0    0    -1  
$EndComp
Text Label 5800 7600 0    50   ~ 0
ENG_START_LH
Text Label 5800 7700 0    50   ~ 0
ENG_DISENGAGE
Text Label 5800 7800 0    50   ~ 0
ENG_START_RH
Text Label 5800 7900 0    50   ~ 0
STBY_PWR_GREEN
Text Label 5800 8000 0    50   ~ 0
STBY_PWR_RED
Text Label 5800 8100 0    50   ~ 0
OSR_X1
Text Label 5800 8200 0    50   ~ 0
OSR_X2
Text Label 5800 8300 0    50   ~ 0
OSR_X3
Wire Wire Line
	6500 7600 5800 7600
Wire Wire Line
	6500 7700 5800 7700
Wire Wire Line
	5800 7800 6500 7800
Wire Wire Line
	5800 7900 6500 7900
Wire Wire Line
	5800 8000 6500 8000
Wire Wire Line
	5800 8100 6500 8100
Wire Wire Line
	5800 8200 6500 8200
Wire Wire Line
	5800 8300 6500 8300
$Comp
L 74xx:74HC4051 U15
U 1 1 5DD02C29
P 6900 1500
F 0 "U15" H 6950 2178 50  0000 C CNN
F 1 "74HC4051" H 6950 2087 50  0000 C CNN
F 2 "" H 6900 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 6900 1100 50  0001 C CNN
	1    6900 1500
	1    0    0    -1  
$EndComp
Text Label 7300 1200 0    50   ~ 0
FLOOD
Text Label 7300 1300 0    50   ~ 0
EL
Text Label 7300 1400 0    50   ~ 0
LH
Text Label 7300 1500 0    50   ~ 0
CTR
Text Label 7300 1600 0    50   ~ 0
XFEED
Text Label 7300 1700 0    50   ~ 0
DIO5
Text Label 7300 1800 0    50   ~ 0
DIO6
Text Label 7300 1900 0    50   ~ 0
DIO7
Wire Wire Line
	6900 2100 6950 2100
$Comp
L power:GND #PWR0183
U 1 1 5DD02C3E
P 6950 2100
F 0 "#PWR0183" H 6950 1850 50  0001 C CNN
F 1 "GND" H 6955 1927 50  0000 C CNN
F 2 "" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
Connection ~ 6950 2100
Wire Wire Line
	6950 2100 7000 2100
$Comp
L Device:C_Small C24
U 1 1 5DD02C46
P 7350 1000
F 0 "C24" V 7579 1000 50  0000 C CNN
F 1 "0.1u" V 7488 1000 50  0000 C CNN
F 2 "" H 7350 1000 50  0001 C CNN
F 3 "~" H 7350 1000 50  0001 C CNN
	1    7350 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 1000 7250 1000
$Comp
L power:GND #PWR0184
U 1 1 5DD02C4E
P 7450 1000
F 0 "#PWR0184" H 7450 750 50  0001 C CNN
F 1 "GND" V 7455 872 50  0000 R CNN
F 2 "" H 7450 1000 50  0001 C CNN
F 3 "" H 7450 1000 50  0001 C CNN
	1    7450 1000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0185
U 1 1 5DD02C54
P 6700 1000
F 0 "#PWR0185" H 6700 850 50  0001 C CNN
F 1 "+3.3V" V 6715 1128 50  0000 L CNN
F 2 "" H 6700 1000 50  0001 C CNN
F 3 "" H 6700 1000 50  0001 C CNN
	1    6700 1000
	0    -1   -1   0   
$EndComp
Connection ~ 6900 1000
Wire Wire Line
	6700 1000 6900 1000
Text HLabel 6600 1800 0    50   Input ~ 0
ADC_E
Text Label 5800 8400 0    50   ~ 0
OSR_X4
Text Label 5800 8500 0    50   ~ 0
OSR_X5
Wire Wire Line
	6500 8400 5800 8400
Wire Wire Line
	6500 8500 5800 8500
Text Label 5550 1150 0    50   ~ 0
EXT_PWR_AVAIL
Text GLabel 6600 1400 0    50   Input ~ 0
A0
Text GLabel 6600 1500 0    50   Input ~ 0
A1
Text GLabel 6600 1600 0    50   Input ~ 0
A2
Text Notes 6400 2500 0    50   ~ 0
8-channel analog multiplexer\nfor the ligts potentiometers
Wire Notes Line
	6250 650  6250 2550
Wire Notes Line
	6250 2550 7750 2550
Wire Notes Line
	7750 2550 7750 650 
Wire Notes Line
	7750 650  6250 650 
Text Notes 4650 2550 0    50   ~ 0
8-channel output shift register
Wire Notes Line
	6200 500  6200 2600
Wire Notes Line
	6200 2600 4250 2600
Wire Notes Line
	4250 2600 4250 500 
Wire Notes Line
	4250 500  6200 500 
Text Notes 6750 9300 0    50   ~ 0
The 3.3V leds need a \ncurrent-limiting resistor.\n3.3 V /150 ohms = 22mA\n
Text GLabel 6600 1200 0    50   Output ~ 0
ADC
Text GLabel 2150 2050 0    50   Input ~ 0
CLK
Text GLabel 2150 2250 0    50   Input ~ 0
ISR_LATCH
Text GLabel 2150 3750 0    50   Input ~ 0
CLK
Text GLabel 2150 3950 0    50   Input ~ 0
ISR_LATCH
Text GLabel 2150 5450 0    50   Input ~ 0
CLK
Text GLabel 2150 5650 0    50   Input ~ 0
ISR_LATCH
Text GLabel 2150 7150 0    50   Input ~ 0
CLK
Text GLabel 2150 7350 0    50   Input ~ 0
ISR_LATCH
Text GLabel 2150 8850 0    50   Input ~ 0
CLK
Text GLabel 2150 9050 0    50   Input ~ 0
ISR_LATCH
Text GLabel 4750 1650 0    50   Input ~ 0
OSR_LATCH
Text GLabel 4750 1350 0    50   Input ~ 0
CLK
$EndSCHEMATC
