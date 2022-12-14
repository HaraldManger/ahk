#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Steuerung GUI ab hier

Gui, Add, Button, x10 y10 w100 h50 gSchiff, Schiffshandel
Gui, Add, Button, x110 y10 w100 h50 gQuest_Gilde, Quest Guilde
Gui, Add, Button, x210 y10 w100 h20 gBauen, Bauen
Gui, Add, Button, x210 y30 w100 h20 gKolo, Kolo für 6
Gui, Add, Button, x310 y10 w100 h20 gHilfe5, Hilfe5
Gui, Add, Button, x310 y30 w100 h20 gHilfe6, Hilfe6
Gui, Add, Button, x410 y10 w100 h50 gQuest_GE, Quest Loop GE
Gui, Add, Button, x510 y10 w100 h50 gLabby, Labby Loop

Gui, Add, Button, x610 y10 w100 h20 gHandel, Handel alles
Gui, Add, Button, x610 y30 w100 h20 gHandel_Main, Handel Main
Gui, Add, Checkbox, Checked x720 y5 w100 h25 vHOpt1, Main_xHarry
Gui, Add, Checkbox, Checked x720 y30 w100 h25 vHOpt2, Twink_xHarrry


Gui, Add, Button, x810 y10 w100 h50 gStartBS, Start Blue Stack
Gui, Add, Checkbox, Checked x920 y5 w100 h25 vOpt1, mit Hilfe
Gui, Add, Checkbox, Checked x920 y30 w100 h25 vOpt2, mit Quest
Gui, Add, Checkbox, Checked x1020 y5 w100 h25 vOpt3, mit Kisten
Gui, Add, Checkbox, Checked x1020 y30 w100 h25 vOpt4, mit Schiff
Gui, Add, Checkbox, Checked x1120 y5 w100 h25 vOpt5, mit Emoji
Gui, Add, Checkbox, Checked x1120 y30 w100 h25 vOpt6, mit Loginbonus

Gui, Add, Button, x1310 y10 w100 h50 gLabby, Labby Loop 1 Fenster

Gui, Show, x100 y940 w1800 h80, LM_Steuerung
Return

; Schiffshandel, Schiff muss geöffnet sein. Für 6 Fenster
Schiff:

; Info Text
;MsgBox, Schiff ist geöffnet? Start für 6 Fenster

CoordMode, Mouse, Screen
MouseMove, 603, 591
gosub g_6klicks
sleep, 200
CoordMode, Mouse, Screen
MouseMove, 1021, 839
gosub g_6klicks
sleep, 200

CoordMode, Mouse, Screen
MouseMove, 1284, 591
gosub g_6klicks
sleep, 200
CoordMode, Mouse, Screen
MouseMove, 1021, 839
gosub g_6klicks
sleep, 200

CoordMode, Mouse, Screen
MouseMove, 603, 858
gosub g_6klicks
sleep, 200
CoordMode, Mouse, Screen
MouseMove, 1021, 839
gosub g_6klicks
sleep, 200

CoordMode, Mouse, Screen
MouseMove, 1284, 858
gosub g_6klicks
sleep, 200
CoordMode, Mouse, Screen
MouseMove, 1021, 839
gosub g_6klicks
sleep, 200

Return

Quest_Gilde:

; Info Text
;MsgBox, Klickt VIP, Guilde und Admin Quests für 6 Fenster durch.

; klick VIP
CoordMode, Mouse, Screen
MouseMove, 1524, 240
gosub g_6klicks
sleep, 200
; klick 1
CoordMode, Mouse, Screen
MouseMove, 573, 512
gosub g_6klicks
sleep, 200
; klick 2
CoordMode, Mouse, Screen
MouseMove, 945, 514
gosub g_6klicks
sleep, 200
; klick 3
CoordMode, Mouse, Screen
MouseMove, 1335, 514
gosub g_6klicks
sleep, 200
; klick 4
CoordMode, Mouse, Screen
MouseMove, 580, 699
gosub g_6klicks
sleep, 200
; klick 5
CoordMode, Mouse, Screen
MouseMove, 949, 699
gosub g_6klicks
sleep, 200
; klick 6
CoordMode, Mouse, Screen
MouseMove, 1335, 699
gosub g_6klicks
sleep, 200

; GildenQuest
CoordMode, Mouse, Screen
MouseMove, 1231, 245
gosub g_6klicks
sleep, 200

loop 10
{
	sleep, 500
	CoordMode, Mouse, Screen
	MouseMove, 1511, 411
	gosub g_6klicks
}

; Admin Quest
CoordMode, Mouse, Screen
MouseMove, 938, 243
gosub g_6klicks
sleep, 200

loop 10
{
	sleep, 500
	CoordMode, Mouse, Screen
	MouseMove, 1511, 411
	gosub g_6klicks
}


Return

;Quest_Ally:

;Return

Hilfe5:

CoordMode, Mouse, Screen
MouseMove, 1714, 741
gosub g_5klicks
sleep, 200
MouseMove, 926, 887
gosub g_5klicks
sleep, 200
gosub gclose

Return

Hilfe6:

CoordMode, Mouse, Screen
MouseMove, 1714, 741
gosub g_6klicks
sleep, 200
MouseMove, 926, 887
gosub g_6klicks
sleep, 200
gosub gclose6

Return

Handel:
; Handelt zu xHarrry 5x alles

loop 5
{
; Öffne Nachrichten
	CoordMode, Mouse, Screen
	MouseMove, 1020 ,  889
	gosub g_5klicks
	sleep, 200
; Öffne Favoriten
	MouseMove, 1620 ,  722
	gosub g_5klicks
	sleep, 200
; Öffne Message
	MouseMove, 670 ,  437
	gosub g_5klicks
	sleep, 200
; Öffne Profil
	MouseMove, 381 ,  267
	gosub g_5klicks
	sleep, 200
; Öffne Popup
	MouseMove, 1378 ,  206
	gosub g_5klicks
	sleep, 200
; Öffne ress senden
	MouseMove, 864 ,  453
	gosub g_5klicks
	sleep, 200
	
;Nahrung
	MouseMove,  955, 426
	gosub g_5klicks
	sleep, 50
	
;Stein
	MouseMove,  955, 547
	gosub g_5klicks
	sleep, 50
	
;Holz
	MouseMove,  955, 672
	gosub g_5klicks
	sleep, 50
	
;Erz
	MouseMove,  955, 790
	gosub g_5klicks
	sleep, 50
	
;Gold
	MouseMove,  955, 912
	gosub g_5klicks
	sleep, 50
	
;Ok
	MouseMove,  1291, 863
	gosub g_5klicks
	sleep, 300
	
;Bestätigung
	MouseMove,  1020, 460
	gosub g_5klicks
	sleep, 50
}

Return

Handel_Main:
; Handelt zu xHarrry 5x alles

; wie oft loopen?
InputBox, times, Enter number of loops

if (times > 0) ; test if it is a number
	
loop % times
{
; Öffne Nachrichten
	CoordMode, Mouse, Screen
	MouseMove, 1020 ,  889
	gosub g_6klicks
	sleep, 200
; Öffne Favoriten
	MouseMove, 1620 ,  722
	gosub g_6klicks
	sleep, 200
; Öffne Message
	MouseMove, 662 ,  276
	gosub g_6klicks
	sleep, 200
; Öffne Profil
	MouseMove, 381 ,  267
	gosub g_6klicks
	sleep, 200
; Öffne Popup
	MouseMove, 1378 ,  206
	gosub g_6klicks
	sleep, 200
; Öffne ress senden
	MouseMove, 864 ,  453
	gosub g_6klicks
	sleep, 200
	
;Nahrung
	MouseMove,  955, 426
	gosub g_6klicks
	sleep, 50
	
;Stein
	MouseMove,  955, 547
	gosub g_6klicks
	sleep, 50
	
;Holz
	MouseMove,  955, 672
	gosub g_6klicks
	sleep, 50
	
;Erz
	MouseMove,  955, 790
	gosub g_6klicks
	sleep, 50
	
;Gold
	MouseMove,  955, 912
	gosub g_6klicks
	sleep, 50
	
;Ok
	MouseMove,  1291, 863
	gosub g_6klicks
	sleep, 300
	
;Bestätigung
	MouseMove,  1020, 460
	gosub g_6klicks
	sleep, 50
}

Return


Kolo:
; Koloseum für alle 6 loop 5 Mal. Kolo muss geöffnet sein.

loop 5
{
; Klicke kämpfen
	CoordMode, Mouse, Screen
	MouseMove, 1511 ,  579
	gosub g_6klicks
	sleep, 500
; Klicke kämpfen
	MouseMove, 1469 ,  742
	gosub g_6klicks
	sleep, 10000
; Klicke Pause
	MouseMove, 1693 ,  113
	gosub g_6klicks
	sleep, 1000
; Klicke Aufgeben
	MouseMove, 801 ,  482
	gosub g_6klicks
	sleep, 5000
; Klicke Weiter
	MouseMove, 1668 ,  874
	gosub g_6klicks
	sleep, 8000
	
}

Return

Bauen:

; wie oft loopen?
InputBox, times, Enter number of loops

if (times > 0) ; test if it is a number
	
loop % times
{
	; klick Gebäude an
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1393 ,  357
	gosub g_6klicks
	sleep, 200
	; klick verbessern
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1517 ,  863
	gosub g_6klicks
	sleep, 200
	; klick verbessern next
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1153 ,  839
	gosub g_6klicks
	sleep, 200
	; klick ress verwenden
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1106 ,  858
	gosub g_6klicks
	sleep, 200
	
	; klick Gebäude an
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1393 ,  357
	gosub g_6klicks
	sleep, 200
	; klick Hilfe
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1517 ,  863
	gosub g_6klicks
	sleep, 200
	
	; Hilfe Klicken sub
	gosub Hilfe6	
	
	; klick Gebäude an für abbruch
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1393 ,  357
	gosub g_6klicks
	sleep, 200
	; klick abbruch
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1249 ,  863
	gosub g_6klicks
	sleep, 200
	; klick bestätigen
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 1062 ,  535
	gosub g_6klicks
	sleep, 200
	
	
}

Return

Quest_GE:

; wie oft loopen?
InputBox, times, Enter number of loops

if (times > 0) ; test if it is a number
	
times_loop := times
loop % times
{
	times_loop := times_loop -1
	sleep, 100
	CoordMode, Mouse, Screen
	MouseMove, 801, 328
	MouseClick left
	sleep, 500
	CoordMode, Mouse, Screen
	MouseMove, 939, 596
	MouseClick left
	
	loop 10
	{
		sleep, 2000
		CoordMode, Mouse, Screen
		MouseMove, 1511, 411
		MouseClick left
	}
	MsgBox, , Anzahl, Wieviele noch: %times_loop%, 2
}
MsgBox, Fertig
Return

StartBS:

CoordMode, Mouse, Screen
MouseMove, 313, 203

; Klicke die 5 Fenster durch mit höhere sleep
if WinExist("BlueStacks 1")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000

if WinExist("BlueStacks 2")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000

if WinExist("BlueStacks 3")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000

if WinExist("BlueStacks 4")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000

if WinExist("BlueStacks 5")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000

if WinExist("BlueStacks 6")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000

if WinExist("BlueStacks 7")
	WinActivate ; use the window found above

else
	Exit

sleep, 5000
MouseClick left
sleep, 5000


if WinExist("BlueStacks 2")
	WinActivate ; use the window found above

else
	Exit

; klicke VIP Popup weg
sleep, 30000
CoordMode, Mouse, Screen
MouseMove, 1203, 215
gosub g_6klicks
sleep, 200

; klicke Gruppen Bericht weg
sleep, 2000
CoordMode, Mouse, Screen
MouseMove, 1491, 160
gosub g_6klicks
sleep, 200

; klicke Shop Popup weg
sleep, 2000
CoordMode, Mouse, Screen
MouseMove, 1697, 111
gosub g_6klicks
sleep, 200


; ab hier starten die Checkboxen

; Checkbox Hilfe

Gui, Submit, NoHide ;this command submits the guis' datas' state 
sleep, 2000
If Opt1 = 1
	gosub Hilfe6



; Checkbox Quest
sleep, 2000
If Opt2 = 1
	; Öffne Quest Popup
	CoordMode, Mouse, Screen
MouseMove, 1166, 904
gosub g_6klicks
sleep, 200
	; Sub Quest Gilde
gosub Quest_Gilde
sleep, 200
	; schließe Popup
gosub gclose6



; Checkbox Kisten
sleep, 2000
If Opt3 = 1
	; Öffne Kisten Popup
	CoordMode, Mouse, Screen
MouseMove, 893, 904
gosub g_6klicks
sleep, 200

CoordMode, Mouse, Screen
MouseMove, 1640, 299
gosub g_6klicks
sleep, 2000

CoordMode, Mouse, Screen
MouseMove, 1367, 396
gosub g_6klicks
sleep, 2000

	; Bonuskisten
CoordMode, Mouse, Screen
MouseMove, 1426, 357
gosub g_6klicks
sleep, 2000

CoordMode, Mouse, Screen
MouseMove, 1538, 251
gosub g_6klicks
sleep, 2000

CoordMode, Mouse, Screen
MouseMove, 1349, 245
gosub g_6klicks
sleep, 2000

	; Normale Kisten
CoordMode, Mouse, Screen
MouseMove, 986, 355
gosub g_6klicks
sleep, 2000

CoordMode, Mouse, Screen
MouseMove, 1538, 251
gosub g_6klicks
sleep, 2000

CoordMode, Mouse, Screen
MouseMove, 1349, 245
gosub g_6klicks
sleep, 2000

gosub gclose6
sleep, 2000
gosub gclose6

; Checkbox Schiff



; Checkbox Emoji



; Checkbox Loginbonus

Return


gclose:
CoordMode, Mouse, Screen
MouseMove, 1703, 111
gosub g_5klicks

Return

gclose6:
CoordMode, Mouse, Screen
MouseMove, 1703, 111
gosub g_6klicks

Return

g_5klicks:

if WinExist("BlueStacks 2")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 3")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 4")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 5")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 6")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left


if WinExist("BlueStacks 2")
	WinActivate ; use the window found above

else
	Exit

Return


g_6klicks: ; Mittlerweile 7 klicks

if WinExist("BlueStacks 1")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 7")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 2")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 3")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 4")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 5")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left

if WinExist("BlueStacks 6")
	WinActivate ; use the window found above

else
	Exit

sleep, 50
MouseClick left


if WinExist("BlueStacks 1")
	WinActivate ; use the window found above

else
	Exit

Return

Labby:

; wie oft loopen?
InputBox, times, Enter number of loops. 1 Loop ist immer 10 klicks = 1 Monster

if (times > 0) ; test if it is a number
	
loop % times
{
	loop 10
	{
		sleep, 1200
		CoordMode, Mouse, Screen
		MouseMove, 949, 839
		MouseClick left
	}
	MsgBox, , Anzahl, Welcher Lauf sind wir: %times%, 10
}
MsgBox, Fertig

Return


Esc::ExitApp