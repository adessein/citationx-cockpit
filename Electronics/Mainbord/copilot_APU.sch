EESchema Schematic File Version 4
LIBS:CitationX_cockpit-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 10
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
L promicro:ProMicro U?
U 1 1 5DE51984
P 2800 2150
AR Path="/5DB6029E/5DE51984" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DE51984" Ref="U?"  Part="1" 
F 0 "U?" H 2800 3187 60  0000 C CNN
F 1 "ProMicro" H 2800 3081 60  0000 C CNN
F 2 "" H 2900 1100 60  0000 C CNN
F 3 "" H 2900 1100 60  0000 C CNN
	1    2800 2150
	1    0    0    -1  
$EndComp
Text Label 2100 2000 2    50   ~ 0
L0
Text Label 2100 2100 2    50   ~ 0
L1
Text Label 2100 2200 2    50   ~ 0
L2
Text Label 2100 2300 2    50   ~ 0
7SEG_DIO
Text Label 2100 2400 2    50   ~ 0
7SEG_CLK
Text Label 2100 2500 2    50   ~ 0
E
$Comp
L power:GND #PWR?
U 1 1 5DE51991
P 3500 1500
AR Path="/5DB6029E/5DE51991" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51991" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3500 1250 50  0001 C CNN
F 1 "GND" V 3505 1372 50  0000 R CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "" H 3500 1500 50  0001 C CNN
	1    3500 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DE51997
P 3500 1700
AR Path="/5DB6029E/5DE51997" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51997" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3500 1550 50  0001 C CNN
F 1 "+5V" V 3515 1828 50  0000 L CNN
F 2 "" H 3500 1700 50  0001 C CNN
F 3 "" H 3500 1700 50  0001 C CNN
	1    3500 1700
	0    1    1    0   
$EndComp
NoConn ~ 3500 1400
NoConn ~ 3500 1800
NoConn ~ 3500 1900
NoConn ~ 2100 1700
NoConn ~ 2100 1600
$Comp
L 74xx:74HC4051 U?
U 1 1 5DE519A2
P 4650 1850
AR Path="/5DB6029E/5DE519A2" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DE519A2" Ref="U?"  Part="1" 
F 0 "U?" H 4700 2528 50  0000 C CNN
F 1 "74HC4051" H 4700 2437 50  0000 C CNN
F 2 "" H 4650 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 4650 1450 50  0001 C CNN
	1    4650 1850
	1    0    0    -1  
$EndComp
Text Label 5050 1550 0    50   ~ 0
DIO0
Text Label 5050 1650 0    50   ~ 0
DIO1
Text Label 5050 1750 0    50   ~ 0
DIO2
Text Label 5050 1850 0    50   ~ 0
DIO3
Text Label 5050 1950 0    50   ~ 0
DIO4
Text Label 4350 1550 2    50   ~ 0
7SEG_DIO
Text Label 4350 1750 2    50   ~ 0
L0
Text Label 4350 1850 2    50   ~ 0
L1
Text Label 4350 1950 2    50   ~ 0
L2
Text Label 4350 2150 2    50   ~ 0
E
Wire Wire Line
	4650 2450 4700 2450
$Comp
L power:GND #PWR?
U 1 1 5DE519B4
P 4700 2450
AR Path="/5DB6029E/5DE519B4" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE519B4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 2200 50  0001 C CNN
F 1 "GND" H 4705 2277 50  0000 C CNN
F 2 "" H 4700 2450 50  0001 C CNN
F 3 "" H 4700 2450 50  0001 C CNN
	1    4700 2450
	1    0    0    -1  
$EndComp
Connection ~ 4700 2450
Wire Wire Line
	4700 2450 4750 2450
$Comp
L Device:C_Small C?
U 1 1 5DE519BC
P 5100 1350
AR Path="/5DB6029E/5DE519BC" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DE519BC" Ref="C?"  Part="1" 
F 0 "C?" V 5329 1350 50  0000 C CNN
F 1 "0.1u" V 5238 1350 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "~" H 5100 1350 50  0001 C CNN
	1    5100 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 1350 5000 1350
$Comp
L power:GND #PWR?
U 1 1 5DE519C4
P 5200 1350
AR Path="/5DB6029E/5DE519C4" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE519C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 1100 50  0001 C CNN
F 1 "GND" V 5205 1222 50  0000 R CNN
F 2 "" H 5200 1350 50  0001 C CNN
F 3 "" H 5200 1350 50  0001 C CNN
	1    5200 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DE519CA
P 4450 1350
AR Path="/5DB6029E/5DE519CA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE519CA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 1200 50  0001 C CNN
F 1 "+3.3V" V 4465 1478 50  0000 L CNN
F 2 "" H 4450 1350 50  0001 C CNN
F 3 "" H 4450 1350 50  0001 C CNN
	1    4450 1350
	0    -1   -1   0   
$EndComp
Connection ~ 4650 1350
Wire Wire Line
	4450 1350 4650 1350
$Comp
L 74xx:74HC4051 U?
U 1 1 5DE519D2
P 6150 1850
AR Path="/5DB6029E/5DE519D2" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DE519D2" Ref="U?"  Part="1" 
F 0 "U?" H 6200 2528 50  0000 C CNN
F 1 "74HC4051" H 6200 2437 50  0000 C CNN
F 2 "" H 6150 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 6150 1450 50  0001 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Text Label 6550 1550 0    50   ~ 0
CLK0
Text Label 6550 1650 0    50   ~ 0
CLK1
Text Label 6550 1750 0    50   ~ 0
CLK2
Text Label 6550 1850 0    50   ~ 0
CLK3
Text Label 6550 1950 0    50   ~ 0
CLK4
Text Label 5850 1750 2    50   ~ 0
L0
Text Label 5850 1850 2    50   ~ 0
L1
Text Label 5850 1950 2    50   ~ 0
L2
Text Label 5850 2150 2    50   ~ 0
E
Wire Wire Line
	6150 2450 6200 2450
$Comp
L power:GND #PWR?
U 1 1 5DE519E3
P 6200 2450
AR Path="/5DB6029E/5DE519E3" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE519E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 2200 50  0001 C CNN
F 1 "GND" H 6205 2277 50  0000 C CNN
F 2 "" H 6200 2450 50  0001 C CNN
F 3 "" H 6200 2450 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
Connection ~ 6200 2450
Wire Wire Line
	6200 2450 6250 2450
$Comp
L Device:C_Small C?
U 1 1 5DE519EB
P 6600 1350
AR Path="/5DB6029E/5DE519EB" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DE519EB" Ref="C?"  Part="1" 
F 0 "C?" V 6829 1350 50  0000 C CNN
F 1 "0.1u" V 6738 1350 50  0000 C CNN
F 2 "" H 6600 1350 50  0001 C CNN
F 3 "~" H 6600 1350 50  0001 C CNN
	1    6600 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 1350 6500 1350
$Comp
L power:GND #PWR?
U 1 1 5DE519F3
P 6700 1350
AR Path="/5DB6029E/5DE519F3" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE519F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 1100 50  0001 C CNN
F 1 "GND" V 6705 1222 50  0000 R CNN
F 2 "" H 6700 1350 50  0001 C CNN
F 3 "" H 6700 1350 50  0001 C CNN
	1    6700 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DE519F9
P 5950 1350
AR Path="/5DB6029E/5DE519F9" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE519F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 1200 50  0001 C CNN
F 1 "+3.3V" V 5965 1478 50  0000 L CNN
F 2 "" H 5950 1350 50  0001 C CNN
F 3 "" H 5950 1350 50  0001 C CNN
	1    5950 1350
	0    -1   -1   0   
$EndComp
Connection ~ 6150 1350
Wire Wire Line
	5950 1350 6150 1350
Text Label 5850 1550 2    50   ~ 0
7SEG_CLK
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DE51A02
P 7950 1850
AR Path="/5DB6029E/5DE51A02" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DE51A02" Ref="J?"  Part="1" 
F 0 "J?" H 7870 1217 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 7870 1216 50  0001 C CNN
F 2 "" H 7950 1850 50  0001 C CNN
F 3 "~" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
Text Label 7750 1450 2    50   ~ 0
CLK0
Text Label 7750 1550 2    50   ~ 0
DIO0
Text Label 7750 1650 2    50   ~ 0
CLK1
Text Label 7750 1750 2    50   ~ 0
DIO1
Text Label 7750 1850 2    50   ~ 0
CLK2
Text Label 7750 1950 2    50   ~ 0
DIO2
Text Label 7750 2050 2    50   ~ 0
CLK3
Text Label 7750 2150 2    50   ~ 0
DIO3
Text Label 7750 2250 2    50   ~ 0
CLK4
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DE51A12
P 8650 1850
AR Path="/5DB6029E/5DE51A12" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DE51A12" Ref="J?"  Part="1" 
F 0 "J?" H 8570 1217 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 8570 1216 50  0001 C CNN
F 2 "" H 8650 1850 50  0001 C CNN
F 3 "~" H 8650 1850 50  0001 C CNN
	1    8650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DE51A19
P 8450 1450
AR Path="/5DB6029E/5DE51A19" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A19" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1300 50  0001 C CNN
F 1 "+5V" V 8465 1578 50  0000 L CNN
F 2 "" H 8450 1450 50  0001 C CNN
F 3 "" H 8450 1450 50  0001 C CNN
	1    8450 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51A1F
P 8450 1850
AR Path="/5DB6029E/5DE51A1F" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A1F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1600 50  0001 C CNN
F 1 "GND" H 8455 1677 50  0000 C CNN
F 2 "" H 8450 1850 50  0001 C CNN
F 3 "" H 8450 1850 50  0001 C CNN
	1    8450 1850
	0    1    1    0   
$EndComp
Wire Notes Line
	7300 1200 8800 1200
Wire Notes Line
	8800 1200 8800 2650
Wire Notes Line
	8800 2650 7300 2650
Wire Notes Line
	7300 2650 7300 1200
Text Notes 7400 2600 0    50   ~ 0
Connectors for 7x 7-seg and OLED\n
Wire Notes Line
	450  2800 11100 2800
Text Notes 600  950  0    50   ~ 0
This board will be separated from the rest.\nIw ill communicate with the master using USART (TTL level, no need for MAX232)
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DE51A2C
P 2750 4100
AR Path="/5DE51A2C" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DE51A2C" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DE51A2C" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DE51A2C" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DE51A2C" Ref="U?"  Part="1" 
F 0 "U?" H 2750 4997 60  0000 C CNN
F 1 "74HC165" H 2750 4891 60  0000 C CNN
F 2 "" H 4940 2880 60  0001 C CNN
F 3 "" H 4940 2880 60  0001 C CNN
	1    2750 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51A33
P 2150 4600
AR Path="/5DB6029E/5DE51A33" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DE51A33" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A33" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 4350 50  0001 C CNN
F 1 "GND" V 2155 4472 50  0000 R CNN
F 2 "" H 2150 4600 50  0001 C CNN
F 3 "" H 2150 4600 50  0001 C CNN
	1    2150 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51A39
P 3350 4750
AR Path="/5DB6029E/5DE51A39" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DE51A39" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A39" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 4500 50  0001 C CNN
F 1 "GND" V 3355 4622 50  0000 R CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "" H 3350 4750 50  0001 C CNN
	1    3350 4750
	0    -1   -1   0   
$EndComp
NoConn ~ 3350 4500
$Comp
L Device:C_Small C?
U 1 1 5DE51A40
P 3350 3550
AR Path="/5DB6029E/5DE51A40" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DE51A40" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DE51A40" Ref="C?"  Part="1" 
F 0 "C?" H 3442 3596 50  0000 L CNN
F 1 "0.1u" H 3442 3505 50  0000 L CNN
F 2 "" H 3350 3550 50  0001 C CNN
F 3 "~" H 3350 3550 50  0001 C CNN
	1    3350 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51A47
P 3350 3650
AR Path="/5DB6029E/5DE51A47" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DE51A47" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A47" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 3400 50  0001 C CNN
F 1 "GND" H 3355 3477 50  0000 C CNN
F 2 "" H 3350 3650 50  0001 C CNN
F 3 "" H 3350 3650 50  0001 C CNN
	1    3350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3450 3550 3450
$Comp
L power:+3.3V #PWR?
U 1 1 5DE51A4E
P 3550 3450
AR Path="/5DB6029E/5DE51A4E" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DE51A4E" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A4E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 3300 50  0001 C CNN
F 1 "+3.3V" V 3565 3578 50  0000 L CNN
F 2 "" H 3550 3450 50  0001 C CNN
F 3 "" H 3550 3450 50  0001 C CNN
	1    3550 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DE51A54
P 1250 3900
AR Path="/5DB6029E/5DE51A54" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DE51A54" Ref="RN?"  Part="1" 
AR Path="/5DC174D6/5DE51A54" Ref="RN?"  Part="1" 
F 0 "RN?" V 1767 3900 50  0000 C CNN
F 1 "R_Network08" V 1676 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1725 3900 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1250 3900 50  0001 C CNN
	1    1250 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 3600 2150 3600
Wire Wire Line
	1450 3700 2150 3700
Wire Wire Line
	1450 3800 2150 3800
Wire Wire Line
	1450 3900 2150 3900
Wire Wire Line
	1450 4000 2150 4000
Wire Wire Line
	1450 4100 2150 4100
Wire Wire Line
	1450 4200 2150 4200
Wire Wire Line
	1450 4300 2150 4300
$Comp
L power:+3.3V #PWR?
U 1 1 5DE51A63
P 950 4300
AR Path="/5DB6029E/5DE51A63" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DE51A63" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A63" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 950 4150 50  0001 C CNN
F 1 "+3.3V" V 965 4428 50  0000 L CNN
F 2 "" H 950 4300 50  0001 C CNN
F 3 "" H 950 4300 50  0001 C CNN
	1    950  4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 4300 950  4300
Text Label 3500 2000 0    50   ~ 0
MAP_LIGHT
Text Label 3500 2100 0    50   ~ 0
POT_X1
Text Label 1450 3600 0    50   ~ 0
BLEED_MAX
Text Label 1450 3700 0    50   ~ 0
BLEED_OFF
Text Label 1450 3800 0    50   ~ 0
GEN_ON
Text Label 1450 3900 0    50   ~ 0
GEN_RST
Text Label 1450 4000 0    50   ~ 0
APU_START_DIS
Text Label 1450 4100 0    50   ~ 0
APU_START
Text Label 1450 4300 0    50   ~ 0
PB_TEST
Text Label 3500 2200 0    50   ~ 0
MASTER_ON
Text Label 1450 4200 0    50   ~ 0
APU_STOP
Text Label 3500 2300 0    50   ~ 0
CLK
Text Label 3500 2400 0    50   ~ 0
ISR_LATCH
Text Label 3500 2500 0    50   ~ 0
ISR_OUT
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DE51A78
P 5600 3850
AR Path="/5DB6029E/5DE51A78" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DE51A78" Ref="J?"  Part="1" 
F 0 "J?" H 5520 3217 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 5520 3216 50  0001 C CNN
F 2 "" H 5600 3850 50  0001 C CNN
F 3 "~" H 5600 3850 50  0001 C CNN
	1    5600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3450 5400 3450
Wire Wire Line
	4700 3550 5400 3550
Wire Wire Line
	4700 3650 5400 3650
Wire Wire Line
	4700 3850 5400 3850
Wire Wire Line
	4700 3950 5400 3950
Wire Wire Line
	4700 4050 5400 4050
Text Label 4700 3450 0    50   ~ 0
BLEED_MAX
Text Label 4700 3550 0    50   ~ 0
BLEED_OFF
Text Label 4700 3650 0    50   ~ 0
GEN_ON
Text Label 4700 3750 0    50   ~ 0
GEN_RST
Text Label 4700 3850 0    50   ~ 0
APU_START_DIS
Text Label 4700 3950 0    50   ~ 0
APU_START
Text Label 4700 4150 0    50   ~ 0
PB_TEST
Text Label 4700 4050 0    50   ~ 0
APU_STOP
Wire Wire Line
	4700 3750 5400 3750
Wire Wire Line
	4700 4150 5400 4150
Text Label 7750 2350 2    50   ~ 0
DIO4
NoConn ~ 6550 2050
NoConn ~ 6550 2150
NoConn ~ 6550 2250
NoConn ~ 5050 2050
NoConn ~ 5050 2150
NoConn ~ 5050 2250
Connection ~ 3350 3450
NoConn ~ 5400 4250
NoConn ~ 5400 4350
$Comp
L power:+3.3V #PWR?
U 1 1 5DE51A99
P 8450 2150
AR Path="/5DB6029E/5DE51A99" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51A99" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 2000 50  0001 C CNN
F 1 "+3.3V" V 8465 2278 50  0000 L CNN
F 2 "" H 8450 2150 50  0001 C CNN
F 3 "" H 8450 2150 50  0001 C CNN
	1    8450 2150
	0    -1   -1   0   
$EndComp
Text GLabel 8450 2250 0    50   Input ~ 0
SCL
Text GLabel 8450 2350 0    50   BiDi ~ 0
SDA
$Comp
L power:+5V #PWR?
U 1 1 5DE51AA1
P 8450 1550
AR Path="/5DB6029E/5DE51AA1" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AA1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1400 50  0001 C CNN
F 1 "+5V" V 8465 1678 50  0000 L CNN
F 2 "" H 8450 1550 50  0001 C CNN
F 3 "" H 8450 1550 50  0001 C CNN
	1    8450 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DE51AA7
P 8450 1650
AR Path="/5DB6029E/5DE51AA7" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AA7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1500 50  0001 C CNN
F 1 "+5V" V 8465 1778 50  0000 L CNN
F 2 "" H 8450 1650 50  0001 C CNN
F 3 "" H 8450 1650 50  0001 C CNN
	1    8450 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DE51AAD
P 8450 2050
AR Path="/5DB6029E/5DE51AAD" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1900 50  0001 C CNN
F 1 "+3.3V" V 8465 2178 50  0000 L CNN
F 2 "" H 8450 2050 50  0001 C CNN
F 3 "" H 8450 2050 50  0001 C CNN
	1    8450 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DE51AB3
P 8450 1950
AR Path="/5DB6029E/5DE51AB3" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AB3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1800 50  0001 C CNN
F 1 "+3.3V" V 8465 2078 50  0000 L CNN
F 2 "" H 8450 1950 50  0001 C CNN
F 3 "" H 8450 1950 50  0001 C CNN
	1    8450 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DE51AB9
P 8450 1750
AR Path="/5DB6029E/5DE51AB9" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1600 50  0001 C CNN
F 1 "+5V" V 8465 1878 50  0000 L CNN
F 2 "" H 8450 1750 50  0001 C CNN
F 3 "" H 8450 1750 50  0001 C CNN
	1    8450 1750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5DE51ABF
P 8150 3850
F 0 "J?" H 8200 4367 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 8200 4276 50  0000 C CNN
F 2 "" H 8150 3850 50  0001 C CNN
F 3 "~" H 8150 3850 50  0001 C CNN
	1    8150 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DE51AC6
P 7950 3550
AR Path="/5DB6029E/5DE51AC6" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 3400 50  0001 C CNN
F 1 "+5V" V 7965 3678 50  0000 L CNN
F 2 "" H 7950 3550 50  0001 C CNN
F 3 "" H 7950 3550 50  0001 C CNN
	1    7950 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DE51ACC
P 8450 3550
AR Path="/5DB6029E/5DE51ACC" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51ACC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 3400 50  0001 C CNN
F 1 "+3.3V" V 8465 3678 50  0000 L CNN
F 2 "" H 8450 3550 50  0001 C CNN
F 3 "" H 8450 3550 50  0001 C CNN
	1    8450 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51AD2
P 7950 3650
AR Path="/5DB6029E/5DE51AD2" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AD2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 3400 50  0001 C CNN
F 1 "GND" H 7955 3477 50  0000 C CNN
F 2 "" H 7950 3650 50  0001 C CNN
F 3 "" H 7950 3650 50  0001 C CNN
	1    7950 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51AD8
P 8450 3650
AR Path="/5DB6029E/5DE51AD8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AD8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 3400 50  0001 C CNN
F 1 "GND" H 8455 3477 50  0000 C CNN
F 2 "" H 8450 3650 50  0001 C CNN
F 3 "" H 8450 3650 50  0001 C CNN
	1    8450 3650
	0    -1   -1   0   
$EndComp
Text Label 2100 1400 2    50   ~ 0
RX
Text Label 2100 1500 2    50   ~ 0
TX
Text Label 7950 3750 2    50   ~ 0
RX
Text Label 7950 3950 2    50   ~ 0
TX
$Comp
L power:GND #PWR?
U 1 1 5DE51AE2
P 2150 3500
AR Path="/5DB6029E/5DE51AE2" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2150 3250 50  0001 C CNN
F 1 "GND" H 2155 3327 50  0000 C CNN
F 2 "" H 2150 3500 50  0001 C CNN
F 3 "" H 2150 3500 50  0001 C CNN
	1    2150 3500
	0    1    1    0   
$EndComp
Text Label 3350 4300 0    50   ~ 0
ISR_OUT
Text Label 2150 4700 2    50   ~ 0
ISR_LATCH
Text Label 2150 4500 2    50   ~ 0
CLK
Text Label 3500 1600 0    50   ~ 0
RST
Text Label 7950 4150 2    50   ~ 0
RST
$Comp
L power:GND #PWR?
U 1 1 5DE51AED
P 7950 3850
AR Path="/5DB6029E/5DE51AED" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 3600 50  0001 C CNN
F 1 "GND" H 7955 3677 50  0000 C CNN
F 2 "" H 7950 3850 50  0001 C CNN
F 3 "" H 7950 3850 50  0001 C CNN
	1    7950 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE51AF3
P 7950 4050
AR Path="/5DB6029E/5DE51AF3" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 3800 50  0001 C CNN
F 1 "GND" H 7955 3877 50  0000 C CNN
F 2 "" H 7950 4050 50  0001 C CNN
F 3 "" H 7950 4050 50  0001 C CNN
	1    7950 4050
	0    1    1    0   
$EndComp
Text Notes 7150 4750 0    50   ~ 0
RST can be used to restart the Pro Micro.\nThis pin is pulled high by a 10k resistor on the board, \nand is active-low, so it must be connected to ground to initiate a reset.\nThe Pro Micro will remain "off" until the reset line is pulled back to high.
$Comp
L power:GND #PWR?
U 1 1 5DE51AFA
P 7950 4250
AR Path="/5DB6029E/5DE51AFA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DE51AFA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7950 4000 50  0001 C CNN
F 1 "GND" H 7955 4077 50  0000 C CNN
F 2 "" H 7950 4250 50  0001 C CNN
F 3 "" H 7950 4250 50  0001 C CNN
	1    7950 4250
	0    1    1    0   
$EndComp
Text Notes 8900 2300 0    50   ~ 0
SCL and SDA are used for an OLED\n
Text Label 2100 1800 2    50   ~ 0
SCL
Text Label 2100 1900 2    50   ~ 0
SDA
$EndSCHEMATC
