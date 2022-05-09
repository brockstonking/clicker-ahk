#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

InputBox, ClickInterval, Click Interval, Repeat click after how many minutes?
num := ClickInterval
numInMs := num * 60000

MsgBox, , Click Location, Please click in the location you would like the repeating click to occur

#Persistent
SetTimer, DoClick, %numInMs%
return

DoClick:
CoordMode, mouse, screen
Click, %xPos%, %yPos%

^Escape::
ExitApp
return

~Lbutton::
{
   IfWinExist Click Location
   {
	coordmode, mouse, screen
	MouseGetPos, xPos, yPos
	WinClose
	MsgBox Click will occur every %ClickInterval% minute(s) at position (%xPos%, %yPos%). You may close this window.
	return
   }
   else
   {
	return
   }
}
return


