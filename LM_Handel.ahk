#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Esc::ExitApp  ; Exit script with Escape key

^k::
MouseGetPos, xpos, ypos 
;MsgBox, The cursor is at X%xpos% Y%ypos%.

MouseClick, left, 686, 656
sleep, 700

;Nahrung
MouseClick, left, 837, 426
sleep, 50

;Stein
MouseClick, left, 837, 547
sleep, 50

;Holz
MouseClick, left, 837, 672
sleep, 50

;Erz
MouseClick, left, 837, 790
sleep, 50

;Gold
MouseClick, left, 837, 912
sleep, 50

;Ok
MouseClick, left, 1191, 863
sleep, 300

;Bestätigung
MouseClick, left, 860, 435
sleep, 50

MouseMove, xpos, ypos

exit


1::
gosub g_start
gosub g_nahrung
gosub g_holz
gosub g_stein
gosub g_erz
gosub g_gold
gosub g_ende
exit

3::
gosub g_start
;gosub g_nahrung
;gosub g_holz
gosub g_stein
;gosub g_erz
;gosub g_gold
gosub g_ende
exit

2::
gosub g_start
gosub g_nahrung
;gosub g_holz
;gosub g_stein
;gosub g_erz
;gosub g_gold
gosub g_ende
exit

4::
gosub g_start
;gosub g_nahrung
gosub g_holz
;gosub g_stein
;gosub g_erz
;gosub g_gold
gosub g_ende
exit

5::
gosub g_start
;gosub g_nahrung
;gosub g_holz
;gosub g_stein
gosub g_erz
;gosub g_gold
gosub g_ende
exit

6::
gosub g_start
;gosub g_nahrung
;gosub g_holz
;gosub g_stein
;gosub g_erz
gosub g_gold
gosub g_ende
exit

g_start:
MouseGetPos, xpos, ypos 
MouseClick, left, 686, 656
sleep, 700
return

g_nahrung:
;Nahrung
MouseClick, left, 837, 426
sleep, 50
return

g_stein:
;Stein
MouseClick, left, 837, 547
sleep, 50
return

g_holz:
;Holz
MouseClick, left, 837, 672
sleep, 50
return

g_erz:
;Erz
MouseClick, left, 837, 790
sleep, 50
return

g_gold:
;Gold
MouseClick, left, 837, 912
sleep, 50
return

g_ende:
;Ok
MouseClick, left, 1191, 863
sleep, 300

;Bestätigung
MouseClick, left, 1018, 472
sleep, 50

MouseMove, xpos, ypos
return