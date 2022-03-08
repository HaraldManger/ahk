#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Esc::ExitApp  ; Exit script with Escape key

RButton::
;^j::
;MsgBox "Go"

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

Exit



;RButton::
^j::
;MsgBox "Go"

InputBox, times, Enter number of loops

if (times > 0) ; test if it is a number
	
loop % times
{

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

sleep, 500
}

Exit


Numpad4::
MouseClickDrag Left, 0, 0, 400, 0, 80, R
sleep, 500
MouseMove, -400, 0, 20, R
Exit

Numpad7::
MouseClickDrag Left, 0, 0, 400, 400, 80, R
sleep, 500
MouseMove, -400, -400, 20, R
Exit

Numpad9::
MouseClickDrag Left, 0, 0, -400, 400, 80, R
sleep, 500
MouseMove, 400, -400, 20, R
Exit

Numpad6::
MouseClickDrag Left, 0, 0, -400, 0, 80, R
sleep, 500
MouseMove, 400, 0, 20, R
Exit

Numpad8::
MouseClickDrag Left, 0, 0, 0, 400, 80, R
sleep, 500
MouseMove, 0, -400, 20, R
Exit

Numpad2::
MouseClickDrag Left, 0, 0, 0, -400, 80, R
sleep, 500
MouseMove, 0, 400, 20, R
Exit

Numpad3::
MouseClickDrag Left, 0, 0, -400, -400, 80, R
sleep, 500
MouseMove, 400, 400, 20, R
Exit

Numpad1::
MouseClickDrag Left, 0, 0, 400, -400, 80, R
sleep, 500
MouseMove, -400, 400, 20, R
Exit