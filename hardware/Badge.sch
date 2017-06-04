EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
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
L ATTINY85-S IC1
U 1 1 58F7397E
P 5900 4650
F 0 "IC1" H 4750 5050 50  0000 C CNN
F 1 "ATTINY85-S" H 6900 4250 50  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 6850 4650 50  0000 C CIN
F 3 "" H 5900 4650 50  0000 C CNN
	1    5900 4650
	1    0    0    -1  
$EndComp
$Comp
L USB_A P1
U 1 1 58F73B32
P 2950 3800
F 0 "P1" H 3150 3600 50  0000 C CNN
F 1 "USB_A" H 2900 4000 50  0000 C CNN
F 2 "OzLockCon:USB_A_SMD" V 2900 3700 50  0001 C CNN
F 3 "" V 2900 3700 50  0000 C CNN
	1    2950 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 58F73CFF
P 7400 4250
F 0 "#PWR01" H 7400 4100 50  0001 C CNN
F 1 "VCC" H 7400 4400 50  0000 C CNN
F 2 "" H 7400 4250 50  0000 C CNN
F 3 "" H 7400 4250 50  0000 C CNN
	1    7400 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58F73D2C
P 7400 5100
F 0 "#PWR02" H 7400 4850 50  0001 C CNN
F 1 "GND" H 7400 4950 50  0000 C CNN
F 2 "" H 7400 5100 50  0000 C CNN
F 3 "" H 7400 5100 50  0000 C CNN
	1    7400 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 58F73DC0
P 2500 3950
F 0 "#PWR03" H 2500 3800 50  0001 C CNN
F 1 "VCC" H 2500 4100 50  0000 C CNN
F 2 "" H 2500 3950 50  0000 C CNN
F 3 "" H 2500 3950 50  0000 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58F73DE1
P 3300 4150
F 0 "#PWR04" H 3300 3900 50  0001 C CNN
F 1 "GND" H 3300 4000 50  0000 C CNN
F 2 "" H 3300 4150 50  0000 C CNN
F 3 "" H 3300 4150 50  0000 C CNN
	1    3300 4150
	1    0    0    -1  
$EndComp
Text GLabel 2850 4100 3    60   Input ~ 0
D_MINUS
Text GLabel 2950 4100 3    60   Input ~ 0
D_PLUS
Text GLabel 4550 4500 0    60   Input ~ 0
UC_D_MINUS
Text GLabel 4550 4600 0    60   Input ~ 0
UC_D_PLUS
$Comp
L R R2
U 1 1 58F73F24
P 2850 5700
F 0 "R2" V 2930 5700 50  0000 C CNN
F 1 "68" V 2850 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2780 5700 50  0001 C CNN
F 3 "" H 2850 5700 50  0000 C CNN
	1    2850 5700
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 58F73FBD
P 2850 6000
F 0 "R3" V 2930 6000 50  0000 C CNN
F 1 "68" V 2850 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2780 6000 50  0001 C CNN
F 3 "" H 2850 6000 50  0000 C CNN
	1    2850 6000
	0    1    1    0   
$EndComp
Text GLabel 3000 5700 2    60   Input ~ 0
UC_D_MINUS
Text GLabel 3000 6000 2    60   Input ~ 0
UC_D_PLUS
$Comp
L R R1
U 1 1 58F740A6
P 2450 5450
F 0 "R1" V 2530 5450 50  0000 C CNN
F 1 "1.5k" V 2450 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2380 5450 50  0001 C CNN
F 3 "" H 2450 5450 50  0000 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 58F74152
P 2450 5300
F 0 "#PWR05" H 2450 5150 50  0001 C CNN
F 1 "VCC" H 2450 5450 50  0000 C CNN
F 2 "" H 2450 5300 50  0000 C CNN
F 3 "" H 2450 5300 50  0000 C CNN
	1    2450 5300
	1    0    0    -1  
$EndComp
$Comp
L ZENER D4
U 1 1 58F74170
P 2550 6300
F 0 "D4" H 2550 6400 50  0000 C CNN
F 1 "ZENER" H 2550 6200 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2550 6300 50  0001 C CNN
F 3 "" H 2550 6300 50  0000 C CNN
	1    2550 6300
	0    1    1    0   
$EndComp
$Comp
L ZENER D3
U 1 1 58F7421F
P 2250 6300
F 0 "D3" H 2250 6400 50  0000 C CNN
F 1 "ZENER" H 2250 6200 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323_HandSoldering" H 2250 6300 50  0001 C CNN
F 3 "" H 2250 6300 50  0000 C CNN
	1    2250 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 4250 7400 4400
Wire Wire Line
	7400 4400 7250 4400
Wire Wire Line
	7250 4900 7400 4900
Wire Wire Line
	7400 4900 7400 5100
Wire Wire Line
	2500 3950 2500 4150
Wire Wire Line
	2500 4150 2750 4150
Wire Wire Line
	2750 4150 2750 4100
Wire Wire Line
	3300 4150 3300 3700
Wire Wire Line
	3300 3700 3250 3700
Wire Wire Line
	3050 4100 3300 4100
Connection ~ 3300 4100
Wire Wire Line
	2100 5700 2700 5700
Wire Wire Line
	2100 6000 2700 6000
Wire Wire Line
	2450 5600 2450 5700
Connection ~ 2450 5700
Wire Wire Line
	2250 6100 2250 5700
Connection ~ 2250 5700
Wire Wire Line
	2550 6000 2550 6100
Connection ~ 2550 6000
Wire Wire Line
	2250 6500 2550 6500
$Comp
L GND #PWR06
U 1 1 58F7434F
P 2400 6600
F 0 "#PWR06" H 2400 6350 50  0001 C CNN
F 1 "GND" H 2400 6450 50  0000 C CNN
F 2 "" H 2400 6600 50  0000 C CNN
F 3 "" H 2400 6600 50  0000 C CNN
	1    2400 6600
	1    0    0    -1  
$EndComp
Text GLabel 2100 5700 0    60   Input ~ 0
D_MINUS
Text GLabel 2100 6000 0    60   Input ~ 0
D_PLUS
Text GLabel 4550 4400 0    60   Input ~ 0
LED_LEFT
Text GLabel 4550 4800 0    60   Input ~ 0
LED_RIGHT
Text GLabel 4550 4700 0    60   Input ~ 0
SW1
$Comp
L LED D1
U 1 1 58F74CCC
P 1400 4050
F 0 "D1" H 1400 4150 50  0000 C CNN
F 1 "LED" H 1400 3950 50  0000 C CNN
F 2 "OzLockCon:LED_3528" H 1400 4050 50  0001 C CNN
F 3 "" H 1400 4050 50  0000 C CNN
	1    1400 4050
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 58F74DAB
P 1850 4050
F 0 "D2" H 1850 4150 50  0000 C CNN
F 1 "LED" H 1850 3950 50  0000 C CNN
F 2 "OzLockCon:LED_3528" H 1850 4050 50  0001 C CNN
F 3 "" H 1850 4050 50  0000 C CNN
	1    1850 4050
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR07
U 1 1 58F74E5C
P 1600 3650
F 0 "#PWR07" H 1600 3500 50  0001 C CNN
F 1 "VCC" H 1600 3800 50  0000 C CNN
F 2 "" H 1600 3650 50  0000 C CNN
F 3 "" H 1600 3650 50  0000 C CNN
	1    1600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3650 1850 3650
Wire Wire Line
	1400 3650 1400 3850
Wire Wire Line
	1850 3650 1850 3850
Connection ~ 1600 3650
Text GLabel 1400 4250 3    60   Input ~ 0
LED_LEFT
Text GLabel 1850 4250 3    60   Input ~ 0
LED_RIGHT
$Comp
L GND #PWR08
U 1 1 58F759F8
P 1950 2750
F 0 "#PWR08" H 1950 2500 50  0001 C CNN
F 1 "GND" H 1950 2600 50  0000 C CNN
F 2 "" H 1950 2750 50  0000 C CNN
F 3 "" H 1950 2750 50  0000 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
Text GLabel 2750 2600 2    60   Input ~ 0
SW1
$Comp
L SW_PUSH SW1
U 1 1 58F760B7
P 2300 2600
F 0 "SW1" H 2450 2710 50  0000 C CNN
F 1 "SW_PUSH" H 2300 2520 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 2300 2600 50  0001 C CNN
F 3 "" H 2300 2600 50  0000 C CNN
	1    2300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2600 2600 2600
Wire Wire Line
	2000 2600 1950 2600
Wire Wire Line
	1950 2600 1950 2750
$Comp
L VCC #PWR09
U 1 1 58F76BC8
P 1250 2200
F 0 "#PWR09" H 1250 2050 50  0001 C CNN
F 1 "VCC" H 1250 2350 50  0000 C CNN
F 2 "" H 1250 2200 50  0000 C CNN
F 3 "" H 1250 2200 50  0000 C CNN
	1    1250 2200
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58F76BF0
P 1250 2500
F 0 "C1" H 1275 2600 50  0000 L CNN
F 1 "0.1uF" H 1275 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1288 2350 50  0001 C CNN
F 3 "" H 1250 2500 50  0000 C CNN
	1    1250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2200 1250 2350
$Comp
L GND #PWR010
U 1 1 58F76C93
P 1250 2800
F 0 "#PWR010" H 1250 2550 50  0001 C CNN
F 1 "GND" H 1250 2650 50  0000 C CNN
F 2 "" H 1250 2800 50  0000 C CNN
F 3 "" H 1250 2800 50  0000 C CNN
	1    1250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2800 1250 2650
$Comp
L R R4
U 1 1 58F76F30
P 4300 5050
F 0 "R4" V 4380 5050 50  0000 C CNN
F 1 "10k" V 4300 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 5050 50  0001 C CNN
F 3 "" H 4300 5050 50  0000 C CNN
	1    4300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4900 4300 4900
$Comp
L VCC #PWR011
U 1 1 58F77023
P 4000 5100
F 0 "#PWR011" H 4000 4950 50  0001 C CNN
F 1 "VCC" H 4000 5250 50  0000 C CNN
F 2 "" H 4000 5100 50  0000 C CNN
F 3 "" H 4000 5100 50  0000 C CNN
	1    4000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5200 4300 5250
Wire Wire Line
	4300 5250 4000 5250
Wire Wire Line
	4000 5250 4000 5100
$Comp
L Battery BT1
U 1 1 58F77AB3
P 750 2500
F 0 "BT1" H 850 2550 50  0000 L CNN
F 1 "Battery" H 850 2450 50  0000 L CNN
F 2 "OzLockCon:CR2032_SMD" V 750 2540 50  0001 C CNN
F 3 "" V 750 2540 50  0000 C CNN
	1    750  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2200 750  2200
Wire Wire Line
	750  2200 750  2350
Wire Wire Line
	1250 2750 750  2750
Wire Wire Line
	750  2750 750  2650
Connection ~ 1250 2750
Wire Wire Line
	2400 6500 2400 6600
Connection ~ 2400 6500
$EndSCHEMATC
