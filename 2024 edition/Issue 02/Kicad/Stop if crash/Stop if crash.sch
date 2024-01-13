EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Stop if crash"
Date "2023-09-23"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2100 6100 0    50   ~ 0
Heartbit1
$Comp
L power:GND #PWR04
U 1 1 650F4171
P 2550 6250
F 0 "#PWR04" H 2550 6000 50  0001 C CNN
F 1 "GND" H 2555 6077 50  0000 C CNN
F 2 "" H 2550 6250 50  0001 C CNN
F 3 "" H 2550 6250 50  0001 C CNN
	1    2550 6250
	1    0    0    -1  
$EndComp
Text Label 1400 2600 2    50   ~ 0
Heartbit1
Wire Wire Line
	1400 2600 1600 2600
$Comp
L Device:R R5
U 1 1 650F5B69
P 1950 2600
F 0 "R5" V 1743 2600 50  0000 C CNN
F 1 "270" V 1834 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1880 2600 50  0001 C CNN
F 3 "~" H 1950 2600 50  0001 C CNN
	1    1950 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 650F637A
P 1600 3000
F 0 "R6" H 1670 3046 50  0000 L CNN
F 1 "330" H 1670 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 1530 3000 50  0001 C CNN
F 3 "~" H 1600 3000 50  0001 C CNN
	1    1600 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 650F6836
P 1600 3500
F 0 "D4" V 1639 3382 50  0000 R CNN
F 1 "LED" V 1548 3382 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 1600 3500 50  0001 C CNN
F 3 "~" H 1600 3500 50  0001 C CNN
	1    1600 3500
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:4N35 U2
U 1 1 650F7672
P 2650 2700
F 0 "U2" H 2650 3025 50  0000 C CNN
F 1 "4N35" H 2650 2934 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 2450 2500 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 2650 2700 50  0001 L CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 650F7FCF
P 1600 4000
F 0 "#PWR02" H 1600 3750 50  0001 C CNN
F 1 "GND" H 1605 3827 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2600 1600 2850
Connection ~ 1600 2600
Wire Wire Line
	1600 2600 1800 2600
Wire Wire Line
	1600 3150 1600 3350
Wire Wire Line
	1600 3650 1600 3950
Wire Wire Line
	2100 2600 2350 2600
Wire Wire Line
	2350 2800 2350 3950
Wire Wire Line
	2350 3950 1600 3950
Connection ~ 1600 3950
Wire Wire Line
	1600 3950 1600 4000
Wire Wire Line
	2950 2800 3000 2800
Wire Wire Line
	3000 2800 3000 3950
Wire Wire Line
	3000 3950 2350 3950
Connection ~ 2350 3950
NoConn ~ 2950 2600
Wire Wire Line
	2950 2700 3250 2700
$Comp
L power:+5V #PWR03
U 1 1 650F96F8
P 2550 5950
F 0 "#PWR03" H 2550 5800 50  0001 C CNN
F 1 "+5V" H 2565 6123 50  0000 C CNN
F 2 "" H 2550 5950 50  0001 C CNN
F 3 "" H 2550 5950 50  0001 C CNN
	1    2550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6000 2200 6000
Wire Wire Line
	2550 6200 2550 6250
Wire Wire Line
	2100 6200 2200 6200
$Comp
L Device:R R3
U 1 1 650FA909
P 3250 1950
F 0 "R3" H 3320 1996 50  0000 L CNN
F 1 "1K" H 3320 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3180 1950 50  0001 C CNN
F 3 "~" H 3250 1950 50  0001 C CNN
	1    3250 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1550 3250 1550
$Comp
L power:+5V #PWR01
U 1 1 650FB309
P 2850 1550
F 0 "#PWR01" H 2850 1400 50  0001 C CNN
F 1 "+5V" H 2865 1723 50  0000 C CNN
F 2 "" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1550 3250 1800
Connection ~ 3250 1550
Wire Wire Line
	3250 1550 5550 1550
Wire Wire Line
	3250 2100 3250 2700
Connection ~ 3250 2700
$Comp
L Device:C C1
U 1 1 650FB9F5
P 3600 2700
F 0 "C1" V 3348 2700 50  0000 C CNN
F 1 "100n" V 3439 2700 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3638 2550 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	0    1    1    0   
$EndComp
$Comp
L Device:D D3
U 1 1 650FC079
P 4000 3400
F 0 "D3" V 3954 3480 50  0000 L CNN
F 1 "D" V 4045 3480 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P2.54mm_Vertical_AnodeUp" H 4000 3400 50  0001 C CNN
F 3 "~" H 4000 3400 50  0001 C CNN
	1    4000 3400
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N2222A Q1
U 1 1 650FD1F9
P 4600 2700
F 0 "Q1" H 4788 2753 60  0000 L CNN
F 1 "2N2222A" H 4788 2647 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4800 2900 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 4800 3000 60  0001 L CNN
F 4 "2N2222ACS-ND" H 4800 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 4800 3200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4800 3300 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 4800 3400 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 4800 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 4800 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 4800 3700 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 4800 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4800 3900 60  0001 L CNN "Status"
	1    4600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2700 3450 2700
Wire Wire Line
	4000 3250 4000 2700
Wire Wire Line
	3750 2700 4000 2700
Connection ~ 4000 2700
Wire Wire Line
	4000 2700 4400 2700
Wire Wire Line
	4000 3550 4000 3950
Connection ~ 3000 3950
$Comp
L Timer:NE555D U1
U 1 1 650FECAF
P 7150 2350
F 0 "U1" H 7400 2800 50  0000 C CNN
F 1 "NE555D" H 7400 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8000 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 8000 1950 50  0001 C CNN
	1    7150 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 651009C0
P 5050 2150
F 0 "R4" V 4843 2150 50  0000 C CNN
F 1 "10" V 4934 2150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4980 2150 50  0001 C CNN
F 3 "~" H 5050 2150 50  0001 C CNN
	1    5050 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 65100C47
P 5550 1850
F 0 "R1" H 5620 1896 50  0000 L CNN
F 1 "47k" H 5620 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5480 1850 50  0001 C CNN
F 3 "~" H 5550 1850 50  0001 C CNN
	1    5550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2500 4700 2150
Wire Wire Line
	4700 2150 4900 2150
Wire Wire Line
	5550 2000 5550 2150
Connection ~ 5550 2150
Wire Wire Line
	5550 2150 6650 2150
Wire Wire Line
	5550 1700 5550 1550
Wire Wire Line
	4700 2900 4700 3950
$Comp
L Device:CP C2
U 1 1 65103ADA
P 5550 3450
F 0 "C2" H 5668 3496 50  0000 L CNN
F 1 "100/16v" H 5668 3405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 5588 3300 50  0001 C CNN
F 3 "~" H 5550 3450 50  0001 C CNN
	1    5550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 65104458
P 6250 3450
F 0 "C3" H 6365 3496 50  0000 L CNN
F 1 "100n" H 6365 3405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6288 3300 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2150 5550 2950
Wire Wire Line
	5550 3600 5550 3950
Wire Wire Line
	6250 3600 6250 3950
Wire Wire Line
	6650 2350 6250 2350
Wire Wire Line
	6250 2350 6250 3300
Wire Wire Line
	7650 2550 7800 2550
Wire Wire Line
	7800 2950 5550 2950
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 5550 3300
Wire Wire Line
	7150 2750 7150 3950
Wire Wire Line
	7150 1550 7150 1950
Wire Wire Line
	6650 2550 6500 2550
Wire Wire Line
	6500 2550 6500 1550
NoConn ~ 7650 2350
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N2222A Q2
U 1 1 65109E06
P 9550 3100
F 0 "Q2" H 9738 3153 60  0000 L CNN
F 1 "2N2222A" H 9738 3047 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 9750 3300 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 9750 3400 60  0001 L CNN
F 4 "2N2222ACS-ND" H 9750 3500 60  0001 L CNN "Digi-Key_PN"
F 5 "2N2222A" H 9750 3600 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9750 3700 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9750 3800 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N2221A.PDF" H 9750 3900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N2222A/2N2222ACS-ND/4806845" H 9750 4000 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.8A TO-18" H 9750 4100 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 9750 4200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9750 4300 60  0001 L CNN "Status"
	1    9550 3100
	1    0    0    -1  
$EndComp
Connection ~ 4000 3950
Wire Wire Line
	4000 3950 3000 3950
Connection ~ 4700 3950
Wire Wire Line
	4000 3950 4700 3950
Wire Wire Line
	4700 3950 5550 3950
Wire Wire Line
	5200 2150 5550 2150
Connection ~ 5550 1550
Connection ~ 5550 3950
Connection ~ 6250 3950
Connection ~ 6500 1550
Connection ~ 7150 1550
Connection ~ 7150 3950
Wire Wire Line
	5550 3950 6250 3950
Wire Wire Line
	6250 3950 7150 3950
Wire Wire Line
	5550 1550 6500 1550
Wire Wire Line
	6500 1550 7150 1550
$Comp
L Device:R R7
U 1 1 6511554C
P 8750 3100
F 0 "R7" V 8543 3100 50  0000 C CNN
F 1 "470" V 8634 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8680 3100 50  0001 C CNN
F 3 "~" H 8750 3100 50  0001 C CNN
	1    8750 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 2550 7800 2950
Wire Wire Line
	7650 2150 8100 2150
Wire Wire Line
	9650 3300 9650 3950
Wire Wire Line
	7150 3950 9650 3950
Wire Wire Line
	8100 3100 8600 3100
Wire Wire Line
	8100 2150 8100 3100
Wire Wire Line
	8900 3100 9350 3100
Wire Wire Line
	9650 1750 9650 1550
Wire Wire Line
	7150 1550 8800 1550
Wire Wire Line
	9650 2350 9650 2600
$Comp
L Device:D D1
U 1 1 65124482
P 9200 2050
F 0 "D1" V 9154 2130 50  0000 L CNN
F 1 "D" V 9245 2130 50  0000 L CNN
F 2 "Diode_THT:D_DO-15_P2.54mm_Vertical_AnodeUp" H 9200 2050 50  0001 C CNN
F 3 "~" H 9200 2050 50  0001 C CNN
	1    9200 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1900 9200 1550
Connection ~ 9200 1550
Wire Wire Line
	9200 1550 9650 1550
Wire Wire Line
	9650 2600 9200 2600
Wire Wire Line
	9200 2600 9200 2200
Connection ~ 9650 2600
Wire Wire Line
	9650 2600 9650 2900
$Comp
L Device:LED D2
U 1 1 65126D11
P 8800 2300
F 0 "D2" V 8839 2182 50  0000 R CNN
F 1 "LED" V 8748 2182 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8800 2300 50  0001 C CNN
F 3 "~" H 8800 2300 50  0001 C CNN
	1    8800 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 651278F5
P 8800 1850
F 0 "R2" H 8870 1896 50  0000 L CNN
F 1 "330" H 8870 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8730 1850 50  0001 C CNN
F 3 "~" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1550 8800 1700
Connection ~ 8800 1550
Wire Wire Line
	8800 1550 9200 1550
Wire Wire Line
	8800 2000 8800 2150
Wire Wire Line
	9200 2600 8800 2600
Wire Wire Line
	8800 2600 8800 2450
Connection ~ 9200 2600
Text Label 10050 2350 3    50   ~ 0
COM1
Text Label 10150 1750 1    50   ~ 0
NO1
Text Label 3450 6100 2    50   ~ 0
COM1
Text Label 3450 6000 2    50   ~ 0
NO1
Text Notes 2350 5350 0    50   ~ 10
CONNECTORS\n\n
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 651A9525
P 2200 5950
F 0 "#FLG0101" H 2200 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 6123 50  0000 C CNN
F 2 "" H 2200 5950 50  0001 C CNN
F 3 "~" H 2200 5950 50  0001 C CNN
	1    2200 5950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 651A9F00
P 2200 6250
F 0 "#FLG0102" H 2200 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 6423 50  0000 C CNN
F 2 "" H 2200 6250 50  0001 C CNN
F 3 "~" H 2200 6250 50  0001 C CNN
	1    2200 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 5950 2200 6000
Connection ~ 2200 6000
Wire Wire Line
	2200 6000 2550 6000
Wire Wire Line
	2200 6250 2200 6200
Wire Wire Line
	2200 6200 2550 6200
Connection ~ 2200 6200
Wire Wire Line
	2550 5950 2550 6000
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 652D30DF
P 1900 6100
F 0 "J1" H 2100 6050 50  0000 C CNN
F 1 "Conn_01x03" H 2250 6150 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 1900 6100 50  0001 C CNN
F 3 "~" H 1900 6100 50  0001 C CNN
	1    1900 6100
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 652D39E4
P 3650 6100
F 0 "J2" H 3730 6142 50  0000 L CNN
F 1 "Conn_01x03" H 3730 6051 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-5.0-H_1x03_P5.00mm_Horizontal" H 3650 6100 50  0001 C CNN
F 3 "~" H 3650 6100 50  0001 C CNN
	1    3650 6100
	1    0    0    -1  
$EndComp
Text Label 9950 1750 1    50   ~ 0
NC1
Text Label 3450 6200 2    50   ~ 0
NC1
$Comp
L Relay:SANYOU_SRD_Form_C K1
U 1 1 652B2C84
P 9850 2050
F 0 "K1" H 10280 2096 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 10280 2005 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 10300 2000 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 9850 2050 50  0001 C CNN
	1    9850 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 652EFFF7
P 5900 5800
F 0 "H1" H 6000 5846 50  0000 L CNN
F 1 "MountingHole" H 6000 5755 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5900 5800 50  0001 C CNN
F 3 "~" H 5900 5800 50  0001 C CNN
	1    5900 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 652F1887
P 5900 6100
F 0 "H2" H 6000 6146 50  0000 L CNN
F 1 "MountingHole" H 6000 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5900 6100 50  0001 C CNN
F 3 "~" H 5900 6100 50  0001 C CNN
	1    5900 6100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 652F2E64
P 5900 6400
F 0 "H3" H 6000 6446 50  0000 L CNN
F 1 "MountingHole" H 6000 6355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5900 6400 50  0001 C CNN
F 3 "~" H 5900 6400 50  0001 C CNN
	1    5900 6400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 652F4460
P 5900 6700
F 0 "H4" H 6000 6746 50  0000 L CNN
F 1 "MountingHole" H 6000 6655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 5900 6700 50  0001 C CNN
F 3 "~" H 5900 6700 50  0001 C CNN
	1    5900 6700
	1    0    0    -1  
$EndComp
Text Notes 5800 5400 0    50   ~ 10
MOUNTING HOLES\n\n
$EndSCHEMATC
