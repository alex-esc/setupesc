cmd /c "taskkill /f /im explorer.exe && start explorer"

del "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\setupesc.exe"

@RD /S /Q "%UserProfile%\Documents\setupesc\"