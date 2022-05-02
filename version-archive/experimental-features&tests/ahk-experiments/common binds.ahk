#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#b::
    Run, firefox.exe
    return
	
+#b::
    Run, waterfox.exe
    return

^#b::
    Run, C:\Users\Alejandro\AppData\Local\Brave\Brave.exe
    return
	
#V::
    Run, C:\Users\Alejandro\AppData\Local\freetube\FreeTube.exe
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

#p::
	Run, C:\Program Files (x86)\gPodder\bin\gpodder.exe
    return

#r::
	Run, "C:\Program Files\Mozilla Firefox\firefox.exe" moz-extension://500e5bbb-17e1-42dc-8918-5649224c0653/rss.html
    return
	
	
~LWin Up:: return
~RWin Up:: return

