'======================================================================='

' Title: Step Volume Control
' Last Updated :  01.2022
' Author : A.Hossein.Khalilian
' Program code  : BASCOM-AVR 2.0.8.5
' Hardware req. : Atmega16

'======================================================================='

$regfile = "m16def.dat"
$crystal = 1000000

Config Portd = Output
Config Portb.1 = Input
Config Portb.3 = Input

Dim A As Eram Byte
Dim B As Byte
Portd = 0
B = A

'-----------------------------------------------------------

Do

If Pinb.1 = 1 Then
If B < 255 Then
Incr B
A = B
End If
End If

If Pinb.3 = 1 Then
If B > 0 Then
Decr B
A = B
End If
End If

Portd = B

Waitms 100

Loop

End

'-----------------------------------------------------------