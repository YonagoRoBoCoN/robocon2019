EESchema Schematic File Version 4
LIBS:MD_2016_remake_v2-cache
EELAYER 29 0
EELAYER END
$Descr User 5906 4724
encoding utf-8
Sheet 2 6
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
L MD_2016_remake_v2-rescue:EP2-3L3SAb-SamacSys_Parts K?
U 1 1 5CF0734F
P 3300 1350
AR Path="/5CF0734F" Ref="K?"  Part="1" 
AR Path="/5CEF7FFC/5CF0734F" Ref="K?"  Part="1" 
AR Path="/5CEF7914/5CF0734F" Ref="K1"  Part="1" 
F 0 "K1" H 3700 900 50  0000 C CNN
F 1 "EP2-3L3SAb" H 3700 1500 50  0000 C CNN
F 2 "SamacSys_Parts:EP2_H-BRIDGE" H 3950 1450 50  0001 L CNN
F 3 "http://akizukidenshi.com/download/ds/nec/EP1_EP2_datasheet.pdf" H 3950 1350 50  0001 L CNN
F 4 "Twin automotive relay" H 3950 1250 50  0001 L CNN "Description"
F 5 "NEC" H 3950 1050 50  0001 L CNN "Manufacturer_Name"
F 6 "EP2-3L3SAb" H 3950 950 50  0001 L CNN "Manufacturer_Part_Number"
	1    3300 1350
	1    0    0    -1  
$EndComp
$Comp
L Isolator:TLP627 U?
U 1 1 5CF07355
P 2050 1550
AR Path="/5CF07355" Ref="U?"  Part="1" 
AR Path="/5CEF7FFC/5CF07355" Ref="U?"  Part="1" 
AR Path="/5CEF7914/5CF07355" Ref="U6"  Part="1" 
F 0 "U6" H 2250 1750 50  0000 C CNN
F 1 "TLP627" H 1900 1750 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 1750 1350 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=16914&prodName=TLP627" H 2050 1550 50  0001 L CNN
	1    2050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5CF0735B
P 4450 1450
AR Path="/5CF0735B" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF0735B" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF0735B" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 4450 1300 50  0001 C CNN
F 1 "+12V" H 4465 1623 50  0000 C CNN
F 2 "" H 4450 1450 50  0001 C CNN
F 3 "" H 4450 1450 50  0001 C CNN
	1    4450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1450 4100 1450
$Comp
L power:+12V #PWR?
U 1 1 5CF07362
P 3200 1550
AR Path="/5CF07362" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF07362" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF07362" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 3200 1400 50  0001 C CNN
F 1 "+12V" H 3050 1600 50  0000 C CNN
F 2 "" H 3200 1550 50  0001 C CNN
F 3 "" H 3200 1550 50  0001 C CNN
	1    3200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1550 3200 1550
$Comp
L Motor:Motor_DC M?
U 1 1 5D00B311
P 4950 1450
AR Path="/5D00B311" Ref="M?"  Part="1" 
AR Path="/5CEF7FFC/5D00B311" Ref="M?"  Part="1" 
AR Path="/5CEF7914/5D00B311" Ref="M1"  Part="1" 
F 0 "M1" H 5108 1446 50  0000 L CNN
F 1 "xt60" H 5108 1355 50  0000 L CNN
F 2 "Morita:XT60PT-F" H 4950 1360 50  0001 C CNN
F 3 "~" H 4950 1360 50  0001 C CNN
	1    4950 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 1650 4100 1650
Wire Wire Line
	3300 1350 3300 1150
Wire Wire Line
	3300 1150 4950 1150
Wire Wire Line
	3300 1450 2700 1450
Wire Wire Line
	4100 1550 4200 1550
Wire Wire Line
	4200 1550 4200 1850
Wire Wire Line
	4200 1850 2950 1850
$Comp
L Isolator:TLP627 U?
U 1 1 5CF07376
P 2050 1950
AR Path="/5CF07376" Ref="U?"  Part="1" 
AR Path="/5CEF7FFC/5CF07376" Ref="U?"  Part="1" 
AR Path="/5CEF7914/5CF07376" Ref="U7"  Part="1" 
F 0 "U7" H 2250 2150 50  0000 C CNN
F 1 "TLP627" H 1900 2150 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 1750 1750 50  0001 L CIN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=16914&prodName=TLP627" H 2050 1950 50  0001 L CNN
	1    2050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5CF0737C
P 2700 1650
AR Path="/5CF0737C" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF0737C" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF0737C" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 2700 1450 50  0001 C CNN
F 1 "GNDPWR" H 2600 1700 50  0000 C CNN
F 2 "" H 2700 1600 50  0001 C CNN
F 3 "" H 2700 1600 50  0001 C CNN
	1    2700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 5CF07382
P 2700 2050
AR Path="/5CF07382" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF07382" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF07382" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 2700 1850 50  0001 C CNN
F 1 "GNDPWR" H 2900 2000 50  0000 C CNN
F 2 "" H 2700 2000 50  0001 C CNN
F 3 "" H 2700 2000 50  0001 C CNN
	1    2700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2050 2450 2050
Wire Wire Line
	2450 1650 2700 1650
Wire Wire Line
	4100 1350 4300 1350
Wire Wire Line
	4300 1350 4300 1800
$Comp
L Device:Q_NMOS_GDS Q?
U 1 1 5CF0738C
P 4200 2350
AR Path="/5CF0738C" Ref="Q?"  Part="1" 
AR Path="/5CEF7FFC/5CF0738C" Ref="Q?"  Part="1" 
AR Path="/5CEF7914/5CF0738C" Ref="Q1"  Part="1" 
F 0 "Q1" H 4406 2396 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 4406 2305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-247-3_Vertical" H 4400 2450 50  0001 C CNN
F 3 "~" H 4200 2350 50  0001 C CNN
	1    4200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1650 3300 1650
$Comp
L MD_2016_remake_v2-rescue:TLP152(E(T-SamacSys_Parts IC?
U 1 1 5CF0739F
P 1650 2250
AR Path="/5CF0739F" Ref="IC?"  Part="1" 
AR Path="/5CEF7FFC/5CF0739F" Ref="IC?"  Part="1" 
AR Path="/5CEF7914/5CF0739F" Ref="IC1"  Part="1" 
F 0 "IC1" H 1950 1900 50  0000 C CNN
F 1 "TLP152" H 2300 1900 50  0000 C CNN
F 2 "Package_SO:SO-5_4.4x3.6mm_P1.27mm" H 2700 2350 50  0001 L CNN
F 3 "http://uk.rs-online.com/web/p/products/8851275P" H 2700 2250 50  0001 L CNN
F 4 "Toshiba TLP152(E(T Photo IC Output Optocoupler, Surface Mount, 5-Pin SO6" H 2700 2150 50  0001 L CNN "Description"
F 5 "2.2" H 2700 2050 50  0001 L CNN "Height"
F 6 "8851275P" H 2700 1950 50  0001 L CNN "RS Part Number"
F 7 "http://uk.rs-online.com/web/p/products/8851275P" H 2700 1850 50  0001 L CNN "RS Price/Stock"
F 8 "Toshiba" H 2700 1750 50  0001 L CNN "Manufacturer_Name"
F 9 "TLP152(E(T" H 2700 1650 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CF073A5
P 4150 2550
AR Path="/5CF073A5" Ref="R?"  Part="1" 
AR Path="/5CEF7FFC/5CF073A5" Ref="R?"  Part="1" 
AR Path="/5CEF7914/5CF073A5" Ref="R17"  Part="1" 
F 0 "R17" V 4050 2550 50  0000 C CNN
F 1 "N/A" V 4150 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4080 2550 50  0001 C CNN
F 3 "~" H 4150 2550 50  0001 C CNN
	1    4150 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D00B319
P 3450 2350
AR Path="/5D00B319" Ref="R?"  Part="1" 
AR Path="/5CEF7FFC/5D00B319" Ref="R?"  Part="1" 
AR Path="/5CEF7914/5D00B319" Ref="R16"  Part="1" 
F 0 "R16" V 3350 2350 50  0000 C CNN
F 1 "Rg" V 3450 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 2350 50  0001 C CNN
F 3 "~" H 3450 2350 50  0001 C CNN
	1    3450 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 2350 2850 2350
Wire Wire Line
	3600 2350 4000 2350
Wire Wire Line
	4000 2350 4000 2550
Connection ~ 4000 2350
$Comp
L power:GNDPWR #PWR?
U 1 1 5CF073B5
P 4300 2650
AR Path="/5CF073B5" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF073B5" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF073B5" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 4300 2450 50  0001 C CNN
F 1 "GNDPWR" H 4500 2600 50  0000 C CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2650 4300 2550
Connection ~ 4300 2550
$Comp
L power:GND #PWR?
U 1 1 5CF073BD
P 1650 1650
AR Path="/5CF073BD" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF073BD" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF073BD" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 1650 1400 50  0001 C CNN
F 1 "GND" H 1550 1550 50  0000 C CNN
F 2 "" H 1650 1650 50  0001 C CNN
F 3 "" H 1650 1650 50  0001 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CF073C3
P 1650 2050
AR Path="/5CF073C3" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF073C3" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF073C3" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 1650 1800 50  0001 C CNN
F 1 "GND" H 1550 1950 50  0000 C CNN
F 2 "" H 1650 2050 50  0001 C CNN
F 3 "" H 1650 2050 50  0001 C CNN
	1    1650 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D00B31D
P 1650 2450
AR Path="/5D00B31D" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5D00B31D" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5D00B31D" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 1650 2200 50  0001 C CNN
F 1 "GND" H 1550 2350 50  0000 C CNN
F 2 "" H 1650 2450 50  0001 C CNN
F 3 "" H 1650 2450 50  0001 C CNN
	1    1650 2450
	1    0    0    -1  
$EndComp
NoConn ~ 1650 2350
$Comp
L power:+12V #PWR?
U 1 1 5CF073D0
P 3000 2250
AR Path="/5CF073D0" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5CF073D0" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5CF073D0" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3000 2100 50  0001 C CNN
F 1 "+12V" H 3150 2300 50  0000 C CNN
F 2 "" H 3000 2250 50  0001 C CNN
F 3 "" H 3000 2250 50  0001 C CNN
	1    3000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2250 2850 2250
$Comp
L power:GNDPWR #PWR?
U 1 1 5D00B31F
P 3000 2450
AR Path="/5D00B31F" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5D00B31F" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5D00B31F" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 3000 2250 50  0001 C CNN
F 1 "GNDPWR" H 3200 2400 50  0000 C CNN
F 2 "" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2450 2850 2450
$Comp
L Device:C_Small C?
U 1 1 5D00B320
P 3000 2350
AR Path="/5D00B320" Ref="C?"  Part="1" 
AR Path="/5CEF7FFC/5D00B320" Ref="C?"  Part="1" 
AR Path="/5CEF7914/5D00B320" Ref="C6"  Part="1" 
F 0 "C6" H 3092 2396 50  0000 L CNN
F 1 "0.1u" H 3092 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3000 2350 50  0001 C CNN
F 3 "~" H 3000 2350 50  0001 C CNN
	1    3000 2350
	1    0    0    -1  
$EndComp
Connection ~ 3000 2250
Connection ~ 3000 2450
Text HLabel 1650 1450 0    50   Input ~ 0
A
Text HLabel 1650 1850 0    50   Input ~ 0
B
Text HLabel 1650 2250 0    50   Input ~ 0
PWM
Wire Wire Line
	3200 1550 3200 1650
Connection ~ 3200 1550
$Comp
L Diode:1N4148W D13
U 1 1 5D9B1EED
P 2700 1300
F 0 "D13" V 2654 1380 50  0000 L CNN
F 1 "1N4148W" V 2745 1380 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2700 1125 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2700 1300 50  0001 C CNN
	1    2700 1300
	0    1    1    0   
$EndComp
Connection ~ 2700 1450
Wire Wire Line
	2700 1450 2450 1450
$Comp
L power:+12V #PWR?
U 1 1 5D9B3E11
P 2700 1150
AR Path="/5D9B3E11" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7FFC/5D9B3E11" Ref="#PWR?"  Part="1" 
AR Path="/5CEF7914/5D9B3E11" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 2700 1000 50  0001 C CNN
F 1 "+12V" H 2550 1200 50  0000 C CNN
F 2 "" H 2700 1150 50  0001 C CNN
F 3 "" H 2700 1150 50  0001 C CNN
	1    2700 1150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148W D15
U 1 1 5D9B6756
P 2950 1700
F 0 "D15" V 2904 1780 50  0000 L CNN
F 1 "1N4148W" V 2995 1780 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 2950 1525 50  0001 C CNN
F 3 "https://www.vishay.com/docs/85748/1n4148w.pdf" H 2950 1700 50  0001 C CNN
	1    2950 1700
	0    1    1    0   
$EndComp
Connection ~ 2950 1850
Wire Wire Line
	2950 1850 2450 1850
Wire Wire Line
	3200 1550 2950 1550
Wire Wire Line
	4450 1500 4450 1450
Connection ~ 4450 1450
Wire Wire Line
	4450 1800 4300 1800
Connection ~ 4300 1800
Wire Wire Line
	4300 1800 4300 2150
$Comp
L Device:D_Schottky D14
U 1 1 5D9C2BAF
P 4450 1650
F 0 "D14" V 4404 1729 50  0000 L CNN
F 1 "SK54" V 4495 1729 50  0000 L CNN
F 2 "Diode_SMD:D_SMC" H 4450 1650 50  0001 C CNN
F 3 "~" H 4450 1650 50  0001 C CNN
	1    4450 1650
	0    1    1    0   
$EndComp
$EndSCHEMATC
