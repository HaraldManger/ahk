#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Gui, Add, Picture, x10 y15 w10 h10 vred1, circle_red.png
Gui, Add, Picture, x200 y15 w10 h10 vgreen1, circle_green.png
Gui, Add, Button, x30 y10 w100 h20 gSteuerung, Steuerung

Gui, Add, Picture, x10 y35 w10 h10 vred2, circle_red.png
Gui, Add, Picture, x200 y15 w10 h10 vgreen2, circle_green.png
Gui, Add, Button, x30 y30 w100 h20 gHandel, Handel

Gui, Add, Picture, x10 y55 w10 h10 vred3, circle_red.png
Gui, Add, Picture, x200 y15 w10 h10 vgreen3, circle_green.png
Gui, Add, Button, x30 y50 w100 h20 g5Klicks, 5 Klicks


Gui, Show, x1750 y850 w150 h120 , AlwaysOnTop LM Start
Return



Handel:

Return

5Klicks:
if WinExist("LM_5_Klicks") {
	GuiControl, Move, red3, x10
	GuiControl, Move, green3, x200
	WinClose
}
else {
	GuiControl, Move, red3, x200
	GuiControl, Move, green3, x10
	Run LM_5_Klicks.ahk
}
Return

Steuerung:

if WinExist("LM Steuerung") {
	GuiControl, Move, red1, x10
	GuiControl, Move, green1, x200
	WinClose
}
else {
	GuiControl, Move, red1, x200
	GuiControl, Move, green1, x10
	Run LM_Steuerung.ahk
}

Return


; wie oft loopen?
InputBox, times, Enter number of loops

if (times > 0) ; test if it is a number
	
loop % times
{
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
		sleep, 1500
		CoordMode, Mouse, Screen
		MouseMove, 1511, 411
		MouseClick left
	}
}

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