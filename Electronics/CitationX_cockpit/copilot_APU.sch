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
U 1 1 5DC59E02
P 2850 2050
AR Path="/5DB6029E/5DC59E02" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC59E02" Ref="U?"  Part="1" 
AR Path="/5DC313C6/5DC59E02" Ref="U?"  Part="1" 
F 0 "U?" H 2850 3087 60  0000 C CNN
F 1 "ProMicro" H 2850 2981 60  0000 C CNN
F 2 "" H 2950 1000 60  0000 C CNN
F 3 "" H 2950 1000 60  0000 C CNN
	1    2850 2050
	1    0    0    -1  
$EndComp
Text Label 2150 1900 2    50   ~ 0
L0
Text Label 2150 2000 2    50   ~ 0
L1
Text Label 2150 2100 2    50   ~ 0
L2
Text Label 2150 2200 2    50   ~ 0
7SEG_DIO
Text Label 2150 2300 2    50   ~ 0
7SEG_CLK
Text Label 2150 2400 2    50   ~ 0
E
$Comp
L power:GND #PWR?
U 1 1 5DC59E0F
P 3550 1400
AR Path="/5DB6029E/5DC59E0F" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E0F" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E0F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 1150 50  0001 C CNN
F 1 "GND" V 3555 1272 50  0000 R CNN
F 2 "" H 3550 1400 50  0001 C CNN
F 3 "" H 3550 1400 50  0001 C CNN
	1    3550 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC59E15
P 3550 1600
AR Path="/5DB6029E/5DC59E15" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E15" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E15" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 1450 50  0001 C CNN
F 1 "+5V" V 3565 1728 50  0000 L CNN
F 2 "" H 3550 1600 50  0001 C CNN
F 3 "" H 3550 1600 50  0001 C CNN
	1    3550 1600
	0    1    1    0   
$EndComp
NoConn ~ 3550 1300
NoConn ~ 3550 1500
NoConn ~ 3550 1700
NoConn ~ 3550 1800
NoConn ~ 2150 1600
NoConn ~ 2150 1500
NoConn ~ 2150 1400
NoConn ~ 2150 1300
$Comp
L 74xx:74HC4051 U?
U 1 1 5DC59E23
P 4700 1750
AR Path="/5DB6029E/5DC59E23" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC59E23" Ref="U?"  Part="1" 
AR Path="/5DC313C6/5DC59E23" Ref="U?"  Part="1" 
F 0 "U?" H 4750 2428 50  0000 C CNN
F 1 "74HC4051" H 4750 2337 50  0000 C CNN
F 2 "" H 4700 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 4700 1350 50  0001 C CNN
	1    4700 1750
	1    0    0    -1  
$EndComp
Text Label 5100 1450 0    50   ~ 0
DIO0
Text Label 5100 1550 0    50   ~ 0
DIO1
Text Label 5100 1650 0    50   ~ 0
DIO2
Text Label 5100 1750 0    50   ~ 0
DIO3
Text Label 5100 1850 0    50   ~ 0
DIO4
Text Label 4400 1450 2    50   ~ 0
7SEG_DIO
Text Label 4400 1650 2    50   ~ 0
L0
Text Label 4400 1750 2    50   ~ 0
L1
Text Label 4400 1850 2    50   ~ 0
L2
Text Label 4400 2050 2    50   ~ 0
E
Wire Wire Line
	4700 2350 4750 2350
$Comp
L power:GND #PWR?
U 1 1 5DC59E35
P 4750 2350
AR Path="/5DB6029E/5DC59E35" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E35" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 2100 50  0001 C CNN
F 1 "GND" H 4755 2177 50  0000 C CNN
F 2 "" H 4750 2350 50  0001 C CNN
F 3 "" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
Connection ~ 4750 2350
Wire Wire Line
	4750 2350 4800 2350
$Comp
L Device:C_Small C?
U 1 1 5DC59E3D
P 5150 1250
AR Path="/5DB6029E/5DC59E3D" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DC59E3D" Ref="C?"  Part="1" 
AR Path="/5DC313C6/5DC59E3D" Ref="C?"  Part="1" 
F 0 "C?" V 5379 1250 50  0000 C CNN
F 1 "0.1u" V 5288 1250 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 1250 5050 1250
$Comp
L power:GND #PWR?
U 1 1 5DC59E45
P 5250 1250
AR Path="/5DB6029E/5DC59E45" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E45" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E45" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 1000 50  0001 C CNN
F 1 "GND" V 5255 1122 50  0000 R CNN
F 2 "" H 5250 1250 50  0001 C CNN
F 3 "" H 5250 1250 50  0001 C CNN
	1    5250 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC59E4B
P 4500 1250
AR Path="/5DB6029E/5DC59E4B" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E4B" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E4B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 1100 50  0001 C CNN
F 1 "+3.3V" V 4515 1378 50  0000 L CNN
F 2 "" H 4500 1250 50  0001 C CNN
F 3 "" H 4500 1250 50  0001 C CNN
	1    4500 1250
	0    -1   -1   0   
$EndComp
Connection ~ 4700 1250
Wire Wire Line
	4500 1250 4700 1250
$Comp
L 74xx:74HC4051 U?
U 1 1 5DC59E53
P 6200 1750
AR Path="/5DB6029E/5DC59E53" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC59E53" Ref="U?"  Part="1" 
AR Path="/5DC313C6/5DC59E53" Ref="U?"  Part="1" 
F 0 "U?" H 6250 2428 50  0000 C CNN
F 1 "74HC4051" H 6250 2337 50  0000 C CNN
F 2 "" H 6200 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 6200 1350 50  0001 C CNN
	1    6200 1750
	1    0    0    -1  
$EndComp
Text Label 6600 1450 0    50   ~ 0
CLK0
Text Label 6600 1550 0    50   ~ 0
CLK1
Text Label 6600 1650 0    50   ~ 0
CLK2
Text Label 6600 1750 0    50   ~ 0
CLK3
Text Label 6600 1850 0    50   ~ 0
CLK4
Text Label 5900 1650 2    50   ~ 0
L0
Text Label 5900 1750 2    50   ~ 0
L1
Text Label 5900 1850 2    50   ~ 0
L2
Text Label 5900 2050 2    50   ~ 0
E
Wire Wire Line
	6200 2350 6250 2350
$Comp
L power:GND #PWR?
U 1 1 5DC59E64
P 6250 2350
AR Path="/5DB6029E/5DC59E64" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E64" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E64" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 2100 50  0001 C CNN
F 1 "GND" H 6255 2177 50  0000 C CNN
F 2 "" H 6250 2350 50  0001 C CNN
F 3 "" H 6250 2350 50  0001 C CNN
	1    6250 2350
	1    0    0    -1  
$EndComp
Connection ~ 6250 2350
Wire Wire Line
	6250 2350 6300 2350
$Comp
L Device:C_Small C?
U 1 1 5DC59E6C
P 6650 1250
AR Path="/5DB6029E/5DC59E6C" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DC59E6C" Ref="C?"  Part="1" 
AR Path="/5DC313C6/5DC59E6C" Ref="C?"  Part="1" 
F 0 "C?" V 6879 1250 50  0000 C CNN
F 1 "0.1u" V 6788 1250 50  0000 C CNN
F 2 "" H 6650 1250 50  0001 C CNN
F 3 "~" H 6650 1250 50  0001 C CNN
	1    6650 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 1250 6550 1250
$Comp
L power:GND #PWR?
U 1 1 5DC59E74
P 6750 1250
AR Path="/5DB6029E/5DC59E74" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E74" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E74" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 1000 50  0001 C CNN
F 1 "GND" V 6755 1122 50  0000 R CNN
F 2 "" H 6750 1250 50  0001 C CNN
F 3 "" H 6750 1250 50  0001 C CNN
	1    6750 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC59E7A
P 6000 1250
AR Path="/5DB6029E/5DC59E7A" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E7A" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E7A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 1100 50  0001 C CNN
F 1 "+3.3V" V 6015 1378 50  0000 L CNN
F 2 "" H 6000 1250 50  0001 C CNN
F 3 "" H 6000 1250 50  0001 C CNN
	1    6000 1250
	0    -1   -1   0   
$EndComp
Connection ~ 6200 1250
Wire Wire Line
	6000 1250 6200 1250
Text Label 5900 1450 2    50   ~ 0
7SEG_CLK
Text GLabel 2150 1700 0    50   Input ~ 0
SCL
Text GLabel 2150 1800 0    50   BiDi ~ 0
SDA
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DC59E85
P 8000 1750
AR Path="/5DB6029E/5DC59E85" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DC59E85" Ref="J?"  Part="1" 
AR Path="/5DC313C6/5DC59E85" Ref="J?"  Part="1" 
F 0 "J?" H 7920 1117 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 7920 1116 50  0001 C CNN
F 2 "" H 8000 1750 50  0001 C CNN
F 3 "~" H 8000 1750 50  0001 C CNN
	1    8000 1750
	1    0    0    -1  
$EndComp
Text Label 7800 1350 2    50   ~ 0
CLK0
Text Label 7800 1450 2    50   ~ 0
DIO0
Text Label 7800 1550 2    50   ~ 0
CLK1
Text Label 7800 1650 2    50   ~ 0
DIO1
Text Label 7800 1750 2    50   ~ 0
CLK2
Text Label 7800 1850 2    50   ~ 0
DIO2
Text Label 7800 1950 2    50   ~ 0
CLK3
Text Label 7800 2050 2    50   ~ 0
DIO3
Text Label 7800 2150 2    50   ~ 0
CLK4
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DC59E95
P 8700 1750
AR Path="/5DB6029E/5DC59E95" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DC59E95" Ref="J?"  Part="1" 
AR Path="/5DC313C6/5DC59E95" Ref="J?"  Part="1" 
F 0 "J?" H 8620 1117 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 8620 1116 50  0001 C CNN
F 2 "" H 8700 1750 50  0001 C CNN
F 3 "~" H 8700 1750 50  0001 C CNN
	1    8700 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC59E9C
P 8500 1950
AR Path="/5DB6029E/5DC59E9C" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59E9C" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59E9C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1800 50  0001 C CNN
F 1 "+5V" V 8515 2078 50  0000 L CNN
F 2 "" H 8500 1950 50  0001 C CNN
F 3 "" H 8500 1950 50  0001 C CNN
	1    8500 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC59EA2
P 8500 2050
AR Path="/5DB6029E/5DC59EA2" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EA2" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1900 50  0001 C CNN
F 1 "+5V" V 8515 2178 50  0000 L CNN
F 2 "" H 8500 2050 50  0001 C CNN
F 3 "" H 8500 2050 50  0001 C CNN
	1    8500 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC59EA8
P 8500 2150
AR Path="/5DB6029E/5DC59EA8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EA8" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EA8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 2000 50  0001 C CNN
F 1 "+5V" V 8515 2278 50  0000 L CNN
F 2 "" H 8500 2150 50  0001 C CNN
F 3 "" H 8500 2150 50  0001 C CNN
	1    8500 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC59EAE
P 8500 2250
AR Path="/5DB6029E/5DC59EAE" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EAE" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 2100 50  0001 C CNN
F 1 "+5V" V 8515 2378 50  0000 L CNN
F 2 "" H 8500 2250 50  0001 C CNN
F 3 "" H 8500 2250 50  0001 C CNN
	1    8500 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EB4
P 8500 1350
AR Path="/5DB6029E/5DC59EB4" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EB4" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1100 50  0001 C CNN
F 1 "GND" H 8505 1177 50  0000 C CNN
F 2 "" H 8500 1350 50  0001 C CNN
F 3 "" H 8500 1350 50  0001 C CNN
	1    8500 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EBA
P 8500 1450
AR Path="/5DB6029E/5DC59EBA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EBA" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EBA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1200 50  0001 C CNN
F 1 "GND" H 8505 1277 50  0000 C CNN
F 2 "" H 8500 1450 50  0001 C CNN
F 3 "" H 8500 1450 50  0001 C CNN
	1    8500 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EC0
P 8500 1550
AR Path="/5DB6029E/5DC59EC0" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EC0" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EC0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1300 50  0001 C CNN
F 1 "GND" H 8505 1377 50  0000 C CNN
F 2 "" H 8500 1550 50  0001 C CNN
F 3 "" H 8500 1550 50  0001 C CNN
	1    8500 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EC6
P 8500 1650
AR Path="/5DB6029E/5DC59EC6" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EC6" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1400 50  0001 C CNN
F 1 "GND" H 8505 1477 50  0000 C CNN
F 2 "" H 8500 1650 50  0001 C CNN
F 3 "" H 8500 1650 50  0001 C CNN
	1    8500 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59ECC
P 8500 1750
AR Path="/5DB6029E/5DC59ECC" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59ECC" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59ECC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1500 50  0001 C CNN
F 1 "GND" H 8505 1577 50  0000 C CNN
F 2 "" H 8500 1750 50  0001 C CNN
F 3 "" H 8500 1750 50  0001 C CNN
	1    8500 1750
	0    1    1    0   
$EndComp
Wire Notes Line
	7350 1100 8850 1100
Wire Notes Line
	8850 1100 8850 2550
Wire Notes Line
	8850 2550 7350 2550
Wire Notes Line
	7350 2550 7350 1100
Text Notes 7450 2500 0    50   ~ 0
Connectors for 7x 7-seg
Wire Notes Line
	500  2700 11150 2700
Text Notes 650  850  0    50   ~ 0
The ProMicro will receive the values to be displayed on \nthe 7-segments via I2C. It will then take care of the diaplays.
$Comp
L power:+5V #PWR?
U 1 1 5DC59ED9
P 8550 1850
AR Path="/5DB6029E/5DC59ED9" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59ED9" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59ED9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 1700 50  0001 C CNN
F 1 "+5V" V 8565 1978 50  0000 L CNN
F 2 "" H 8550 1850 50  0001 C CNN
F 3 "" H 8550 1850 50  0001 C CNN
	1    8550 1850
	0    -1   -1   0   
$EndComp
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DC59EDF
P 2800 4000
AR Path="/5DC59EDF" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DC59EDF" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DC59EDF" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC59EDF" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC59EDF" Ref="U?"  Part="1" 
AR Path="/5DC313C6/5DC59EDF" Ref="U?"  Part="1" 
F 0 "U?" H 2800 4897 60  0000 C CNN
F 1 "74HC165" H 2800 4791 60  0000 C CNN
F 2 "" H 4990 2780 60  0001 C CNN
F 3 "" H 4990 2780 60  0001 C CNN
	1    2800 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EE6
P 2200 4500
AR Path="/5DB6029E/5DC59EE6" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC59EE6" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EE6" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EE6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2200 4250 50  0001 C CNN
F 1 "GND" V 2205 4372 50  0000 R CNN
F 2 "" H 2200 4500 50  0001 C CNN
F 3 "" H 2200 4500 50  0001 C CNN
	1    2200 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EEC
P 3400 4650
AR Path="/5DB6029E/5DC59EEC" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC59EEC" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EEC" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EEC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 4400 50  0001 C CNN
F 1 "GND" V 3405 4522 50  0000 R CNN
F 2 "" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3400 4650
	0    -1   -1   0   
$EndComp
NoConn ~ 3400 4400
$Comp
L Device:C_Small C?
U 1 1 5DC59EF3
P 3400 3450
AR Path="/5DB6029E/5DC59EF3" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC59EF3" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DC59EF3" Ref="C?"  Part="1" 
AR Path="/5DC313C6/5DC59EF3" Ref="C?"  Part="1" 
F 0 "C?" H 3492 3496 50  0000 L CNN
F 1 "0.1u" H 3492 3405 50  0000 L CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "~" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC59EFA
P 3400 3550
AR Path="/5DB6029E/5DC59EFA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC59EFA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59EFA" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59EFA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 3300 50  0001 C CNN
F 1 "GND" H 3405 3377 50  0000 C CNN
F 2 "" H 3400 3550 50  0001 C CNN
F 3 "" H 3400 3550 50  0001 C CNN
	1    3400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3350 3600 3350
$Comp
L power:+3.3V #PWR?
U 1 1 5DC59F01
P 3600 3350
AR Path="/5DB6029E/5DC59F01" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC59F01" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59F01" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59F01" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 3200 50  0001 C CNN
F 1 "+3.3V" V 3615 3478 50  0000 L CNN
F 2 "" H 3600 3350 50  0001 C CNN
F 3 "" H 3600 3350 50  0001 C CNN
	1    3600 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DC59F07
P 1300 3800
AR Path="/5DB6029E/5DC59F07" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DC59F07" Ref="RN?"  Part="1" 
AR Path="/5DC174D6/5DC59F07" Ref="RN?"  Part="1" 
AR Path="/5DC313C6/5DC59F07" Ref="RN?"  Part="1" 
F 0 "RN?" V 1817 3800 50  0000 C CNN
F 1 "R_Network08" V 1726 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1775 3800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1300 3800 50  0001 C CNN
	1    1300 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 3500 2200 3500
Wire Wire Line
	1500 3600 2200 3600
Wire Wire Line
	1500 3700 2200 3700
Wire Wire Line
	1500 3800 2200 3800
Wire Wire Line
	1500 3900 2200 3900
Wire Wire Line
	1500 4000 2200 4000
Wire Wire Line
	1500 4100 2200 4100
Wire Wire Line
	1500 4200 2200 4200
$Comp
L power:+3.3V #PWR?
U 1 1 5DC59F16
P 1000 4200
AR Path="/5DB6029E/5DC59F16" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC59F16" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59F16" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59F16" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 4050 50  0001 C CNN
F 1 "+3.3V" V 1015 4328 50  0000 L CNN
F 2 "" H 1000 4200 50  0001 C CNN
F 3 "" H 1000 4200 50  0001 C CNN
	1    1000 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 4200 1000 4200
Connection ~ 3400 3350
Text Label 3550 1900 0    50   ~ 0
MAP_LIGHT
Text Label 3550 2000 0    50   ~ 0
POT_X1
Text Label 1500 3500 0    50   ~ 0
BLEED_MAX
Text Label 1500 3600 0    50   ~ 0
BLEED_OFF
Text Label 1500 3700 0    50   ~ 0
GEN_ON
Text Label 1500 3800 0    50   ~ 0
GEN_RST
Text Label 1500 3900 0    50   ~ 0
APU_START_DIS
Text Label 1500 4000 0    50   ~ 0
APU_START
Text Label 1500 4200 0    50   ~ 0
PB_TEST
Text Label 3550 2100 0    50   ~ 0
MASTER_ON
Text Label 1500 4100 0    50   ~ 0
APU_STOP
Text Label 3550 2200 0    50   ~ 0
CLK
Text Label 3550 2300 0    50   ~ 0
ISR_LATCH
Text Label 1800 4400 0    50   ~ 0
CLK
Text Label 1800 4600 0    50   ~ 0
ISR_LATCH
Wire Wire Line
	1800 4400 2200 4400
Wire Wire Line
	1800 4600 2200 4600
Text Label 3400 4200 0    50   ~ 0
ISR_OUT
$Comp
L power:GND #PWR?
U 1 1 5DC59F30
P 2200 3400
AR Path="/5DB6029E/5DC59F30" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC59F30" Ref="#PWR?"  Part="1" 
AR Path="/5DC313C6/5DC59F30" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2200 3150 50  0001 C CNN
F 1 "GND" H 2205 3227 50  0000 C CNN
F 2 "" H 2200 3400 50  0001 C CNN
F 3 "" H 2200 3400 50  0001 C CNN
	1    2200 3400
	-1   0    0    1   
$EndComp
Text Label 3550 2400 0    50   ~ 0
ISR_OUT
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DC59F37
P 5650 3750
AR Path="/5DB6029E/5DC59F37" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DC59F37" Ref="J?"  Part="1" 
AR Path="/5DC313C6/5DC59F37" Ref="J?"  Part="1" 
F 0 "J?" H 5570 3117 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 5570 3116 50  0001 C CNN
F 2 "" H 5650 3750 50  0001 C CNN
F 3 "~" H 5650 3750 50  0001 C CNN
	1    5650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 5450 3350
Wire Wire Line
	4750 3450 5450 3450
Wire Wire Line
	4750 3550 5450 3550
Wire Wire Line
	4750 3750 5450 3750
Wire Wire Line
	4750 3850 5450 3850
Wire Wire Line
	4750 3950 5450 3950
Text Label 4750 3350 0    50   ~ 0
BLEED_MAX
Text Label 4750 3450 0    50   ~ 0
BLEED_OFF
Text Label 4750 3550 0    50   ~ 0
GEN_ON
Text Label 4750 3650 0    50   ~ 0
GEN_RST
Text Label 4750 3750 0    50   ~ 0
APU_START_DIS
Text Label 4750 3850 0    50   ~ 0
APU_START
Text Label 4750 4050 0    50   ~ 0
PB_TEST
Text Label 4750 3950 0    50   ~ 0
APU_STOP
Wire Wire Line
	4750 3650 5450 3650
Wire Wire Line
	4750 4050 5450 4050
Text Label 7800 2250 2    50   ~ 0
DIO4
NoConn ~ 6600 1950
NoConn ~ 6600 2050
NoConn ~ 6600 2150
NoConn ~ 5100 1950
NoConn ~ 5100 2050
NoConn ~ 5100 2150
$EndSCHEMATC
