#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Capslock::return   ; unbind caps lock
+Capslock::Capslock ; bind caps to ALT+Capslock

!n::
{
SendInput {ñ}  ; look for alt+n and bind to ñ
}
return

;=================================
; Volume Control with Visual Feedback
;
!WheelUP::
!WheelDown::

mixer=Volume Mixer
mixeropened := false

Suspend, On
loop
	{
	alt_down := GetKeyState("LAlt", "P")
			
            if(mixeropened=false) ; executes only first time in loop
            {
                Run C:\Windows\System32\SndVol.exe
                Sleep 100
                
                WinGetPos,,, Width, Height,%mixer%
                WinMove,%mixer%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
                
                WinActivate,%mixer%
                WinWait,%mixer%
                mixeropened := true
            }
             
			 
			 
		 
	if(alt_down=false)
			{
				Suspend off
				WinClose,%mixer%
				Exit
			}
				
				
	}

