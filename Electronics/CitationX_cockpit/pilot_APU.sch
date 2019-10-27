EESchema Schematic File Version 4
LIBS:CitationX_cockpit-cache
EELAYER 26 0
EELAYER END
$Descr A3 11693 16535 portrait
encoding utf-8
Sheet 6 10
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
U 1 1 5DC019C4
P 2850 1950
AR Path="/5DB6029E/5DC019C4" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC019C4" Ref="U?"  Part="1" 
F 0 "U?" H 2850 2987 60  0000 C CNN
F 1 "ProMicro" H 2850 2881 60  0000 C CNN
F 2 "" H 2950 900 60  0000 C CNN
F 3 "" H 2950 900 60  0000 C CNN
	1    2850 1950
	1    0    0    -1  
$EndComp
Text Label 2150 1800 2    50   ~ 0
L0
Text Label 2150 1900 2    50   ~ 0
L1
Text Label 2150 2000 2    50   ~ 0
L2
Text Label 2150 2100 2    50   ~ 0
7SEG_DIO
Text Label 2150 2200 2    50   ~ 0
7SEG_CLK
Text Label 2150 2300 2    50   ~ 0
E
$Comp
L power:GND #PWR?
U 1 1 5DC019D1
P 3550 1300
AR Path="/5DB6029E/5DC019D1" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC019D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 1050 50  0001 C CNN
F 1 "GND" V 3555 1172 50  0000 R CNN
F 2 "" H 3550 1300 50  0001 C CNN
F 3 "" H 3550 1300 50  0001 C CNN
	1    3550 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC019D7
P 3550 1500
AR Path="/5DB6029E/5DC019D7" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC019D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 1350 50  0001 C CNN
F 1 "+5V" V 3565 1628 50  0000 L CNN
F 2 "" H 3550 1500 50  0001 C CNN
F 3 "" H 3550 1500 50  0001 C CNN
	1    3550 1500
	0    1    1    0   
$EndComp
NoConn ~ 3550 1200
NoConn ~ 3550 1400
NoConn ~ 3550 1600
NoConn ~ 3550 1700
NoConn ~ 2150 1500
NoConn ~ 2150 1400
NoConn ~ 2150 1300
NoConn ~ 2150 1200
$Comp
L 74xx:74HC4051 U?
U 1 1 5DC019EB
P 4700 1650
AR Path="/5DB6029E/5DC019EB" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC019EB" Ref="U?"  Part="1" 
F 0 "U?" H 4750 2328 50  0000 C CNN
F 1 "74HC4051" H 4750 2237 50  0000 C CNN
F 2 "" H 4700 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 4700 1250 50  0001 C CNN
	1    4700 1650
	1    0    0    -1  
$EndComp
Text Label 5100 1350 0    50   ~ 0
DIO0
Text Label 5100 1450 0    50   ~ 0
DIO1
Text Label 5100 1550 0    50   ~ 0
DIO2
Text Label 5100 1650 0    50   ~ 0
DIO3
Text Label 5100 1750 0    50   ~ 0
DIO4
Text Label 4400 1350 2    50   ~ 0
7SEG_DIO
Text Label 4400 1550 2    50   ~ 0
L0
Text Label 4400 1650 2    50   ~ 0
L1
Text Label 4400 1750 2    50   ~ 0
L2
Text Label 4400 1950 2    50   ~ 0
E
Wire Wire Line
	4700 2250 4750 2250
$Comp
L power:GND #PWR?
U 1 1 5DC01A00
P 4750 2250
AR Path="/5DB6029E/5DC01A00" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A00" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 2000 50  0001 C CNN
F 1 "GND" H 4755 2077 50  0000 C CNN
F 2 "" H 4750 2250 50  0001 C CNN
F 3 "" H 4750 2250 50  0001 C CNN
	1    4750 2250
	1    0    0    -1  
$EndComp
Connection ~ 4750 2250
Wire Wire Line
	4750 2250 4800 2250
$Comp
L Device:C_Small C?
U 1 1 5DC01A08
P 5150 1150
AR Path="/5DB6029E/5DC01A08" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DC01A08" Ref="C?"  Part="1" 
F 0 "C?" V 5379 1150 50  0000 C CNN
F 1 "0.1u" V 5288 1150 50  0000 C CNN
F 2 "" H 5150 1150 50  0001 C CNN
F 3 "~" H 5150 1150 50  0001 C CNN
	1    5150 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 1150 5050 1150
$Comp
L power:GND #PWR?
U 1 1 5DC01A10
P 5250 1150
AR Path="/5DB6029E/5DC01A10" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A10" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 900 50  0001 C CNN
F 1 "GND" V 5255 1022 50  0000 R CNN
F 2 "" H 5250 1150 50  0001 C CNN
F 3 "" H 5250 1150 50  0001 C CNN
	1    5250 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC01A16
P 4500 1150
AR Path="/5DB6029E/5DC01A16" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A16" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4500 1000 50  0001 C CNN
F 1 "+3.3V" V 4515 1278 50  0000 L CNN
F 2 "" H 4500 1150 50  0001 C CNN
F 3 "" H 4500 1150 50  0001 C CNN
	1    4500 1150
	0    -1   -1   0   
$EndComp
Connection ~ 4700 1150
Wire Wire Line
	4500 1150 4700 1150
$Comp
L 74xx:74HC4051 U?
U 1 1 5DC01A1E
P 6200 1650
AR Path="/5DB6029E/5DC01A1E" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC01A1E" Ref="U?"  Part="1" 
F 0 "U?" H 6250 2328 50  0000 C CNN
F 1 "74HC4051" H 6250 2237 50  0000 C CNN
F 2 "" H 6200 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4051.pdf" H 6200 1250 50  0001 C CNN
	1    6200 1650
	1    0    0    -1  
$EndComp
Text Label 6600 1350 0    50   ~ 0
CLK0
Text Label 6600 1450 0    50   ~ 0
CLK1
Text Label 6600 1550 0    50   ~ 0
CLK2
Text Label 6600 1650 0    50   ~ 0
CLK3
Text Label 6600 1750 0    50   ~ 0
CLK4
Text Label 5900 1550 2    50   ~ 0
L0
Text Label 5900 1650 2    50   ~ 0
L1
Text Label 5900 1750 2    50   ~ 0
L2
Text Label 5900 1950 2    50   ~ 0
E
Wire Wire Line
	6200 2250 6250 2250
$Comp
L power:GND #PWR?
U 1 1 5DC01A30
P 6250 2250
AR Path="/5DB6029E/5DC01A30" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A30" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 2000 50  0001 C CNN
F 1 "GND" H 6255 2077 50  0000 C CNN
F 2 "" H 6250 2250 50  0001 C CNN
F 3 "" H 6250 2250 50  0001 C CNN
	1    6250 2250
	1    0    0    -1  
$EndComp
Connection ~ 6250 2250
Wire Wire Line
	6250 2250 6300 2250
$Comp
L Device:C_Small C?
U 1 1 5DC01A38
P 6650 1150
AR Path="/5DB6029E/5DC01A38" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DC01A38" Ref="C?"  Part="1" 
F 0 "C?" V 6879 1150 50  0000 C CNN
F 1 "0.1u" V 6788 1150 50  0000 C CNN
F 2 "" H 6650 1150 50  0001 C CNN
F 3 "~" H 6650 1150 50  0001 C CNN
	1    6650 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 1150 6550 1150
$Comp
L power:GND #PWR?
U 1 1 5DC01A40
P 6750 1150
AR Path="/5DB6029E/5DC01A40" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A40" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 900 50  0001 C CNN
F 1 "GND" V 6755 1022 50  0000 R CNN
F 2 "" H 6750 1150 50  0001 C CNN
F 3 "" H 6750 1150 50  0001 C CNN
	1    6750 1150
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DC01A46
P 6000 1150
AR Path="/5DB6029E/5DC01A46" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A46" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 1000 50  0001 C CNN
F 1 "+3.3V" V 6015 1278 50  0000 L CNN
F 2 "" H 6000 1150 50  0001 C CNN
F 3 "" H 6000 1150 50  0001 C CNN
	1    6000 1150
	0    -1   -1   0   
$EndComp
Connection ~ 6200 1150
Wire Wire Line
	6000 1150 6200 1150
Text Label 5900 1350 2    50   ~ 0
7SEG_CLK
Text GLabel 2150 1600 0    50   Input ~ 0
SCL
Text GLabel 2150 1700 0    50   BiDi ~ 0
SDA
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DC01A51
P 7700 1750
AR Path="/5DB6029E/5DC01A51" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DC01A51" Ref="J?"  Part="1" 
F 0 "J?" H 7620 1117 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 7620 1116 50  0001 C CNN
F 2 "" H 7700 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	-1   0    0    1   
$EndComp
Text Label 7900 2150 0    50   ~ 0
CLK0
Text Label 7900 2050 0    50   ~ 0
DIO0
Text Label 7900 1950 0    50   ~ 0
CLK1
Text Label 7900 1850 0    50   ~ 0
DIO1
Text Label 7900 1750 0    50   ~ 0
CLK2
Text Label 7900 1650 0    50   ~ 0
DIO2
Text Label 7900 1550 0    50   ~ 0
CLK3
Text Label 7900 1450 0    50   ~ 0
DIO3
Text Label 7900 1350 0    50   ~ 0
CLK4
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DC01A64
P 8300 1750
AR Path="/5DB6029E/5DC01A64" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DC01A64" Ref="J?"  Part="1" 
F 0 "J?" H 8220 1117 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 8220 1116 50  0001 C CNN
F 2 "" H 8300 1750 50  0001 C CNN
F 3 "~" H 8300 1750 50  0001 C CNN
	1    8300 1750
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC01A78
P 8500 1550
AR Path="/5DB6029E/5DC01A78" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A78" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1400 50  0001 C CNN
F 1 "+5V" V 8515 1678 50  0000 L CNN
F 2 "" H 8500 1550 50  0001 C CNN
F 3 "" H 8500 1550 50  0001 C CNN
	1    8500 1550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC01A7E
P 8500 1450
AR Path="/5DB6029E/5DC01A7E" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A7E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1300 50  0001 C CNN
F 1 "+5V" V 8515 1578 50  0000 L CNN
F 2 "" H 8500 1450 50  0001 C CNN
F 3 "" H 8500 1450 50  0001 C CNN
	1    8500 1450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC01A84
P 8500 1350
AR Path="/5DB6029E/5DC01A84" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A84" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1200 50  0001 C CNN
F 1 "+5V" V 8515 1478 50  0000 L CNN
F 2 "" H 8500 1350 50  0001 C CNN
F 3 "" H 8500 1350 50  0001 C CNN
	1    8500 1350
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DC01A8A
P 8500 1250
AR Path="/5DB6029E/5DC01A8A" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01A8A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1100 50  0001 C CNN
F 1 "+5V" V 8515 1378 50  0000 L CNN
F 2 "" H 8500 1250 50  0001 C CNN
F 3 "" H 8500 1250 50  0001 C CNN
	1    8500 1250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC01AA2
P 8500 2150
AR Path="/5DB6029E/5DC01AA2" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01AA2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1900 50  0001 C CNN
F 1 "GND" H 8505 1977 50  0000 C CNN
F 2 "" H 8500 2150 50  0001 C CNN
F 3 "" H 8500 2150 50  0001 C CNN
	1    8500 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC01AA8
P 8500 2050
AR Path="/5DB6029E/5DC01AA8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01AA8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1800 50  0001 C CNN
F 1 "GND" H 8505 1877 50  0000 C CNN
F 2 "" H 8500 2050 50  0001 C CNN
F 3 "" H 8500 2050 50  0001 C CNN
	1    8500 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC01AAE
P 8500 1950
AR Path="/5DB6029E/5DC01AAE" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01AAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1700 50  0001 C CNN
F 1 "GND" H 8505 1777 50  0000 C CNN
F 2 "" H 8500 1950 50  0001 C CNN
F 3 "" H 8500 1950 50  0001 C CNN
	1    8500 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC01AB4
P 8500 1850
AR Path="/5DB6029E/5DC01AB4" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01AB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1600 50  0001 C CNN
F 1 "GND" H 8505 1677 50  0000 C CNN
F 2 "" H 8500 1850 50  0001 C CNN
F 3 "" H 8500 1850 50  0001 C CNN
	1    8500 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC01ABA
P 8500 1750
AR Path="/5DB6029E/5DC01ABA" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01ABA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8500 1500 50  0001 C CNN
F 1 "GND" H 8505 1577 50  0000 C CNN
F 2 "" H 8500 1750 50  0001 C CNN
F 3 "" H 8500 1750 50  0001 C CNN
	1    8500 1750
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7350 1000 8850 1000
Wire Notes Line
	8850 1000 8850 2450
Wire Notes Line
	8850 2450 7350 2450
Wire Notes Line
	7350 2450 7350 1000
Text Notes 7450 2400 0    50   ~ 0
Connectors for 7x 7-seg
Wire Notes Line
	500  2600 11150 2600
Text Notes 650  750  0    50   ~ 0
The ProMicro will receive the values to be displayed on \nthe 7-segments via I2C. It will then take care of the diaplays.
$Comp
L power:+5V #PWR?
U 1 1 5DC01BE0
P 8450 1650
AR Path="/5DB6029E/5DC01BE0" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC01BE0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8450 1500 50  0001 C CNN
F 1 "+5V" V 8465 1778 50  0000 L CNN
F 2 "" H 8450 1650 50  0001 C CNN
F 3 "" H 8450 1650 50  0001 C CNN
	1    8450 1650
	0    1    1    0   
$EndComp
$Comp
L pkl_misc:74HC165 U?
U 1 1 5DC04FDB
P 2800 3900
AR Path="/5DC04FDB" Ref="U?"  Part="1" 
AR Path="/5DB5DCD1/5DC04FDB" Ref="U?"  Part="1" 
AR Path="/5DB6029E/5DC04FDB" Ref="U?"  Part="1" 
AR Path="/5DC174D4/5DC04FDB" Ref="U?"  Part="1" 
AR Path="/5DC174D6/5DC04FDB" Ref="U?"  Part="1" 
F 0 "U?" H 2800 4797 60  0000 C CNN
F 1 "74HC165" H 2800 4691 60  0000 C CNN
F 2 "" H 4990 2680 60  0001 C CNN
F 3 "" H 4990 2680 60  0001 C CNN
	1    2800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC04FE2
P 2200 4400
AR Path="/5DB6029E/5DC04FE2" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC04FE2" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC04FE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2200 4150 50  0001 C CNN
F 1 "GND" V 2205 4272 50  0000 R CNN
F 2 "" H 2200 4400 50  0001 C CNN
F 3 "" H 2200 4400 50  0001 C CNN
	1    2200 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC04FE8
P 3400 4550
AR Path="/5DB6029E/5DC04FE8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC04FE8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC04FE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 4300 50  0001 C CNN
F 1 "GND" V 3405 4422 50  0000 R CNN
F 2 "" H 3400 4550 50  0001 C CNN
F 3 "" H 3400 4550 50  0001 C CNN
	1    3400 4550
	0    -1   -1   0   
$EndComp
NoConn ~ 3400 4300
$Comp
L Device:C_Small C?
U 1 1 5DC04FF1
P 3400 3350
AR Path="/5DB6029E/5DC04FF1" Ref="C?"  Part="1" 
AR Path="/5DC174D4/5DC04FF1" Ref="C?"  Part="1" 
AR Path="/5DC174D6/5DC04FF1" Ref="C?"  Part="1" 
F 0 "C?" H 3492 3396 50  0000 L CNN
F 1 "0.1u" H 3492 3305 50  0000 L CNN
F 2 "" H 3400 3350 50  0001 C CNN
F 3 "~" H 3400 3350 50  0001 C CNN
	1    3400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC04FF8
P 3400 3450
AR Path="/5DB6029E/5DC04FF8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC04FF8" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC04FF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 3200 50  0001 C CNN
F 1 "GND" H 3405 3277 50  0000 C CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3250 3600 3250
$Comp
L power:+3.3V #PWR?
U 1 1 5DC04FFF
P 3600 3250
AR Path="/5DB6029E/5DC04FFF" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC04FFF" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC04FFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 3100 50  0001 C CNN
F 1 "+3.3V" V 3615 3378 50  0000 L CNN
F 2 "" H 3600 3250 50  0001 C CNN
F 3 "" H 3600 3250 50  0001 C CNN
	1    3600 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN?
U 1 1 5DC05005
P 1300 3700
AR Path="/5DB6029E/5DC05005" Ref="RN?"  Part="1" 
AR Path="/5DC174D4/5DC05005" Ref="RN?"  Part="1" 
AR Path="/5DC174D6/5DC05005" Ref="RN?"  Part="1" 
F 0 "RN?" V 1817 3700 50  0000 C CNN
F 1 "R_Network08" V 1726 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 1775 3700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1300 3700 50  0001 C CNN
	1    1300 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 3400 2200 3400
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
$Comp
L power:+3.3V #PWR?
U 1 1 5DC05014
P 1000 4100
AR Path="/5DB6029E/5DC05014" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D4/5DC05014" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC05014" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 3950 50  0001 C CNN
F 1 "+3.3V" V 1015 4228 50  0000 L CNN
F 2 "" H 1000 4100 50  0001 C CNN
F 3 "" H 1000 4100 50  0001 C CNN
	1    1000 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 4100 1000 4100
Connection ~ 3400 3250
Text Label 3550 1800 0    50   ~ 0
MAP_LIGHT
Text Label 3550 1900 0    50   ~ 0
POT_X1
Text Label 1500 3400 0    50   ~ 0
BLEED_MAX
Text Label 1500 3500 0    50   ~ 0
BLEED_OFF
Text Label 1500 3600 0    50   ~ 0
GEN_ON
Text Label 1500 3700 0    50   ~ 0
GEN_RST
Text Label 1500 3800 0    50   ~ 0
APU_START_DIS
Text Label 1500 3900 0    50   ~ 0
APU_START
Text Label 1500 4100 0    50   ~ 0
PB_TEST
Text Label 3550 2000 0    50   ~ 0
MASTER_ON
Text Label 1500 4000 0    50   ~ 0
APU_STOP
Text Label 3550 2100 0    50   ~ 0
CLK
Text Label 3550 2200 0    50   ~ 0
ISR_LATCH
Text Label 1800 4300 0    50   ~ 0
CLK
Text Label 1800 4500 0    50   ~ 0
ISR_LATCH
Wire Wire Line
	1800 4300 2200 4300
Wire Wire Line
	1800 4500 2200 4500
Text Label 3400 4100 0    50   ~ 0
ISR_OUT
$Comp
L power:GND #PWR?
U 1 1 5DC0FF49
P 2200 3300
AR Path="/5DB6029E/5DC0FF49" Ref="#PWR?"  Part="1" 
AR Path="/5DC174D6/5DC0FF49" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2200 3050 50  0001 C CNN
F 1 "GND" H 2205 3127 50  0000 C CNN
F 2 "" H 2200 3300 50  0001 C CNN
F 3 "" H 2200 3300 50  0001 C CNN
	1    2200 3300
	-1   0    0    1   
$EndComp
Text Label 3550 2300 0    50   ~ 0
ISR_OUT
$Comp
L Connector:Screw_Terminal_01x10 J?
U 1 1 5DC125CC
P 5650 3650
AR Path="/5DB6029E/5DC125CC" Ref="J?"  Part="1" 
AR Path="/5DC174D6/5DC125CC" Ref="J?"  Part="1" 
F 0 "J?" H 5570 3017 50  0000 C CNN
F 1 "Screw_Terminal_01x10" H 5570 3016 50  0001 C CNN
F 2 "" H 5650 3650 50  0001 C CNN
F 3 "~" H 5650 3650 50  0001 C CNN
	1    5650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3250 5450 3250
Wire Wire Line
	4750 3350 5450 3350
Wire Wire Line
	4750 3450 5450 3450
Wire Wire Line
	4750 3650 5450 3650
Wire Wire Line
	4750 3750 5450 3750
Wire Wire Line
	4750 3850 5450 3850
Text Label 4750 3250 0    50   ~ 0
BLEED_MAX
Text Label 4750 3350 0    50   ~ 0
BLEED_OFF
Text Label 4750 3450 0    50   ~ 0
GEN_ON
Text Label 4750 3550 0    50   ~ 0
GEN_RST
Text Label 4750 3650 0    50   ~ 0
APU_START_DIS
Text Label 4750 3750 0    50   ~ 0
APU_START
Text Label 4750 3950 0    50   ~ 0
PB_TEST
Text Label 4750 3850 0    50   ~ 0
APU_STOP
Wire Wire Line
	4750 3550 5450 3550
Wire Wire Line
	4750 3950 5450 3950
$EndSCHEMATC
