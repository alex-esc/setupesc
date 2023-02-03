#Requires AutoHotkey v2.0

info_pic := "C:\setupesc\info.jpg"
; see below to edit pic

winTerminal := "C:\Users\Alex\AppData\Local\Microsoft\WindowsApps\wt.exe"
jackAudioPath := "C:\Program Files\JACK2\qjackctl\qjackctl.exe"
BehringerInterfacePath := "C:\Program Files\BEHRINGER\UMC_Audio_Driver\W10_x64\UMCAudioCplApp.exe"
pdPath := "C:\Users\Alex\Desktop\Pd.lnk"
purrDataPath := "C:\Program Files (x86)\Purr Data\bin\pd.exe"
maxMspPath := "C:\Program Files\Cycling '74\Max 8\Max.exe"
abletonPath := "C:\ProgramData\Ableton\Live 11.2.7\Program\Ableton Live 11 Suite.exe"
proToolsPath := "C:\Program Files\Avid\Pro Tools\ProTools.exe"
gitHubDesktop := "C:\Users\Alex\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
gitHub_Folder := "C:\Users\Alex\Documents\GitHub"
museScorePath := "C:\Program Files\MuseScore 4\bin\MuseScore4.exe"
sheetMusic_Folder := "C:\Users\Alex\Documents\MuseScore3\Partituras"
fermatta_folder := "C:\Users\Alex\Documents\fermatta"
whatsAppPath := "C:\Users\Alex\Desktop\WhatsAppAD.lnk"
telegramPath := "C:\Users\Alex\AppData\Roaming\Telegram Desktop\Telegram.exe"
olivePath := "C:\Program Files\Olive\olive-editor.exe"
KeePassPath := "C:\Users\Alex\Desktop\KeePassXC.lnk"

;Example
;#t:: run winTerminal

;#c::WinClose ; A ; Win+C to close

Capslock::AppsKey   ; unbind caps lock
+Capslock::Capslock ; bind caps to ALT+Capslock


; ALT + N = Ñ
;!n:: Send {Asc 164}    ; ñ
;!+n:: Send {Asc 165}   ; Ñ



; see shortcuts, info pic
#F12:: Run info_pic

	
;--------system shortcuts
    ;device manager
    #Numpad5:: Run "devmgmt.msc"
    ;sound I/O options
    #Numpad8:: Run "mmsys.cpl"
    ;sound blaster software
    ^#Numpad8:: Run "SBRcni.exe"
    ;Jack Audio, add path
    #Numpad7:: Run jackAudioPath
    ;Jack Audio, add path
    ^#Numpad7::Run BehringerInterfacePath

;software shortcuts

;---------------- programming shortcuts
    ;Windows Terminal
    #t:: run winTerminal
    ;github desktop
    #g:: run gitHubDesktop
    ;github folder
    ^#g:: run gitHub_Folder
    ;Pure Data vanilla
    #p:: run pdPath      
    ;Purr Data
    ^#p:: run purrDataPath      
    ;Max Msp
    ^+#p:: run maxMspPath

;---------------- internet shortcuts
    ;browser Firefox
    #b:: run "firefox.exe"
    ;browser Brave
    ^#b:: run "brave.exe"
    ;whatsapp client  aa
    #w:: run whatsAppPath ;"C:\Users\Alex\Desktop\WhatsAppAD.lnk" 
    ;telegram client
    ^#w:: run telegramPath

;---------------- tool shortcuts
    ;notepad++
    #n:: run "notepad++.exe"     
    ;olive editor
    #v:: run olivePath    
    ;KeePassXC
    #k:: run KeePassPath 

;---------------- music shortcuts

    ;ableton live
    #o:: run abletonPath      
    ;protools
    ^#o:: run proToolsPath     
    ;musescore
    #m:: run museScorePath
    ;musescore sheet music
    ^!#m:: run sheetMusic_Folder
    ;fermatta
    ^#m:: run fermatta_folder
        	











