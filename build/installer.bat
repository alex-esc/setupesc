copy "%cd%\setupesc.exe" "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

md %SystemRoot%\explorer.exe %UserProfile%\Documents\setupesc

xcopy /s %cd% %UserProfile%\Documents\setupesc


start "" https://alex-esc.github.io/getsetupesc/documentation/tutorial.html

start "" https://alex-esc.github.io/getsetupesc/documentation/changelog.html