;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; ___   _  _______  __   __  _______  ___   __    _  ______   _______         __   __  _______        ____  
;|   | | ||       ||  | |  ||  _    ||   | |  |  | ||      | |       |       |  | |  ||       |      |    | 
;|   |_| ||    ___||  |_|  || |_|   ||   | |   |_| ||  _    ||  _____| ____  |  |_|  ||___    |       |   | 
;|      _||   |___ |       ||       ||   | |       || | |   || |_____ |____| |       | ___|   |       |   | 
;|     |_ |    ___||_     _||  _   | |   | |  _    || |_|   ||_____  |       |       ||___    | ___   |   | 
;|    _  ||   |___   |   |  | |_|   ||   | | | |   ||       | _____| |        |     |  ___|   ||   |  |   | 
;|___| |_||_______|  |___|  |_______||___| |_|  |__||______| |_______|         |___|  |_______||___|  |___| 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~30/oct/2017~~~~~~~~~~~~~~~~~~~~~~~~~~~
;


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::AppsKey   ; unbind caps lock
+Capslock::Capslock ; bind caps to ALT+Capslock

!n::
{
SendInput {ñ}  ; look for alt+n and bind to ñ
}
return


/*

power plans:

GUID de plan de energía: 381b4222-f694-41f0-9685-ff5bb260df2e  (Equilibrado) *
GUID de plan de energía: 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c  (Alto rendimiento)
GUID de plan de energía: a1841308-3541-4fab-bc81-f71556f20b4a  (Economizador)
*/


#Numpad9::Run, powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
#Numpad6::Run, powercfg -s 381b4222-f694-41f0-9685-ff5bb260df2e
#Numpad3::Run, powercfg -s a1841308-3541-4fab-bc81-f71556f20b4a



WhatIsIt?:
    SPI_GETMOUSE(accel, low, high)
    MsgBox Mouse acceleration settings-`n  accel:`t%accel%`n  low:`t%low%`n  high:`t%high%
return

#NumpadAdd::    ; Enable acceleration.
#NumpadSub::    ; Disable acceleration.
    SPI_SETMOUSE(A_ThisHotkey="#NumpadAdd") ; i.e. 1 if ^NumpadAdd, 0 otherwise.
    gosub WhatIsIt?
return

#NumpadEnter::  ; Toggle acceleration.
    if SPI_GETMOUSE(accel)
        SPI_SETMOUSE(!accel)
    ;else an error occurred.
    gosub WhatIsIt?
return


; Get mouse acceleration level and low/high thresholds.
; Returns true on success and false on failure.
SPI_GETMOUSE(ByRef accel, ByRef low="", ByRef high="")
{
    VarSetCapacity(vValue, 12)
    if !DllCall("SystemParametersInfo", "uint", 3, "uint", 0, "uint", &vValue, "uint", 0)
        return false ; Fail.
    low := NumGet(vValue, 0)
    high := NumGet(vValue, 4)
    accel := NumGet(vValue, 8)
    return true
}

; Set mouse acceleration level and low/high thresholds.
; Supplies standard default values for low/high if omitted.
; fWinIni:  0 or one of the following values:
;           1 to update the user profile
;           2 to notify applications
;           3 to do both.
; Returns true on success and false on failure.
SPI_SETMOUSE(accel, low="", high="", fWinIni=0)
{
    VarSetCapacity(vValue, 12)
    , NumPut(accel
    , NumPut(high!="" ? high : accel ? 10 : 0
    , NumPut(low!="" ? low : accel ? 6 : 0, vValue)))
    return 0!=DllCall("SystemParametersInfo", "uint", 4, "uint", 0, "uint", &vValue, "uint", 0)
}


#Numpad8::
    Run, mmsys.cpl
    return
	
	


^#Numpad8::
    Run, SBRcni.exe
    return




#Numpad7::StartClose("ShowOff.exe")

StartClose(exe)
{
Process, Exist, %exe% ; check to see if program is running
If (ErrorLevel = 0) ; If program is not running -> Run
    {
    Run, %exe%
    }
Else ; If program is running, ErrorLevel = process id for the target program -> Close
    {
    Process, Close, %ErrorLevel%
    }
}


#c::WinClose, A ; Win+C




#SingleInstance Force

#t:: ; Alt+T Hotkey
WinExist("ahk_class Shell_TrayWnd")
ControlGetPos,,,, hTB, ahk_class Shell_TrayWnd  ; Get Taskbar Height
t := !t  ; Toggle Var (0 or 1)

VarSetCapacity(area, 16)
WinGetActiveStats, AT, AW, AH, AX, AY  ; Get Active Window Stats

If (t = "1") {  ; Hide
	Top := A_ScreenHeight
	WinHide, ahk_class Shell_TrayWnd  ; Hide Taskbar
	WinHide, Start ahk_class Button  ; Hide Start Button
	WinMove, %AT%,,,0,, %A_ScreenHeight%  ; Increase Active Window's Height
} Else {  ; Show
	Top := A_ScreenHeight - hTB  ; Screen Height - Taskbar Height
	WinShow, ahk_class Shell_TrayWnd  ; Show Taskbar
	WinShow, Start ahk_class Button  ; Show Start Button
	WinMove, %AT%,,,0,, (A_ScreenHeight-hTB)  ; Decrease Active Window's Height
}

DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 0, UInt,4, UInt,0)
DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 4, UInt,4, UInt,0)
DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 8, UInt,4, UInt,A_ScreenWidth)
DllCall("ntoskrnl.exe\RtlFillMemoryUlong", UInt,&area + 12,UInt,4, UInt,Top)
DllCall("SystemParametersInfo", UInt,0x2F, UInt,0, UInt,&area, UInt,0)
return





;_____________________________
; \____Spanish Accents_____/

; Coded by MsgBox.                                        Last Edit:- 03/24/07

/*

Insert Spanish accents within 3 seconds of pressing hotkey.

á Á é É í Í ó Ó ú Ú ñ Ñ ¿ ¡ ü Ü

hotkey "a" = "á"
hotkey "A" = "Á"
hotkey "2" = "ü"
hotkey """ = "Ü"
...etc.

Left Alt plus numpad number:
á 160    Á 193    ñ 164    Ñ 165
é 130    É 144    ¿ 168    ¡ 173
í 161    Í 0205   ü 129    Ü 154
ó 162    Ó 0211
ú 163    Ú 0218

*/

#[::
StringCaseSense, On
Input key, L1 T3 C, {Space}?!, a,A,e,E,i,I,o,O,u,U,n,N,2,",1,/
If ErrorLevel = EndKey:Space
{
   ClipSaved := ClipboardAll
   Clipboard=
   Send +{Left}^c
   key = %Clipboard%
   Replace(key)
   Clipboard = %ClipSaved%
   ClipSaved=
   Return
   }
If ErrorLevel = EndKey:?
{
   Send ^c{Asc 168}^v?
   Return
   }
If ErrorLevel = EndKey:!
{
   Send ^c{Asc 173}^v{!}
   Return
   }
If ErrorLevel <> Match
   Return

Replace(key)

Replace(key)
{
   IfEqual key, a, Send {Asc 160}
   IfEqual key, A, Send {Asc 0193}
   IfEqual key, e, Send {Asc 130}
   IfEqual key, E, Send {Asc 144}
   IfEqual key, i, Send {Asc 161}
   IfEqual key, I, Send {Asc 0205}
   IfEqual key, o, Send {Asc 162}
   IfEqual key, O, Send {Asc 0211}
   IfEqual key, u, Send {Asc 163}
   IfEqual key, U, Send {Asc 0218}
   IfEqual key, n, Send {Asc 164}
   IfEqual key, N, Send {Asc 165}
   IfEqual key, 2, Send {Asc 129}
   IfEqual key, ", Send {Asc 154}
   Send {Right}
   IfEqual key, /, Send {Asc 168}?{left 1}
   IfEqual key, 1, Send {Asc 173}{!}{left 1}
   
   }
Return