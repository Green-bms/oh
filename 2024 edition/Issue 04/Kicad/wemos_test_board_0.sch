EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Wemos Mini test board"
Date "2023-11-04"
Rev "0.00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:WeMos_D1_mini U1
U 1 1 65466297
P 2550 3500
F 0 "U1" H 1900 2850 50  0000 C CNN
F 1 "WeMos_D1_mini" H 1900 2700 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 2550 2350 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 700 2350 50  0001 C CNN
	1    2550 3500
	1    0    0    -1  
$EndComp
Text Label 2000 3100 0    50   ~ 0
1
Text Label 3100 3000 0    50   ~ 0
2
Text Label 3100 3100 0    50   ~ 0
3
Text Label 3100 3200 0    50   ~ 0
14
Text Label 3100 3300 0    50   ~ 0
13
Text Label 3100 3400 0    50   ~ 0
12
Text Label 3100 3500 0    50   ~ 0
11
Text Label 3100 3600 0    50   ~ 0
4
Text Label 3100 3700 0    50   ~ 0
5
Text Label 3100 3800 0    50   ~ 0
6
Text Label 3100 3900 0    50   ~ 0
7
Text Label 2000 3400 0    50   ~ 0
15
Text Label 2000 3500 0    50   ~ 0
16
Text Label 2550 4450 0    50   ~ 0
10
Text Label 2450 2550 0    50   ~ 0
9
Text Label 2650 2550 0    50   ~ 0
8
Wire Wire Line
	2150 3100 2000 3100
Wire Wire Line
	2150 3400 2000 3400
Wire Wire Line
	2150 3500 2000 3500
Wire Wire Line
	2450 2700 2450 2650
Wire Wire Line
	2650 2700 2650 2550
Wire Wire Line
	2950 3000 3100 3000
Wire Wire Line
	2950 3100 3100 3100
Wire Wire Line
	2950 3200 3100 3200
Wire Wire Line
	2950 3300 3100 3300
Wire Wire Line
	2950 3400 3100 3400
Wire Wire Line
	2950 3500 3100 3500
Wire Wire Line
	2950 3600 3100 3600
Wire Wire Line
	2950 3700 3100 3700
Wire Wire Line
	2950 3800 3100 3800
Wire Wire Line
	2950 3900 3100 3900
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 65469A6A
P 4600 3300
F 0 "J1" H 4518 3817 50  0000 C CNN
F 1 "Conn_01x08" H 4518 3726 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-8-5.0-H_1x08_P5.00mm_Horizontal" H 4600 3300 50  0001 C CNN
F 3 "~" H 4600 3300 50  0001 C CNN
	1    4600 3300
	-1   0    0    -1  
$EndComp
Text Label 4800 3000 0    50   ~ 0
1
Text Label 4800 3100 0    50   ~ 0
2
Text Label 4800 3200 0    50   ~ 0
3
Text Label 4800 3300 0    50   ~ 0
4
Text Label 4800 3400 0    50   ~ 0
5
Text Label 4800 3500 0    50   ~ 0
6
Text Label 4800 3600 0    50   ~ 0
7
Text Label 4800 3700 0    50   ~ 0
8
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 6546C64C
P 5600 3300
F 0 "J2" H 5518 3817 50  0000 C CNN
F 1 "Conn_01x08" H 5518 3726 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-8-5.0-H_1x08_P5.00mm_Horizontal" H 5600 3300 50  0001 C CNN
F 3 "~" H 5600 3300 50  0001 C CNN
	1    5600 3300
	-1   0    0    -1  
$EndComp
Text Label 5800 3000 0    50   ~ 0
9
Text Label 5800 3100 0    50   ~ 0
10
Text Label 5800 3200 0    50   ~ 0
11
Text Label 5800 3300 0    50   ~ 0
12
Text Label 5800 3400 0    50   ~ 0
13
Text Label 5800 3500 0    50   ~ 0
14
Text Label 5800 3600 0    50   ~ 0
15
Text Label 5800 3700 0    50   ~ 0
16
Text Notes 2250 2250 0    50   ~ 0
WEMOS D1 MINI
Text Notes 4900 2250 0    50   ~ 0
CONNECTORS
Text Notes 7750 2250 0    50   ~ 0
HOLES
$Comp
L Mechanical:MountingHole H1
U 1 1 6546CF0E
P 7850 2850
F 0 "H1" H 7950 2896 50  0000 L CNN
F 1 "MountingHole" H 7950 2805 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7850 2850 50  0001 C CNN
F 3 "~" H 7850 2850 50  0001 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6546D539
P 7850 3200
F 0 "H2" H 7950 3246 50  0000 L CNN
F 1 "MountingHole" H 7950 3155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7850 3200 50  0001 C CNN
F 3 "~" H 7850 3200 50  0001 C CNN
	1    7850 3200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6546DEC5
P 7850 3600
F 0 "H3" H 7950 3646 50  0000 L CNN
F 1 "MountingHole" H 7950 3555 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7850 3600 50  0001 C CNN
F 3 "~" H 7850 3600 50  0001 C CNN
	1    7850 3600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6546DECB
P 7850 3950
F 0 "H4" H 7950 3996 50  0000 L CNN
F 1 "MountingHole" H 7950 3905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7850 3950 50  0001 C CNN
F 3 "~" H 7850 3950 50  0001 C CNN
	1    7850 3950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6546E205
P 1800 2500
F 0 "#FLG0101" H 1800 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 2673 50  0000 C CNN
F 2 "" H 1800 2500 50  0001 C CNN
F 3 "~" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6546EA6E
P 2950 4650
F 0 "#FLG0102" H 2950 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 4823 50  0000 C CNN
F 2 "" H 2950 4650 50  0001 C CNN
F 3 "~" H 2950 4650 50  0001 C CNN
	1    2950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2500 1800 2650
Wire Wire Line
	1800 2650 2450 2650
Connection ~ 2450 2650
Wire Wire Line
	2450 2650 2450 2550
Wire Wire Line
	2950 4650 2550 4650
Wire Wire Line
	2550 4300 2550 4650
$EndSCHEMATC
