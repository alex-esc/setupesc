/*





C:\Users\WORKS

C:\Users\WORKS

powershell -Command "(gc myFile.txt) -replace 'foo', 'bar' | Out-File myFile.txt"

powershell -Command "(gc %UserProfile%\Documents\setupesc\setupesc.ahk) -replace 'C:\Users\WORKS', 'C:\Users\WORKS' | setupesc-properly-configured.ahk"









# setupesc by alex-esc

**version date: sep/25/18**

This is script was formed by cloning the former keybinds.ahk and adding some extra features from the experimental feature list, written on AutoHotkey under the GPLv3.

Everything here is a collection of small tweaks to the default windows 10 experience with the goal to enhance productivity and ease of use with emphasis on using the keyboard as much as possible.

Binary version also available on my github.

## Credits & contributions:

 * Lexikos from the AutoHotkey Foundation
 * MsgBox
 * leekohlbradley 

## Keybind Listing

This are the default keybindings, you can change them at any time by editing this file

|      Key combination       |             Function               |
|:---------------------------|:----------------------------------:|
| Windows key                | nothing                            |
| Win + c                    | Alt+f4 / close program             |
| ALT + Capslock             | CapsLock                           |
| CapsLock                   | Mouse2                             |
| alt + n                    | �                                  |
| Alt + n                    | create a new document here         |
| win+numpad9                | set powerplan to high              |
| win + numpad6              | set powerplan to mid               |
| win + numpad3              | set powerplan to low               |
| win + NumpadAdd            | Enable mouse acceleration          |
| win + NumpadSubstract      | Disable mouse acceleration         |
| win + NumpadEnter          | Toggle mouse acceleration          |
| win + numpad8              | open windows audio settings        |
| Ctrl + win + numpad8       | open sound blaster audio settings  |
| win + numpad7              | open showoff                       |
| Win + t                    | hide taskbar                       |
| Win + [                    | insert Spanish accent              |
| Win + b                    | Firefox                            |
| SHIFT + Win + b            | Waterfox                           |
| CONTROL + Win + b          | Brave                              |
| CONTROL + ALT + f1         | Tor Browser                        |
| Win + v                    | FreeTube                           |
| Win + n                    | Notepad++                          |
| Win + k                    | KeePassXC                          |
| Win + m                    | Thunderbird                        |
| Win + g                    | Github Desktop                     |
| Win + a                    | Adobe Premiere Pro                 |
| SHIFT + Win + a            | Adobe Audition                     |
| CONTROL + Win + a          | AfterFX                            |
| Win + d                    | Ableton Live                       |
| CONTROL + Win + d          | audacity                           |
| Win + l                    | TeXworks                           |
| CONTROL + Win + l          | texmaker                           |
| Win + p                    | Gpodder                            |
| Win + i                    | itunes                             |
| left Ctrl + g              | github                             |
| left Ctrl + r              | reddit                             |
| left Ctrl + b              | blackboard                         |
| left Ctrl + v              | netflix                            |
| left Ctrl + y              | youtube                            |
| left Ctrl + left Shift + d | Desktop folder                     |
| left Ctrl + left Shift + v | Videos folder                      |
| left Ctrl + left Shift + i | Images folder                      |
| left Ctrl + left Shift + j | Downloads folder                   |
| left Ctrl + left Shift + g | GitHub folder                      |
| left Ctrl + left Shift + n | Notebooks folder                   |
| left Ctrl + left Shift + l | LaTeX Files folder                 |
| left Ctrl + left Shift + m | Markdown folder                    |




## Default programs

This script assumes the following programs, some of them assume the default installation path, this means that they will not work until you change them to the correct path.

**List of programs you need installed anywhere**

* Firefox
* Notepad++
* Waterfox
* Brave dev (beta version)
* Thunderbird
* iTunes

**List of programs that need specific paths**

* Brave browser (release version)
* FreeTube
* KeePassXC
* G-Podder

In the future this script will include a gui for updating paths, for now you must dive in the source code.

**Specific paths that need modification**

to modify them, just do a search for the following paths and replace them with your own.

* C:\Users\WORKS\AppData\Local\Brave\Brave.exe
* C:\Users\WORKS\AppData\Local\freetube\FreeTube.exe
* C:\Program Files\KeePassXC\KeePassXC.exe
* C:\Program Files (x86)\gPodder\bin\gpodder.exe

## Experimental features

Some features not fully developed or realized are also available on my github under the folder called ahk-experiments, these are separate files not included here, such features include shortcuts for more programs.

Some of these features will eventually find their way onto this master script.

## License

GNU GENERAL PUBLIC LICENSE: Version 3, 29 June 2007

Setupesc Copyright (C) 2018  by alex-esc (Alejandro Escalante)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or 
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

Full license included and also on <http://www.gnu.org/licenses/>.

*/


#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

Capslock::AppsKey   ; unbind caps lock
+Capslock::Capslock ; bind caps to ALT+Capslock

!n::
{
SendInput {�}  ; look for alt+n and bind to �
}
return

#b::
    Run, firefox.exe
    return
	
+#b::
    Run, waterfox.exe
    return

^#b::
    Run, C:\Users\WORKS\AppData\Local\Brave\Brave.exe
    return

^!f1::
    Run, C:\Users\WORKS\Desktop\stuff\Tor Browser\Browser\firefox.exe
Return
	
#V::
    Run, C:\Users\WORKS\AppData\Local\freetube\FreeTube.exe
    return
	
#n::
	Run, notepad++.exe
    return

#k::
	Run, C:\Program Files\KeePassXC\KeePassXC.exe
    return

#m::
	Run, thunderbird.exe
    return

#g::
	Run, C:\Users\WORKS\AppData\Local\GitHubDesktop\GitHubDesktop.exe
    return

#p::
	Run, C:\Program Files (x86)\gPodder\bin\gpodder.exe
    return

#i::
    Run, itunes.exe
    return
	
#h::
    Run, C:\Users\WORKS\AppData\Local\WhatsApp\WhatsApp.exe
    return
	
+#h::
    Run, C:\Users\WORKS\AppData\Local\Programs\signal-desktop\Signal.exe
    return

^#h::
    Run, C:\Users\WORKS\AppData\Roaming\Telegram Desktop\Telegram.exe
    return
	
#a::
    Run, C:\Program Files\Adobe\Adobe Premiere Pro CC 2017\Adobe Premiere Pro.exe
    return
	
+#a::
    Run, C:\Program Files\Adobe\Adobe Audition CC 2015\Adobe Audition CC.exe
    return

^#a::
    Run, C:\Program Files\Adobe\Adobe After Effects CC 2015\Support Files\AfterFX.exe
    return
	
#d::
    Run, C:\ProgramData\Ableton\Live 10 Suite\Program\Ableton Live 10 Suite.exe
    return
	
+#d::
    Run, C:\Program Files (x86)\Audacity\audacity.exe
   return

#l::
    Run, C:\Program Files (x86)\TeXworks\TeXworks.exe
    return
	
+#l::
    Run, C:\Program Files (x86)\Texmaker\texmaker.exe
    return

>^s::
    Run, Brave.exe https://miscursos.tec.mx/ultra/stream
    return

>^r::
    Run, Brave.exe https://old.reddit.com/
    return

>^y::
    Run, Brave.exe https://www.youtube.com/
    return

>^v::
    Run, Brave.exe https://www.netflix.com/browse
    return

>^g::
    Run, Brave.exe https://github.com/
    return

>^>+d::
  Run, Explorer C:\Users\WORKS\Desktop
Return	

>^>+v::
  Run, Explorer C:\Users\WORKS\Videos
Return	


>^>+g::
  Run, Explorer C:\Users\WORKS\Documents\GitHub
Return	


>^>+n::
  Run, Explorer C:\Users\WORKS\Documents\MEGAsync\Notebooks
Return	


>^>+l::
  Run, Explorer C:\Users\WORKS\Documents\LaTeX Files
Return	


>^>+m::
  Run, Explorer C:\Users\WORKS\Documents\markdown
Return	


>^>+i::
  Run, Explorer C:\Users\WORKS\Pictures
Return	

>^>+j::
  Run, Explorer C:\Users\WORKS\Downloads
Return	



~LWin Up:: return
~RWin Up:: return

/*

power plans:

GUID de plan de energ�a: 381b4222-f694-41f0-9685-ff5bb260df2e  (Equilibrado) *
GUID de plan de energ�a: 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c  (Alto rendimiento)
GUID de plan de energ�a: a1841308-3541-4fab-bc81-f71556f20b4a  (Economizador)
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

� � � � � � � � � � � � � � � �

hotkey "a" = "�"
hotkey "A" = "�"
hotkey "2" = "�"
hotkey """ = "�"
...etc.

Left Alt plus numpad number:
� 160    � 193    � 164    � 165
� 130    � 144    � 168    � 173
� 161    � 0205   � 129    � 154
� 162    � 0211
� 163    � 0218

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


; This is part of my AutoHotKey [1] script. When you are in Windows Explorer it
; allows you to press Alt+N and type a filename, and that file is created
; in the current directory and opened in the appropriate editor (usually
; [gVim](http://www.vim.org/) in my case, but it will use whatever program is
; associated with the file in Windows Explorer).

; This is much easier than the alternative that I have been using until now:
; Right click > New > Text file, delete default filename and extension (which
; isn't highlighted in Windows 7), type the filename, press enter twice.
; (Particularly for creating dot files like ".htaccess".)

; Credit goes to aubricus [2] who wrote most of this and davejamesmiller [3] who
; added the 'IfWinActive' check and 'Run %UserInput%' at the end. Also to 
; syon [4] who changed regexp to make script work on non-english versions
; of Windows. And I changed the way how script gets full path to make it
; compatible with Windows 10 and also changed hotkey to Alt+N

; [1]: http://www.autohotkey.com/
; [2]: https://gist.github.com/1148174
; [3]: https://gist.github.com/1965432
; [4]: https://github.com/syon/ahk/blob/master/NewFile/NewFile.ahk


; Only run when Windows Explorer or Desktop is active
; Alt+N
#IfWinActive ahk_class CabinetWClass
!SC031::
#IfWinActive ahk_class ExploreWClass
!SC031::
#IfWinActive ahk_class Progman
!SC031::
#IfWinActive ahk_class WorkerW
!SC031::

    ; Get full path from open Explorer window
    WinGetText, FullPath, A

    ; Split up result (it returns paths seperated by newlines)
    StringSplit, PathArray, FullPath, `n
	
	; Find line with backslash which is the path
	Loop, %PathArray0%
    {
        StringGetPos, pos, PathArray%a_index%, \
        if (pos > 0) {
            FullPath:= PathArray%a_index%
            break
        }
    }
	
    ; Clean up result
    FullPath := RegExReplace(FullPath, "(^.+?: )", "")
	StringReplace, FullPath, FullPath, `r, , all


    ; Change working directory
    SetWorkingDir, %FullPath%

    ; An error occurred with the SetWorkingDir directive
    If ErrorLevel
        Return

    ; Display input box for filename
    InputBox, UserInput, New File, , , 400, 100, , , , ,

    ; User pressed cancel
    If ErrorLevel
        Return

    ; Create file
    FileAppend, , %UserInput%

    ; Open the file in the appropriate editor
    Run %UserInput%

    Return

#IfWinActive






;000000000000000000000000000
;000000000000000000000000000
;
; DEV SHORTCUTS ALWAYS PUT THIS AT THE END
;
;000000000000000000000000000
;000000000000000000000000000

^!f11::
    Run, shell:startup
Return

^!f12::
MsgBox, 4, Close Setupesc? , if you want to restart setupesc go to 'USERNAME\my documents\setupesc'
IfMsgBox, Yes, ExitApp
Return