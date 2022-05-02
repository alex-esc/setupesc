!m::
IfWinActive ahk_class CabinetWClass
{
WinGetClass explorerClass, A
ControlGetText currentPath, Edit1, ahk_class %explorerClass%
run C:\Users\Alejandro\Documents\GitHub\setupesc\batch-test\powershell.bat "%currentPath%"
}
return