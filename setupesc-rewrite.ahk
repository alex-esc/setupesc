;setting up paths

info_pic := "C:\setupesc\info.jpg"
; see below to edit pic

jackAudioPath := "C:\Program Files\JACK2\qjackctl\qjackctl.exe"
BehringerInterfacePath := "C:\Program Files\BEHRINGER\UMC_Audio_Driver\W10_x64\UMCAudioCplApp.exe"
pdPath := "C:\Users\Alex\Desktop\Pd.lnk"
purrDataPath := "C:\Program Files (x86)\Purr Data\bin\pd.exe"
maxMspPath := "C:\Program Files\Cycling '74\Max 8\Max.exe"
abletonPath := "C:\ProgramData\Ableton\Live 11.1 Suite\Program\Ableton Live 11 Suite.exe"
proToolsPath := "C:\Program Files\Avid\Pro Tools\ProTools.exe"
gitHubDesktop := "C:\Users\Alex\AppData\Local\GitHubDesktop\GitHubDesktop.exe"
gitHub_Folder := "C:\Users\Alex\Documents\GitHub"
museScorePath := "C:\Program Files\MuseScore 3\bin\MuseScore3.exe"
sheetMusic_Folder := "C:\Users\Alex\Documents\MuseScore3\Partituras"
fermatta_folder := "C:\Users\Alex\Documents\fermatta"
whatsAppPath := "C:\Users\Alex\Desktop\WhatsAppAD.lnk"
telegramPath := "C:\Users\Alex\AppData\Roaming\Telegram Desktop\Telegram.exe"
olivePath := "C:\Program Files\Olive\olive-editor.exe"
KeePassPath := "C:\Users\Alex\Desktop\KeePassXC.lnk"


/*
;unbind WINDOWS key
~LWin Up::
~RWin Up::
*/

#c::WinClose, A ; Win+C to close

Capslock::AppsKey   ; unbind caps lock
+Capslock::Capslock ; bind caps to ALT+Capslock


; ALT + N = Ñ
!n:: Send {Asc 164}    ; ñ
!+n:: Send {Asc 165}   ; Ñ


; see shortcuts, info pic
#F12::
    Run, %info_pic%
	return
	
;--------system shortcuts

    ; device manager
    #Numpad5::
        Run, devmgmt.msc
        return

    ; sound I/O options
    #Numpad8::
        Run, mmsys.cpl
        return
        
    ; sound blaster software
    ^#Numpad8::
        Run, SBRcni.exe
        return

    ; Jack Audio, add path
    #Numpad7::
        Run, %jackAudioPath%
        return

    ; Jack Audio, add path
    ^#Numpad7::
        Run, %BehringerInterfacePath%
        return


;---------- software shortcuts


;---------------- programming shortcuts

    ;github desktop
    #g::
        run, %gitHubDesktop%
        return

    ;github folder
    ^#g::
        run, %gitHub_Folder%
        return

    ;Pure Data vanilla
    #p::
        run, %pdPath%
        return

    ;Purr Data
    ^#p::
        run, %purrDataPath%
        return

    ;Max Msp
    ^+#p::
        run, %maxMspPath%
        return

;---------------- internet shortcuts

    ;browser Firefox
    #b::
        run, firefox.exe
        return

    ;browser Brave
    ^#b::
        run, brave.exe
        return
        
    ;whatsapp client  aa
    #w::
        run, %whatsAppPath% 
        return
        ;"C:\Users\Alex\Desktop\WhatsAppAD.lnk" 


    ;telegram client
    ^#w::
        run, %telegramPath%
        return	
	



;---------------- tool shortcuts

    ;notepad++
    #n::
        run, notepad++.exe
        return
        
    ;olive editor
    #v::
        Run, %olivePath% 
        return
    
    ;KeePassXC
    #k::
        Run, %KeePassPath% 
        return


        
	
;---------------- music shortcuts

    ;ableton live
    #o::
        run, %abletonPath%
        return	
        
    ;protools
    ^#o::
        run, %proToolsPath%
        return	
        
    ;musescore
    #m::
        run, %museScorePath%
        return	

    ;musescore sheet music
    ^!#m::
        run, %sheetMusic_Folder%
        return	

    ;fermatta
    ^#m::
        run, %fermatta_folder%
        return	

















;--------------- long functions

;alt+N new file


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



/*

power plans:

GUID de plan de energía: 381b4222-f694-41f0-9685-ff5bb260df2e  (Equilibrado) *
GUID de plan de energía: 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c  (Alto rendimiento)
GUID de plan de energía: a1841308-3541-4fab-bc81-f71556f20b4a  (Economizador)
*/


#Numpad9::Run, powercfg -s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
#Numpad6::Run, powercfg -s 381b4222-f694-41f0-9685-ff5bb260df2e
#Numpad3::Run, powercfg -s a1841308-3541-4fab-bc81-f71556f20b4a




/*
info layout source
http://www.keyboard-layout-editor.com/#/



["Esc",{x:1},"F1","F2","F3","F4",{x:0.5},"F5","F6","F7","F8",{x:0.5},"F9","F10","F11",{c:"#00b2ff"},"F12\nImage\n\n\n\n\nHelp",{x:0.25,c:"#cccccc"},"PrtSc","Scroll Lock","Pause\nBreak"],
[{y:0.5},"~\n`","!\n1","@\n2","#\n3","$\n4","%\n5","^\n6","&\n7","*\n8","(\n9",")\n0","_\n-","+\n=",{w:2},"Backspace",{x:0.25},"Insert","Home","PgUp",{x:0.25},"Num Lock","/","*","-"],
[{w:1.5},"Tab","Q",{c:"#d42626",f:2},"W\nTelegram\n\n\n\n\nWhatsapp",{c:"#cccccc",f:3},"E","R","T","Y","U","I",{c:"#a161ff"},"O\nProTools\n\n\n\n\nAbleton",{c:"#00ff25"},"P\nMax 8\n\n\n\n\nPd/Purr",{c:"#cccccc"},"{\n[","}\n]",{w:1.5},"|\n\\",{x:0.25},"Delete","End","PgDn",{x:0.25,c:"#a161ff"},"7\nDAC\n\n\n\n\nJack",{c:"#00b2ff"},"8\nsBlast\n\n\n\n\nAudio",{c:"#569aba"},"9\nHigh\n\n\n\n\nPwr",{c:"#cccccc",h:2},"+"],
[{w:1.75},"Caps Lock","A","S","D","F",{c:"#00ff25"},"G\nFolder\n\n\n\n\nGitHub",{c:"#cccccc"},"H","J",{c:"#f8fc35"},"K\n\n\n\n\n\nKPass",{c:"#cccccc"},"L",":\n;","\"\n'",{w:2.25},"Enter",{x:3.5},"4\n←",{c:"#00b2ff"},"5\nMnger\n\n\n\n\nDevice",{c:"#569aba"},"6\nMed\n\n\n\n\nPwr"],
[{c:"#cccccc",w:2.25},"Shift","Z","X","C",{c:"#f8fc35"},"V\n\n\n\n\n\nOlive",{c:"#d42626"},"B\nBrave\n\n\n\n\nFirefox",{c:"#f8fc35"},"N\nEditor\n\n\n\n\nText",{c:"#a161ff",t:"000000"},"M\nFermatt\n\n\n\n\nMuse",{c:"#cccccc",t:"#000000"},"<\n,",">\n.","?\n/",{w:2.75},"Shift",{x:1.25},"↑",{x:1.25},"1\nEnd","2\n↓",{c:"#569aba"},"3\nLow\n\n\n\n\nPwr",{c:"#cccccc",h:2},"Enter"],
[{w:1.25},"Ctrl",{w:1.25},"Win",{w:1.25},"Alt",{a:7,w:6.25},"",{a:4,w:1.25},"Alt",{w:1.25},"Win",{w:1.25},"Menu",{w:1.25},"Ctrl",{x:0.25},"←","↓","→",{x:0.25,w:2},"0\nIns",".\nDel"]


*/