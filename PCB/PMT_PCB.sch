EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_01x08 Accelerometer1
U 1 1 5E5861BF
P 6150 3350
F 0 "Accelerometer1" H 6230 3342 50  0000 L CNN
F 1 "Conn_01x08" H 6230 3251 50  0000 L CNN
F 2 "PMT_PCB:Accelerometer_Breakout" H 6150 3350 50  0001 C CNN
F 3 "~" H 6150 3350 50  0001 C CNN
	1    6150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small 0.47uF1
U 1 1 5E598D14
P 7050 3250
F 0 "0.47uF1" H 7142 3296 50  0000 L CNN
F 1 "Capacitor" H 7142 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 7050 3250 50  0001 C CNN
F 3 "~" H 7050 3250 50  0001 C CNN
	1    7050 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small 2.2uF1
U 1 1 5E599DA7
P 8300 3250
F 0 "2.2uF1" H 8392 3296 50  0000 L CNN
F 1 "Capacitor" H 8392 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 8300 3250 50  0001 C CNN
F 3 "~" H 8300 3250 50  0001 C CNN
	1    8300 3250
	1    0    0    -1  
$EndComp
Text GLabel 5950 3050 0    50   Input ~ 0
3.3V
Text GLabel 5950 3350 0    50   Input ~ 0
ACCEL_SCL
Text GLabel 5950 3450 0    50   BiDi ~ 0
ACCEL_SDA
Text GLabel 5950 3750 0    50   Output ~ 0
ACCEL_INT1
NoConn ~ 5950 3150
NoConn ~ 5950 3550
NoConn ~ 5950 3650
$Comp
L power:GND #PWR0103
U 1 1 5E5A3187
P 5950 3950
F 0 "#PWR0103" H 5950 3700 50  0001 C CNN
F 1 "GND" V 5955 3822 50  0000 R CNN
F 2 "" H 5950 3950 50  0001 C CNN
F 3 "" H 5950 3950 50  0001 C CNN
	1    5950 3950
	0    1    1    0   
$EndComp
Text GLabel 5950 4050 0    50   Output ~ 0
GPS_TX
Text GLabel 5950 4150 0    50   Input ~ 0
GPS_RX
Text GLabel 5950 4250 0    50   Input ~ 0
3.3V
$Comp
L PMT_PCB:AZ2940 U1
U 1 1 5E5AD978
P 7700 2950
F 0 "U1" H 7700 3192 50  0000 C CNN
F 1 "AZ2940" H 7700 3101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7700 3200 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/158457a.pdf" H 7700 2950 50  0001 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2950 8300 3150
$Comp
L power:GND #PWR0104
U 1 1 5E5B1565
P 7050 3350
F 0 "#PWR0104" H 7050 3100 50  0001 C CNN
F 1 "GND" H 7055 3177 50  0000 C CNN
F 2 "" H 7050 3350 50  0001 C CNN
F 3 "" H 7050 3350 50  0001 C CNN
	1    7050 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5E5B2220
P 8300 3350
F 0 "#PWR0105" H 8300 3100 50  0001 C CNN
F 1 "GND" H 8305 3177 50  0000 C CNN
F 2 "" H 8300 3350 50  0001 C CNN
F 3 "" H 8300 3350 50  0001 C CNN
	1    8300 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E5B297E
P 7700 3350
F 0 "#PWR0106" H 7700 3100 50  0001 C CNN
F 1 "GND" H 7705 3177 50  0000 C CNN
F 2 "" H 7700 3350 50  0001 C CNN
F 3 "" H 7700 3350 50  0001 C CNN
	1    7700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3250 7700 3350
Text GLabel 8300 2950 2    50   Output ~ 0
3.3V
Wire Wire Line
	8000 2950 8300 2950
Text GLabel 4150 2400 0    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR0109
U 1 1 5E5D7D2E
P 4150 2500
F 0 "#PWR0109" H 4150 2250 50  0001 C CNN
F 1 "GND" V 4155 2372 50  0000 R CNN
F 2 "" H 4150 2500 50  0001 C CNN
F 3 "" H 4150 2500 50  0001 C CNN
	1    4150 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E5DA83C
P 5000 2500
F 0 "#PWR0110" H 5000 2250 50  0001 C CNN
F 1 "GND" V 5005 2372 50  0000 R CNN
F 2 "" H 5000 2500 50  0001 C CNN
F 3 "" H 5000 2500 50  0001 C CNN
	1    5000 2500
	0    -1   -1   0   
$EndComp
Text GLabel 5000 2600 2    50   Input ~ 0
3.3V
Text GLabel 5000 2900 2    50   Input ~ 0
SD_DO
Text GLabel 5000 3000 2    50   Output ~ 0
SD_DI
Text GLabel 5000 3300 2    50   Output ~ 0
SD_SCK
Text GLabel 5000 3100 2    50   Output ~ 0
SD_CS
Text GLabel 4150 4000 0    50   Input ~ 0
GPS_TX
Text GLabel 4150 3900 0    50   Output ~ 0
GPS_RX
Text GLabel 4150 3400 0    50   Output ~ 0
ACCEL_SCL
Text GLabel 4150 3300 0    50   BiDi ~ 0
ACCEL_SDA
Text GLabel 4150 3000 0    50   Input ~ 0
ACCEL_INT1
NoConn ~ 4150 2600
NoConn ~ 4150 2700
NoConn ~ 4150 2800
NoConn ~ 4150 2900
NoConn ~ 4150 3100
NoConn ~ 4150 3200
NoConn ~ 4150 3500
NoConn ~ 4150 3600
NoConn ~ 4150 3700
NoConn ~ 4150 3800
NoConn ~ 4150 4100
NoConn ~ 4150 4200
NoConn ~ 4150 4300
NoConn ~ 5000 4300
NoConn ~ 5000 4200
NoConn ~ 5000 4100
NoConn ~ 5000 4000
NoConn ~ 5000 3900
NoConn ~ 5000 3800
NoConn ~ 5000 3700
NoConn ~ 5000 3600
NoConn ~ 5000 3500
NoConn ~ 5000 3400
NoConn ~ 5000 3200
NoConn ~ 5000 2800
NoConn ~ 5000 2700
NoConn ~ 5000 2400
$Comp
L PMT_PCB:ESP32_Pico_D4 ESP32_Pico_D41
U 1 1 5E5F3168
P 4600 3350
F 0 "ESP32_Pico_D41" H 4575 4565 50  0000 C CNN
F 1 "ESP32_Pico_D4" H 4575 4474 50  0000 C CNN
F 2 "PMT_PCB:ESP32_Pico_D4" H 4700 3400 50  0001 C CNN
F 3 "~" H 4700 3400 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 GPS1
U 1 1 5E5FA209
P 6150 4050
F 0 "GPS1" H 6230 4042 50  0000 L CNN
F 1 "Conn_01x04" H 6230 3951 50  0000 L CNN
F 2 "PMT_PCB:GPS" H 6150 4050 50  0001 C CNN
F 3 "~" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3150 7050 2950
Wire Wire Line
	7400 2950 7050 2950
$Comp
L power:GND #PWR0102
U 1 1 5E5A296D
P 5950 3250
F 0 "#PWR0102" H 5950 3000 50  0001 C CNN
F 1 "GND" V 5955 3122 50  0000 R CNN
F 2 "" H 5950 3250 50  0001 C CNN
F 3 "" H 5950 3250 50  0001 C CNN
	1    5950 3250
	0    1    1    0   
$EndComp
Text GLabel 7050 2950 0    50   Input ~ 0
3.7-12Vin
$Comp
L Connector_Generic:Conn_01x07 SD_Card1
U 1 1 5E57A931
P 6150 2400
F 0 "SD_Card1" H 6230 2442 50  0000 L CNN
F 1 "Conn_01x07" H 6230 2351 50  0000 L CNN
F 2 "PMT_PCB:SD_Card_Breakout" H 6150 2400 50  0001 C CNN
F 3 "~" H 6150 2400 50  0001 C CNN
	1    6150 2400
	1    0    0    -1  
$EndComp
NoConn ~ 5950 2700
Text GLabel 5950 2600 0    50   Output ~ 0
SD_DO
$Comp
L power:GND #PWR0101
U 1 1 5E76CC3B
P 5950 2500
F 0 "#PWR0101" H 5950 2250 50  0001 C CNN
F 1 "GND" V 5955 2372 50  0000 R CNN
F 2 "" H 5950 2500 50  0001 C CNN
F 3 "" H 5950 2500 50  0001 C CNN
	1    5950 2500
	0    1    1    0   
$EndComp
Text GLabel 5950 2400 0    50   Input ~ 0
SD_SCK
Text GLabel 5950 2300 0    50   Input ~ 0
3.3V
Text GLabel 5950 2200 0    50   Input ~ 0
SD_DI
Text GLabel 5950 2100 0    50   Input ~ 0
SD_CS
$Comp
L Connector_Generic:Conn_01x02 LIPO_BAT1
U 1 1 5E770859
P 7700 2100
F 0 "LIPO_BAT1" H 7780 2092 50  0000 L CNN
F 1 "Conn_01x02" H 7780 2001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7700 2100 50  0001 C CNN
F 3 "~" H 7700 2100 50  0001 C CNN
	1    7700 2100
	1    0    0    -1  
$EndComp
$Comp
L PMT_PCB:Screw_Terminals Screw_Terminals1
U 1 1 5E7712EE
P 7700 2350
F 0 "Screw_Terminals1" H 7780 2342 50  0000 L CNN
F 1 "Screw_Terminals" H 7780 2251 50  0000 L CNN
F 2 "PMT_PCB:Screw_Terminals" H 7700 2350 50  0001 C CNN
F 3 "~" H 7700 2350 50  0001 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
Text GLabel 7500 2100 0    50   Output ~ 0
3.7-12Vin
Text GLabel 7500 2350 0    50   Output ~ 0
3.7-12Vin
$Comp
L power:GND #PWR0107
U 1 1 5E77260F
P 7500 2200
F 0 "#PWR0107" H 7500 1950 50  0001 C CNN
F 1 "GND" V 7505 2072 50  0000 R CNN
F 2 "" H 7500 2200 50  0001 C CNN
F 3 "" H 7500 2200 50  0001 C CNN
	1    7500 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E772BAA
P 7500 2450
F 0 "#PWR0108" H 7500 2200 50  0001 C CNN
F 1 "GND" V 7505 2322 50  0000 R CNN
F 2 "" H 7500 2450 50  0001 C CNN
F 3 "" H 7500 2450 50  0001 C CNN
	1    7500 2450
	0    1    1    0   
$EndComp
$EndSCHEMATC
