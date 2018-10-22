;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; ___   _  _______  __   __  _______  ___   __    _  ______   _______         __   __  _______        ____  
;|   | | ||       ||  | |  ||  _    ||   | |  |  | ||      | |       |       |  | |  ||       |      |    | 
;|   |_| ||    ___||  |_|  || |_|   ||   | |   |_| ||  _    ||  _____| ____  |  |_|  ||___    |       |   | 
;|      _||   |___ |       ||       ||   | |       || | |   || |_____ |____| |       | ___|   |       |   | 
;|     |_ |    ___||_     _||  _   | |   | |  _    || |_|   ||_____  |       |       ||___    | ___   |   | 
;|    _  ||   |___   |   |  | |_|   ||   | | | |   ||       | _____| |        |     |  ___|   ||   |  |   | 
;|___| |_||_______|  |___|  |_______||___| |_|  |__||______| |_______|         |___|  |_______||___|  |___| 
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~30/oct/2017~~~~~~~~~~~~~~~~~~~~~~~~~~~
;changed bids to use more intuativce keys
;fixed binds that interfeer with zoom ina nd out on chrome
;


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::Esc   ; binds capslock to esc
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
