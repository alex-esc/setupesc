Gui, Font, S30 CDefault, Verdana
Gui, Add, Text, x12 y39 w450 h110 +Center, Select an option

Gui, Font, s10, Verdana
Gui, Add, Text,, Begin installation:

Gui, Font, s10, Verdana
Gui, Add, Text,, Un install:

Folder = C:\Users\Alejandro\Documents\GitHub\setupesc\build
Gui, Font, S14 CDefault, Verdana
Gui, Add, DropDownList, x42 y189 w390 h80 vPFL

Loop, %Folder%\*
{
    GuiControl, , PFL, %A_LoopFileName%
    File%A_Index% := A_LoopFileName
}

Gui, Add, Button, x167 y299 w140 h40 gBtnGo, Go!

Gui, Show, x542 y240 h379 w479 , Welcome to Setupesc
return

; Button-label
BtnGo:
    Gui, Submit, NoHide
    MsgBox %PFL%
    Run, %Folder%\%PFL%
return


ExitApp