#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/*
#Escape::  ;shutdown
MsgBox, 4, shutdown, Do you want to turn off your computer?
IfMsgBox, Yes, run, calc
Return


#|::      ;suspend
MsgBox, 4, sleep, go to sleep?
IfMsgBox, Yes, run, calc
Return
*/


#Backspace::  ;shutdown
MsgBox, 4, shutdown, Do you want to turn off your computer?
IfMsgBox, Yes, run, shutdown -s -f -t 0
Return


#Escape::      ;suspend
MsgBox, 4, sleep, go to sleep?
IfMsgBox, Yes, run, rundll32.exe powrprof.dll,SetSuspendState 0,1,0
Return

