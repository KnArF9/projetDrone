EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title "Alimentation"
Date "2020-09-01"
Rev "2"
Comp "Cégep de Sherbrooke"
Comment1 "Par: François Archambault"
Comment2 "Pour: Pierre Bergeron"
Comment3 "Session Automne 2020"
Comment4 ""
$EndDescr
$Comp
L electronique_drone-rescue:LM3478-Librairie_Kicad_drone U201
U 1 1 5E84ACEF
P 5650 3100
F 0 "U201" H 5800 3165 50  0000 C CNN
F 1 "LM3478" H 5800 3074 50  0000 C CNN
F 2 "Package_SO:SSOP-8_2.95x2.8mm_P0.65mm" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT201
U 1 1 5E84B9AA
P 1450 3800
F 0 "BT201" H 1558 3846 50  0000 L CNN
F 1 "Li-Po" H 1558 3755 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 1450 3860 50  0001 C CNN
F 3 "~" V 1450 3860 50  0001 C CNN
	1    1450 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C202
U 1 1 5E84BB1B
P 3700 3600
F 0 "C202" H 3815 3646 50  0000 L CNN
F 1 "100nF" H 3815 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3738 3450 50  0001 C CNN
F 3 "~" H 3700 3600 50  0001 C CNN
	1    3700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 5E84BDC0
P 5800 4100
F 0 "#PWR0208" H 5800 3850 50  0001 C CNN
F 1 "GND" H 5805 3927 50  0000 C CNN
F 2 "" H 5800 4100 50  0001 C CNN
F 3 "" H 5800 4100 50  0001 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3800 5400 4100
Wire Wire Line
	5400 4100 5800 4100
Wire Wire Line
	6200 3800 6200 4100
Wire Wire Line
	6200 4100 5800 4100
Connection ~ 5800 4100
$Comp
L power:GND #PWR0201
U 1 1 5E84BF4C
P 1450 4000
F 0 "#PWR0201" H 1450 3750 50  0001 C CNN
F 1 "GND" H 1455 3827 50  0000 C CNN
F 2 "" H 1450 4000 50  0001 C CNN
F 3 "" H 1450 4000 50  0001 C CNN
	1    1450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0202
U 1 1 5E84BF76
P 3300 3800
F 0 "#PWR0202" H 3300 3550 50  0001 C CNN
F 1 "GND" H 3305 3627 50  0000 C CNN
F 2 "" H 3300 3800 50  0001 C CNN
F 3 "" H 3300 3800 50  0001 C CNN
	1    3300 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0203
U 1 1 5E84BF90
P 3700 3850
F 0 "#PWR0203" H 3700 3600 50  0001 C CNN
F 1 "GND" H 3705 3677 50  0000 C CNN
F 2 "" H 3700 3850 50  0001 C CNN
F 3 "" H 3700 3850 50  0001 C CNN
	1    3700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3400 3300 3400
Wire Wire Line
	3300 3400 3300 3450
Wire Wire Line
	3300 3400 3700 3400
Wire Wire Line
	3700 3400 3700 3450
Connection ~ 3300 3400
Wire Wire Line
	3700 3400 4200 3400
Wire Wire Line
	4200 3400 4200 2900
Wire Wire Line
	4200 2900 6300 2900
Wire Wire Line
	6300 2900 6300 3350
Connection ~ 3700 3400
Wire Wire Line
	6300 2900 6450 2900
Connection ~ 6300 2900
Wire Wire Line
	6950 2900 6950 3150
$Comp
L Device:D_Schottky D201
U 1 1 5E84CA0B
P 7400 3150
F 0 "D201" H 7400 2934 50  0000 C CNN
F 1 "B540C-13-F" H 7400 3025 50  0000 C CNN
F 2 "Diode_SMD:D_SMB-SMC_Universal_Handsoldering" H 7400 3150 50  0001 C CNN
F 3 "~" H 7400 3150 50  0001 C CNN
	1    7400 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 3150 6950 3150
$Comp
L power:GND #PWR0209
U 1 1 5E84CD12
P 6700 3400
F 0 "#PWR0209" H 6700 3150 50  0001 C CNN
F 1 "GND" H 6705 3227 50  0000 C CNN
F 2 "" H 6700 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R204
U 1 1 5E84D018
P 6400 3500
F 0 "R204" V 6193 3500 50  0000 C CNN
F 1 "26.7K" V 6284 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6330 3500 50  0001 C CNN
F 3 "~" H 6400 3500 50  0001 C CNN
	1    6400 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3500 6200 3500
Wire Wire Line
	6550 3500 6600 3500
Wire Wire Line
	6600 3500 6600 3300
Wire Wire Line
	6600 3300 6700 3300
Wire Wire Line
	6700 3300 6700 3400
Wire Wire Line
	6700 4450 6950 4450
Wire Wire Line
	6950 4450 6950 4500
$Comp
L power:GND #PWR0210
U 1 1 5E84E8DB
P 6950 4900
F 0 "#PWR0210" H 6950 4650 50  0001 C CNN
F 1 "GND" H 6955 4727 50  0000 C CNN
F 2 "" H 6950 4900 50  0001 C CNN
F 3 "" H 6950 4900 50  0001 C CNN
	1    6950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4800 6950 4900
$Comp
L Device:C C204
U 1 1 5E84F49F
P 4600 3500
F 0 "C204" H 4715 3546 50  0000 L CNN
F 1 "10pF" H 4715 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4638 3350 50  0001 C CNN
F 3 "~" H 4600 3500 50  0001 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
Connection ~ 4600 3350
Wire Wire Line
	4600 3350 4500 3350
$Comp
L power:GND #PWR0205
U 1 1 5E84F4DF
P 4600 3650
F 0 "#PWR0205" H 4600 3400 50  0001 C CNN
F 1 "GND" H 4605 3477 50  0000 C CNN
F 2 "" H 4600 3650 50  0001 C CNN
F 3 "" H 4600 3650 50  0001 C CNN
	1    4600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C206
U 1 1 5E84FC9C
P 7750 3300
F 0 "C206" H 7865 3346 50  0000 L CNN
F 1 "100uF" H 7800 3200 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x3" H 7750 3300 50  0001 C CNN
F 3 "~" H 7750 3300 50  0001 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0211
U 1 1 5E84FD4E
P 7750 3500
F 0 "#PWR0211" H 7750 3250 50  0001 C CNN
F 1 "GND" H 7755 3327 50  0000 C CNN
F 2 "" H 7750 3500 50  0001 C CNN
F 3 "" H 7750 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3150 7750 3150
Wire Wire Line
	7750 3450 7750 3500
Wire Wire Line
	7750 3150 8150 3150
Connection ~ 7750 3150
Wire Wire Line
	4600 3350 5400 3350
$Comp
L power:GND #PWR0204
U 1 1 5E8513C0
P 4450 4400
F 0 "#PWR0204" H 4450 4150 50  0001 C CNN
F 1 "GND" H 4455 4227 50  0000 C CNN
F 2 "" H 4450 4400 50  0001 C CNN
F 3 "" H 4450 4400 50  0001 C CNN
	1    4450 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 5E85146B
P 5000 4650
F 0 "#PWR0206" H 5000 4400 50  0001 C CNN
F 1 "GND" H 5005 4477 50  0000 C CNN
F 2 "" H 5000 4650 50  0001 C CNN
F 3 "" H 5000 4650 50  0001 C CNN
	1    5000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4150 5000 4250
Wire Wire Line
	5000 4550 5000 4650
Wire Wire Line
	5400 3500 5000 3500
Wire Wire Line
	5000 3500 5000 3750
Wire Wire Line
	5000 3750 4750 3750
Wire Wire Line
	4750 3750 4750 4000
Wire Wire Line
	4750 4000 4450 4000
Wire Wire Line
	4450 4000 4450 4100
Connection ~ 5000 3750
Wire Wire Line
	5000 3750 5000 3850
$Comp
L Device:R R203
U 1 1 5E853032
P 5550 5250
F 0 "R203" H 5620 5296 50  0000 L CNN
F 1 "4.53K" H 5620 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5480 5250 50  0001 C CNN
F 3 "~" H 5550 5250 50  0001 C CNN
	1    5550 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R202
U 1 1 5E85308E
P 5350 5700
F 0 "R202" H 5420 5746 50  0000 L CNN
F 1 "1000" H 5420 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 5700 50  0001 C CNN
F 3 "~" H 5350 5700 50  0001 C CNN
	1    5350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3650 5350 3650
Wire Wire Line
	5350 3650 5350 4700
$Comp
L power:GND #PWR0207
U 1 1 5E8541E8
P 5350 5950
F 0 "#PWR0207" H 5350 5700 50  0001 C CNN
F 1 "GND" H 5355 5777 50  0000 C CNN
F 2 "" H 5350 5950 50  0001 C CNN
F 3 "" H 5350 5950 50  0001 C CNN
	1    5350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5850 5350 5950
Connection ~ 8150 3150
Wire Wire Line
	8150 3150 8300 3150
$Comp
L power:GND #PWR0213
U 1 1 5E85735D
P 9600 1900
F 0 "#PWR0213" H 9600 1650 50  0001 C CNN
F 1 "GND" H 9605 1727 50  0000 C CNN
F 2 "" H 9600 1900 50  0001 C CNN
F 3 "" H 9600 1900 50  0001 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4450 6400 4450
$Comp
L Device:C C207
U 1 1 5E86754D
P 9150 1750
F 0 "C207" H 9265 1796 50  0000 L CNN
F 1 "0.33uF" H 9265 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9188 1600 50  0001 C CNN
F 3 "~" H 9150 1750 50  0001 C CNN
	1    9150 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0212
U 1 1 5E867606
P 9150 1900
F 0 "#PWR0212" H 9150 1650 50  0001 C CNN
F 1 "GND" H 9155 1727 50  0000 C CNN
F 2 "" H 9150 1900 50  0001 C CNN
F 3 "" H 9150 1900 50  0001 C CNN
	1    9150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1600 9150 1500
Wire Wire Line
	9150 1500 9100 1500
$Comp
L Device:C C208
U 1 1 5E8683DE
P 9250 2900
F 0 "C208" H 9050 2900 50  0000 L CNN
F 1 "0.1uF" H 9000 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 9288 2750 50  0001 C CNN
F 3 "~" H 9250 2900 50  0001 C CNN
	1    9250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0214
U 1 1 5E869193
P 9250 3050
F 0 "#PWR0214" H 9250 2800 50  0001 C CNN
F 1 "GND" H 9255 2877 50  0000 C CNN
F 2 "" H 9250 3050 50  0001 C CNN
F 3 "" H 9250 3050 50  0001 C CNN
	1    9250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1500 10000 1500
$Comp
L Device:C C209
U 1 1 5E871434
P 10200 2900
F 0 "C209" H 10000 2900 50  0000 L CNN
F 1 "2.2uF" H 9950 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10238 2750 50  0001 C CNN
F 3 "~" H 10200 2900 50  0001 C CNN
	1    10200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0216
U 1 1 5E87143B
P 10200 3050
F 0 "#PWR0216" H 10200 2800 50  0001 C CNN
F 1 "GND" H 10205 2877 50  0000 C CNN
F 2 "" H 10200 3050 50  0001 C CNN
F 3 "" H 10200 3050 50  0001 C CNN
	1    10200 3050
	1    0    0    -1  
$EndComp
Text GLabel 6250 4450 0    50   Input ~ 0
Isen
Text GLabel 4500 3350 0    50   Input ~ 0
Isen
Wire Wire Line
	9300 1500 9150 1500
Connection ~ 9150 1500
Wire Wire Line
	9600 1800 9600 1900
Wire Wire Line
	3700 3850 3700 3750
Wire Wire Line
	9400 2700 9250 2700
Wire Wire Line
	10000 2700 10200 2700
Wire Wire Line
	10200 2750 10200 2700
Connection ~ 10200 2700
Wire Wire Line
	10200 2700 10400 2700
Wire Wire Line
	9250 2750 9250 2700
Connection ~ 9250 2700
Wire Wire Line
	9250 2700 9050 2700
Text GLabel 10000 1500 2    50   Input ~ 0
+5v
Text GLabel 9050 2700 0    50   Input ~ 0
+5v
Text GLabel 10400 2700 2    50   Input ~ 0
+3.3v
$Comp
L power:GND #PWR0101
U 1 1 5E8A3A1C
P 9700 3150
F 0 "#PWR0101" H 9700 2900 50  0001 C CNN
F 1 "GND" H 9705 2977 50  0000 C CNN
F 2 "" H 9700 3150 50  0001 C CNN
F 3 "" H 9700 3150 50  0001 C CNN
	1    9700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3150 9700 3000
Wire Wire Line
	3300 3750 3300 3800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E8A6BF9
P 1700 4800
F 0 "#FLG0101" H 1700 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 1700 4974 50  0000 C CNN
F 2 "" H 1700 4800 50  0001 C CNN
F 3 "~" H 1700 4800 50  0001 C CNN
	1    1700 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4800 1700 5050
Text GLabel 1700 5050 3    50   Input ~ 0
+7v_+9v
Wire Wire Line
	1450 3600 1450 3400
Wire Wire Line
	1450 3400 1550 3400
Text GLabel 1550 3400 2    50   Input ~ 0
+4v
Text GLabel 2750 3400 0    50   Input ~ 0
+4v
Wire Wire Line
	6300 3350 6200 3350
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E8B0254
P 2250 4800
F 0 "#FLG0102" H 2250 4875 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 4974 50  0000 C CNN
F 2 "" H 2250 4800 50  0001 C CNN
F 3 "~" H 2250 4800 50  0001 C CNN
	1    2250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4800 2250 5050
Text GLabel 2250 5050 3    50   Input ~ 0
+4v
Wire Wire Line
	6950 3150 6950 3500
Connection ~ 6950 3150
Wire Wire Line
	6950 4450 6950 4000
Connection ~ 6950 4450
Wire Wire Line
	6700 3750 6350 3750
Wire Wire Line
	6350 3750 6350 3650
Wire Wire Line
	6350 3650 6200 3650
$Comp
L CSD1320test2:CSD16321Q5 Q201
U 1 1 5E9BF9CF
P 6900 3750
F 0 "Q201" H 7150 3800 50  0000 L CNN
F 1 "CSD1320" H 7150 3700 50  0000 L CNN
F 2 "CSD:CSD13202Q2" H 8050 3700 50  0001 L CIN
F 3 "" V 6900 3750 50  0001 L CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3500 7000 3500
Wire Wire Line
	7000 3500 7000 3550
Wire Wire Line
	7000 3950 7000 4000
Wire Wire Line
	7000 4000 6950 4000
Wire Wire Line
	5350 4700 5800 4700
$Comp
L Jumper:Jumper_3_Open JP201
U 1 1 5F486CE5
P 5800 4850
F 0 "JP201" H 5800 4981 50  0000 C CNN
F 1 "7v ou 9v" H 5800 5072 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5800 4850 50  0001 C CNN
F 3 "~" H 5800 4850 50  0001 C CNN
	1    5800 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4700 5350 5550
Connection ~ 5350 4700
Wire Wire Line
	5550 4850 5550 5100
Wire Wire Line
	6050 4850 6050 5100
Wire Wire Line
	5550 5400 5550 5450
Wire Wire Line
	5550 5450 6050 5450
Wire Wire Line
	8150 3150 8150 5450
Wire Wire Line
	6050 5400 6050 5450
Connection ~ 6050 5450
Wire Wire Line
	6050 5450 8150 5450
$Comp
L Device:R R207
U 1 1 5F48278A
P 6050 5250
F 0 "R207" H 6120 5296 50  0000 L CNN
F 1 "6.19k" H 6120 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5980 5250 50  0001 C CNN
F 3 "~" H 6050 5250 50  0001 C CNN
	1    6050 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C201
U 1 1 5E84BAD1
P 3300 3600
F 0 "C201" H 3415 3646 50  0000 L CNN
F 1 "470uF" H 3350 3500 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x11.9" H 3300 3600 50  0001 C CNN
F 3 "~" H 3300 3600 50  0001 C CNN
	1    3300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C205
U 1 1 5E8513E5
P 5000 4000
F 0 "C205" H 5115 4046 50  0000 L CNN
F 1 "100nF" H 5115 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5038 3850 50  0001 C CNN
F 3 "~" H 5000 4000 50  0001 C CNN
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R201
U 1 1 5E851429
P 5000 4400
F 0 "R201" H 5070 4446 50  0000 L CNN
F 1 "1.58k" H 5070 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4930 4400 50  0001 C CNN
F 3 "~" H 5000 4400 50  0001 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C203
U 1 1 5E851380
P 4450 4250
F 0 "C203" H 4565 4296 50  0000 L CNN
F 1 "3.9nF" H 4565 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4488 4100 50  0001 C CNN
F 3 "~" H 4450 4250 50  0001 C CNN
	1    4450 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R205
U 1 1 5E84E4A7
P 6550 4450
F 0 "R205" V 6343 4450 50  0000 C CNN
F 1 "100" V 6434 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6480 4450 50  0001 C CNN
F 3 "~" H 6550 4450 50  0001 C CNN
	1    6550 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R206
U 1 1 5E84D8BE
P 6950 4650
F 0 "R206" H 7020 4696 50  0000 L CNN
F 1 "10m" H 7020 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6880 4650 50  0001 C CNN
F 3 "~" H 6950 4650 50  0001 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L201
U 1 1 5E84C44C
P 6700 2900
F 0 "L201" H 6700 3115 50  0000 C CNN
F 1 "4.5uH" H 6700 3024 50  0000 C CNN
F 2 "Inductor_SMD:L_Bourns_SRR1210A" H 6700 2900 50  0001 C CNN
F 3 "" H 6700 2900 50  0001 C CNN
	1    6700 2900
	1    0    0    -1  
$EndComp
Text GLabel 8300 3150 2    50   Input ~ 0
+7v_+9v
Text GLabel 9100 1500 0    50   Input ~ 0
+7v_+9v
Text Notes 6000 5950 0    50   ~ 0
Si le jumper est entre les pins 2 et 3 = 7v (environ)\nSi le jumper est entre les pins 2 et 1 = 9v (environ)
Wire Notes Line
	6650 4800 6650 5700
Wire Notes Line
	6650 5700 8150 5700
Wire Notes Line
	8150 5700 8150 6050
Wire Notes Line
	8150 6050 5750 6050
Wire Notes Line
	5750 6050 5750 5500
Wire Notes Line
	5750 5500 5450 5500
Wire Notes Line
	5450 5500 5450 4800
Wire Notes Line
	5450 4800 6650 4800
$Comp
L libRegulateur_FA:AP2204R-3.3 U203
U 1 1 5F88C967
P 9700 2700
F 0 "U203" H 9700 2942 50  0000 C CNN
F 1 "AP2210" H 9700 2851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 9700 2925 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2204.pdf" H 9700 2700 50  0001 C CNN
	1    9700 2700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-5.0 U202
U 1 1 5F88FE87
P 9600 1500
F 0 "U202" H 9600 1742 50  0000 C CNN
F 1 "LM1117-5.0" H 9600 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9600 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 9600 1500 50  0001 C CNN
	1    9600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D202
U 1 1 5F8C9839
P 10500 1750
F 0 "D202" H 10493 1495 50  0000 C CNN
F 1 "del_5v" H 10493 1586 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10500 1750 50  0001 C CNN
F 3 "~" H 10500 1750 50  0001 C CNN
	1    10500 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D203
U 1 1 5F8CA504
P 10500 3600
F 0 "D203" H 10493 3345 50  0000 C CNN
F 1 "del_3.3" H 10493 3436 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10500 3600 50  0001 C CNN
F 3 "~" H 10500 3600 50  0001 C CNN
	1    10500 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R209
U 1 1 5F8CB1CB
P 10200 1900
F 0 "R209" H 10130 1854 50  0000 R CNN
F 1 "330" H 10130 1945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10130 1900 50  0001 C CNN
F 3 "~" H 10200 1900 50  0001 C CNN
	1    10200 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R208
U 1 1 5F8CC0E3
P 10150 3750
F 0 "R208" H 10080 3704 50  0000 R CNN
F 1 "330" H 10080 3795 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 3750 50  0001 C CNN
F 3 "~" H 10150 3750 50  0001 C CNN
	1    10150 3750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F8CC6FC
P 10750 3700
F 0 "#PWR0102" H 10750 3450 50  0001 C CNN
F 1 "GND" H 10755 3527 50  0000 C CNN
F 2 "" H 10750 3700 50  0001 C CNN
F 3 "" H 10750 3700 50  0001 C CNN
	1    10750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F8CC983
P 10750 1850
F 0 "#PWR0103" H 10750 1600 50  0001 C CNN
F 1 "GND" H 10755 1677 50  0000 C CNN
F 2 "" H 10750 1850 50  0001 C CNN
F 3 "" H 10750 1850 50  0001 C CNN
	1    10750 1850
	1    0    0    -1  
$EndComp
Text GLabel 10200 2050 3    50   Input ~ 0
+5v
Wire Wire Line
	10200 1750 10350 1750
Wire Wire Line
	10650 1750 10750 1750
Wire Wire Line
	10750 1750 10750 1850
Text GLabel 10150 3900 3    50   Input ~ 0
+3.3v
Wire Wire Line
	10150 3600 10350 3600
Wire Wire Line
	10650 3600 10750 3600
Wire Wire Line
	10750 3600 10750 3700
Entry Bus Bus
	12550 3450 12650 3550
$EndSCHEMATC