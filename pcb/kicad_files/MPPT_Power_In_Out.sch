EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Device:Varistor RV?
U 1 1 609C5D1E
P 5600 2150
AR Path="/5DC6BF5C/609C5D1E" Ref="RV?"  Part="1" 
AR Path="/5DBB8B2F/609C5D1E" Ref="RV?"  Part="1" 
AR Path="/5F50F017/609C5D1E" Ref="RV?"  Part="1" 
AR Path="/5F50E86A/609C5D1E" Ref="RV?"  Part="1" 
AR Path="/609C5D1E" Ref="RV?"  Part="1" 
AR Path="/609B8FCB/609C5D1E" Ref="RV1"  Part="1" 
F 0 "RV1" H 5703 2196 50  0000 L CNN
F 1 "V60MLA1210N" H 5703 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric" V 5530 2150 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/littelfuse-inc/V60MLA1210NH/F3830CT-ND/2627750" H 5600 2150 50  0001 C CNN
F 4 "F3830CT-ND" H 5600 2150 50  0001 C CNN "Digikey Part No"
F 5 "V60MLA1210NH" H 5600 2150 50  0001 C CNN "Manufacturer Part Number"
	1    5600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 609C5D2F
P 6700 1950
AR Path="/5DC6BF5C/609C5D2F" Ref="D?"  Part="1" 
AR Path="/5DBB8B2F/609C5D2F" Ref="D?"  Part="1" 
AR Path="/5F50F017/609C5D2F" Ref="D?"  Part="1" 
AR Path="/5F50E86A/609C5D2F" Ref="D?"  Part="1" 
AR Path="/609C5D2F" Ref="D?"  Part="1" 
AR Path="/609B8FCB/609C5D2F" Ref="D2"  Part="1" 
F 0 "D2" V 6654 2029 50  0000 L CNN
F 1 "MMBZ5245BLT1G" V 6745 2029 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 6700 1950 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/on-semiconductor/MMBZ5245BLT1G/MMBZ5245BLT1GOSCT-ND/1139860" H 6700 1950 50  0001 C CNN
F 4 "MMBZ5245BLT1G" H 6700 1950 50  0001 C CNN "Manufacturer Part Number"
F 5 "" H 6700 1950 50  0001 C CNN "Mouser Part Number"
F 6 "MMBZ5245BLT1GOSCT-ND" H 6700 1950 50  0001 C CNN "Digikey Part No"
	1    6700 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 2000 6350 2150
Wire Wire Line
	6350 2150 6700 2150
Wire Wire Line
	6700 2150 6700 2100
Connection ~ 6350 2150
Wire Wire Line
	6550 1700 6700 1700
Wire Wire Line
	6700 1700 6700 1800
Wire Wire Line
	5600 2000 5600 1700
Wire Wire Line
	5600 2300 5600 2600
Wire Wire Line
	4850 2000 4850 1700
Wire Wire Line
	4850 2300 4850 2600
$Comp
L Device:D_Zener D?
U 1 1 609C5D42
P 4850 2150
AR Path="/5DC6BF5C/609C5D42" Ref="D?"  Part="1" 
AR Path="/5DBB8B2F/609C5D42" Ref="D?"  Part="1" 
AR Path="/5F50F017/609C5D42" Ref="D?"  Part="1" 
AR Path="/5F50E86A/609C5D42" Ref="D?"  Part="1" 
AR Path="/609C5D42" Ref="D?"  Part="1" 
AR Path="/609B8FCB/609C5D42" Ref="D1"  Part="1" 
F 0 "D1" V 4804 2230 50  0000 L CNN
F 1 "SMBJ58A" V 4895 2230 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 4850 2150 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/littelfuse-inc/SMBJ58A/SMBJ58ALFCT-ND/762804" H 4850 2150 50  0001 C CNN
F 4 "SMBJ58A" H 4850 2150 50  0001 C CNN "Manufacturer Part Number"
F 5 "" H 4850 2150 50  0001 C CNN "Mouser Part Number"
F 6 "SMBJ58ALFCT-ND" H 4850 2150 50  0001 C CNN "Digikey Part No"
	1    4850 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2600 5600 2600
Wire Wire Line
	4850 1700 5600 1700
Connection ~ 4850 1700
Connection ~ 5600 1700
$Comp
L MPPT_Solar_lib:3588TR F?
U 1 1 609C5D50
P 4050 1750
AR Path="/609C5D50" Ref="F?"  Part="1" 
AR Path="/609B8FCB/609C5D50" Ref="F1"  Part="1" 
F 0 "F1" H 4050 2087 60  0000 C CNN
F 1 "3588TR" H 4050 1981 60  0000 C CNN
F 2 "MPPT_Solar_KiCAD:3588TR" H 4700 1500 60  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/keystone-electronics/3588TR/36-3588CT-ND/4772085" H 4050 1981 60  0001 C CNN
F 4 "Fuse: 0297010.WXNV https://www.digikey.de/product-detail/en/littelfuse-inc/0297010-WXNV/F991-ND/146591" H 6300 1400 50  0001 C CNN "Note"
F 5 "" H 4250 1300 50  0001 C CNN "MPN"
F 6 "36-3588CT-ND" H 4050 1750 50  0001 C CNN "Digikey Part No"
F 7 "3588TR" H 4050 1750 50  0001 C CNN "Manufacturer Part Number"
	1    4050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1700 4700 1700
Wire Wire Line
	4700 1700 4700 1800
Wire Wire Line
	4700 1800 4600 1800
Connection ~ 4700 1700
Wire Wire Line
	4700 1700 4850 1700
$Comp
L MPPT_Solar_lib:2350513-4 J?
U 1 1 609C5D65
P 2150 1750
AR Path="/609C5D65" Ref="J?"  Part="1" 
AR Path="/609B8FCB/609C5D65" Ref="J1"  Part="1" 
F 0 "J1" H 2442 2015 50  0000 C CNN
F 1 "2350513-4" H 2442 1924 50  0000 C CNN
F 2 "SHDRRA4W110P0X500_1X4_2160X830X1230P" H 2800 1850 50  0001 L CNN
F 3 "https://www.digikey.de/product-detail/en/te-connectivity-amp-connectors/2350513-4/A145374-ND/10415924" H 2800 1750 50  0001 L CNN
F 4 "Pluggable Terminal Blocks 4pos Header 90 Deg 5.0mmTail Lgth 4.5mm" H 2800 1650 50  0001 L CNN "Description"
F 5 "" H 2800 1550 50  0001 L CNN "Height"
F 6 "" H 2800 1450 50  0001 L CNN "Manufacturer_Name"
F 7 "" H 2800 1350 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 2800 1250 50  0001 L CNN "Arrow Part Number"
F 9 "" H 2800 1050 50  0001 L CNN "Mouser Part Number"
F 10 "" H 2800 950 50  0001 L CNN "Mouser Price/Stock"
F 11 "2350513-4" H 3050 1750 50  0001 C CNN "Manufacturer Part Number"
F 12 "A145374-ND" H 2150 1750 50  0001 C CNN "Digikey Part No"
F 13 "Counterpart: A145365-ND (2350397-4)" H 2150 1750 50  0001 C CNN "Note"
	1    2150 1750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609C5D6B
P 2650 2150
AR Path="/609C5D6B" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5D6B" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 2650 1900 50  0001 C CNN
F 1 "GND" H 2655 1977 50  0000 C CNN
F 2 "" H 2650 2150 50  0001 C CNN
F 3 "" H 2650 2150 50  0001 C CNN
	1    2650 2150
	1    0    0    -1  
$EndComp
Text Notes 1350 1200 0    50   ~ 0
Steckverbinder für Panel-In (VCCQ)\nund Anschluss an den Akku (BATT):
Wire Notes Line
	1250 950  2900 950 
Wire Notes Line
	2900 950  2900 2450
Wire Notes Line
	2900 2450 1250 2450
Wire Notes Line
	1250 2450 1250 950 
$Comp
L power:GND #PWR?
U 1 1 609C5D7E
P 4850 2750
AR Path="/609C5D7E" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5D7E" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 4850 2500 50  0001 C CNN
F 1 "GND" H 4855 2577 50  0000 C CNN
F 2 "" H 4850 2750 50  0001 C CNN
F 3 "" H 4850 2750 50  0001 C CNN
	1    4850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2750 4850 2600
Connection ~ 4850 2600
$Comp
L power:VCC #PWR?
U 1 1 609C5D86
P 7250 1550
AR Path="/609C5D86" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5D86" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 7250 1400 50  0001 C CNN
F 1 "VCC" H 7265 1723 50  0000 C CNN
F 2 "" H 7250 1550 50  0001 C CNN
F 3 "" H 7250 1550 50  0001 C CNN
	1    7250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1700 6150 1700
$Comp
L power:GND #PWR?
U 1 1 609C5D92
P 6350 2750
AR Path="/609C5D92" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5D92" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 6350 2500 50  0001 C CNN
F 1 "GND" H 6355 2577 50  0000 C CNN
F 2 "" H 6350 2750 50  0001 C CNN
F 3 "" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
Text Notes 3150 1100 0    50   ~ 0
Eingangsschutzbeschaltung:
Wire Notes Line
	3050 950  3050 3100
Wire Notes Line
	3050 3100 7900 3100
Wire Notes Line
	7900 3100 7900 950 
Wire Notes Line
	7900 950  3050 950 
Connection ~ 6700 1700
Wire Wire Line
	7250 1700 7250 1550
Wire Wire Line
	6700 1700 7250 1700
$Comp
L Device:R_Small R?
U 1 1 609C5DAF
P 6350 2400
AR Path="/5F50F017/609C5DAF" Ref="R?"  Part="1" 
AR Path="/609C5DAF" Ref="R?"  Part="1" 
AR Path="/609B8FCB/609C5DAF" Ref="R1"  Part="1" 
F 0 "R1" H 6291 2354 50  0000 R CNN
F 1 "10k" H 6291 2445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6350 2400 50  0001 C CNN
F 3 "https://www.mouser.de/ProductDetail/Yageo/RC0603FR-0710KL?qs=sGAEpiMZZMvdGkrng054t%252BZQNaZdkHZDFRS%252Bk3sHilE%3D" H 6350 2400 50  0001 C CNN
F 4 "RC0603FR-0710KL" H 6350 2400 50  0001 C CNN "Manufacturer Part Number"
F 5 "" H 6350 2400 50  0001 C CNN "Mouser Part Number"
F 6 "311-10.0KHRCT-ND" H 6350 2400 50  0001 C CNN "Digikey Part No"
	1    6350 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 2150 6350 2300
Wire Wire Line
	6350 2500 6350 2750
Wire Wire Line
	2150 1850 2650 1850
Wire Wire Line
	2650 1850 2650 1950
Wire Wire Line
	2150 1950 2650 1950
Connection ~ 2650 1950
Wire Wire Line
	2650 1950 2650 2150
Wire Wire Line
	3300 1800 3300 1700
Wire Wire Line
	3500 1800 3300 1800
Wire Wire Line
	3300 1700 3500 1700
$Comp
L power:VCCQ #PWR?
U 1 1 609C5D9E
P 3300 1550
AR Path="/609C5D9E" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5D9E" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 3300 1400 50  0001 C CNN
F 1 "VCCQ" H 3315 1723 50  0000 C CNN
F 2 "" H 3300 1550 50  0001 C CNN
F 3 "" H 3300 1550 50  0001 C CNN
	1    3300 1550
	1    0    0    -1  
$EndComp
Connection ~ 3300 1700
Wire Wire Line
	3300 1550 3300 1700
Wire Wire Line
	2250 1750 2150 1750
Wire Wire Line
	2250 1550 2250 1750
Wire Wire Line
	2150 2050 2500 2050
NoConn ~ 2500 1850
NoConn ~ 2500 1950
Wire Wire Line
	2500 2050 2500 1550
$Comp
L power:VCCQ #PWR?
U 1 1 609C5DA4
P 2250 1550
AR Path="/609C5DA4" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5DA4" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2250 1400 50  0001 C CNN
F 1 "VCCQ" H 2265 1723 50  0000 C CNN
F 2 "" H 2250 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0001 C CNN
	1    2250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 609C5D71
P 2500 1550
AR Path="/609C5D71" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609C5D71" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2500 1400 50  0001 C CNN
F 1 "+BATT" H 2515 1723 50  0000 C CNN
F 2 "" H 2500 1550 50  0001 C CNN
F 3 "" H 2500 1550 50  0001 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4700 7550 4700
Connection ~ 7650 4700
Wire Wire Line
	7650 4800 7650 4700
Wire Wire Line
	7550 4800 7650 4800
Wire Wire Line
	7750 4700 7650 4700
Wire Wire Line
	7750 4600 7750 4700
Connection ~ 6350 4700
Wire Wire Line
	6350 4700 6200 4700
Wire Wire Line
	6350 4800 6450 4800
Wire Wire Line
	6350 4700 6350 4800
Wire Wire Line
	6450 4700 6350 4700
Text HLabel 3000 4700 0    50   Input ~ 0
BOOST_VOUT
Connection ~ 6200 4700
$Comp
L Device:D_Zener D?
U 1 1 609E2391
P 5850 5250
AR Path="/5DC6BF5C/609E2391" Ref="D?"  Part="1" 
AR Path="/5DBB8B2F/609E2391" Ref="D?"  Part="1" 
AR Path="/5F50F017/609E2391" Ref="D?"  Part="1" 
AR Path="/5F50E86A/609E2391" Ref="D?"  Part="1" 
AR Path="/609E2391" Ref="D?"  Part="1" 
AR Path="/609B8FCB/609E2391" Ref="D8"  Part="1" 
F 0 "D8" V 5804 5330 50  0000 L CNN
F 1 "SMBJ58A" H 5700 5150 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 5850 5250 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/littelfuse-inc/SMBJ58A/SMBJ58ALFCT-ND/762804" H 5850 5250 50  0001 C CNN
F 4 "SMBJ58A" H 5850 5250 50  0001 C CNN "Manufacturer Part Number"
F 5 "" H 5850 5250 50  0001 C CNN "Mouser Part Number"
F 6 "SMBJ58ALFCT-ND" H 5850 5250 50  0001 C CNN "Digikey Part No"
	1    5850 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5100 6200 4700
Wire Wire Line
	5850 4700 6200 4700
Wire Wire Line
	5850 5100 5850 4700
Connection ~ 5850 5700
Wire Wire Line
	5850 5850 5850 5700
$Comp
L power:GND #PWR?
U 1 1 609E2382
P 5850 5850
AR Path="/609E2382" Ref="#PWR?"  Part="1" 
AR Path="/5F50F017/609E2382" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609E2382" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 5850 5600 50  0001 C CNN
F 1 "GND" H 5855 5677 50  0000 C CNN
F 2 "" H 5850 5850 50  0001 C CNN
F 3 "" H 5850 5850 50  0001 C CNN
	1    5850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5700 6200 5700
Wire Wire Line
	5850 5400 5850 5700
Wire Wire Line
	6200 5400 6200 5700
$Comp
L Device:Varistor RV?
U 1 1 609E2379
P 6200 5250
AR Path="/5DC6BF5C/609E2379" Ref="RV?"  Part="1" 
AR Path="/5DBB8B2F/609E2379" Ref="RV?"  Part="1" 
AR Path="/5F50F017/609E2379" Ref="RV?"  Part="1" 
AR Path="/5F50E86A/609E2379" Ref="RV?"  Part="1" 
AR Path="/609E2379" Ref="RV?"  Part="1" 
AR Path="/609B8FCB/609E2379" Ref="RV2"  Part="1" 
F 0 "RV2" H 6303 5296 50  0000 L CNN
F 1 "V60MLA1210N " H 6303 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric" V 6130 5250 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/littelfuse-inc/V60MLA1210NH/F3830CT-ND/2627750" H 6200 5250 50  0001 C CNN
F 4 "F3830CT-ND" H 6200 5250 50  0001 C CNN "Digikey Part No"
F 5 "V60MLA1210NH" H 6200 5250 50  0001 C CNN "Manufacturer Part Number"
	1    6200 5250
	1    0    0    -1  
$EndComp
$Comp
L MPPT_Solar_lib:3588TR F?
U 1 1 609E2371
P 7000 4750
AR Path="/609E2371" Ref="F?"  Part="1" 
AR Path="/5F50F017/609E2371" Ref="F?"  Part="1" 
AR Path="/609B8FCB/609E2371" Ref="F2"  Part="1" 
F 0 "F2" H 7000 5087 60  0000 C CNN
F 1 "3588TR" H 7000 4981 60  0000 C CNN
F 2 "MPPT_Solar_KiCAD:3588TR" H 7650 4500 60  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/keystone-electronics/3588TR/36-3588CT-ND/4772085" H 7000 4981 60  0001 C CNN
F 4 "Fuse: 0297010.WXNV https://www.digikey.de/product-detail/en/littelfuse-inc/0297010-WXNV/F991-ND/146591" H 9250 4400 50  0001 C CNN "Note"
F 5 "" H 7200 4300 50  0001 C CNN "MPN"
F 6 "36-3588CT-ND" H 7000 4750 50  0001 C CNN "Digikey Part No"
F 7 "3588TR" H 7000 4750 50  0001 C CNN "Manufacturer Part Number"
	1    7000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 609E2367
P 7750 4600
AR Path="/609E2367" Ref="#PWR?"  Part="1" 
AR Path="/5F50F017/609E2367" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/609E2367" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 7750 4450 50  0001 C CNN
F 1 "+BATT" H 7765 4773 50  0000 C CNN
F 2 "" H 7750 4600 50  0001 C CNN
F 3 "" H 7750 4600 50  0001 C CNN
	1    7750 4600
	1    0    0    -1  
$EndComp
Connection ~ 5850 4700
$Comp
L Device:R_Small R?
U 1 1 60859E6D
P 3850 5450
AR Path="/5F50F017/60859E6D" Ref="R?"  Part="1" 
AR Path="/60859E6D" Ref="R?"  Part="1" 
AR Path="/609B8FCB/60859E6D" Ref="R2"  Part="1" 
F 0 "R2" H 3791 5404 50  0000 R CNN
F 1 "10k" H 3791 5495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3850 5450 50  0001 C CNN
F 3 "https://www.mouser.de/ProductDetail/Yageo/RC0603FR-0710KL?qs=sGAEpiMZZMvdGkrng054t%252BZQNaZdkHZDFRS%252Bk3sHilE%3D" H 3850 5450 50  0001 C CNN
F 4 "RC0603FR-0710KL" H 3850 5450 50  0001 C CNN "Manufacturer Part Number"
F 5 "" H 3850 5450 50  0001 C CNN "Mouser Part Number"
F 6 "311-10.0KHRCT-ND" H 3850 5450 50  0001 C CNN "Digikey Part No"
	1    3850 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 61773D33
P 3850 5050
AR Path="/5DC6BF5C/61773D33" Ref="D?"  Part="1" 
AR Path="/5DBB8B2F/61773D33" Ref="D?"  Part="1" 
AR Path="/5F50F017/61773D33" Ref="D?"  Part="1" 
AR Path="/5F50E86A/61773D33" Ref="D?"  Part="1" 
AR Path="/61773D33" Ref="D?"  Part="1" 
AR Path="/609B8FCB/61773D33" Ref="D14"  Part="1" 
F 0 "D14" V 3804 5129 50  0000 L CNN
F 1 "MMBZ5245BLT1G" V 3895 5129 50  0000 L CNN
F 2 "Diode_SMD:D_SOT-23_ANK" H 3850 5050 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/on-semiconductor/MMBZ5245BLT1G/MMBZ5245BLT1GOSCT-ND/1139860" H 3850 5050 50  0001 C CNN
F 4 "MMBZ5245BLT1G" H 3850 5050 50  0001 C CNN "Manufacturer Part Number"
F 5 "" H 3850 5050 50  0001 C CNN "Mouser Part Number"
F 6 "MMBZ5245BLT1GOSCT-ND" H 3850 5050 50  0001 C CNN "Digikey Part No"
	1    3850 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 5050 3550 5300
Wire Wire Line
	3850 5700 3850 5550
$Comp
L power:GND #PWR?
U 1 1 6178262F
P 3850 5700
AR Path="/6178262F" Ref="#PWR?"  Part="1" 
AR Path="/5F50F017/6178262F" Ref="#PWR?"  Part="1" 
AR Path="/609B8FCB/6178262F" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3850 5450 50  0001 C CNN
F 1 "GND" H 3855 5527 50  0000 C CNN
F 2 "" H 3850 5700 50  0001 C CNN
F 3 "" H 3850 5700 50  0001 C CNN
	1    3850 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_DUAL_PMOS_S1G1S2G2D2D2D1D1 Q1
U 2 1 61889567
P 4150 4850
F 0 "Q1" H 4438 4896 50  0000 L CNN
F 1 "DMP6050" H 4438 4805 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 4200 4850 50  0001 C CNN
F 3 "~" H 4200 4850 50  0001 C CNN
	2    4150 4850
	0    1    -1   0   
$EndComp
$Comp
L Device:Q_DUAL_PMOS_S1G1S2G2D2D2D1D1 Q1
U 1 1 618878EF
P 3550 4850
F 0 "Q1" H 3838 4896 50  0000 L CNN
F 1 "DMP6050" H 3838 4805 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3600 4850 50  0001 C CNN
F 3 "~" H 3600 4850 50  0001 C CNN
	1    3550 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3950 4750 3850 4750
Wire Wire Line
	4350 4650 4400 4650
Wire Wire Line
	4400 4650 4400 4700
Wire Wire Line
	4400 4750 4350 4750
Connection ~ 4400 4700
Wire Wire Line
	4400 4700 4400 4750
Wire Wire Line
	3350 4650 3300 4650
Wire Wire Line
	3300 4650 3300 4700
Wire Wire Line
	3300 4750 3350 4750
Wire Wire Line
	3000 4700 3300 4700
Connection ~ 3300 4700
Wire Wire Line
	3300 4700 3300 4750
Wire Wire Line
	4400 4700 5850 4700
Wire Wire Line
	4150 5050 4150 5300
Connection ~ 3850 4750
Wire Wire Line
	3850 4750 3750 4750
Wire Wire Line
	3550 5300 3850 5300
Wire Wire Line
	3850 5200 3850 5300
Connection ~ 3850 5300
Wire Wire Line
	3850 5300 4150 5300
Wire Wire Line
	3850 5350 3850 5300
Wire Wire Line
	3850 4750 3850 4900
$Comp
L MPPT_Solar_lib:DMP4015SSS Q3
U 1 1 618D3B7C
P 6350 1700
F 0 "Q3" V 6592 1700 50  0000 C CNN
F 1 "DMP4015SSS" V 6501 1700 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 6350 1400 50  0001 C CNN
F 3 "https://www.digikey.de/product-detail/en/diodes-incorporated/DMP4015SSS-13/DMP4015SSS-13DICT-ND/5218252" H 6350 2450 50  0001 C CNN
F 4 "DMP4015SSS-13" H 6350 1200 50  0001 C CNN "Manufacturer Part No"
F 5 "DMP4015SSS-13DICT-ND" H 6350 1300 50  0001 C CNN "Digi-Key Part No"
	1    6350 1700
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
