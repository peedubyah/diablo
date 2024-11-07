#Persistent
#SingleInstance Force

toggle := false ; Variable to keep track of the toggle state

MButton::
    toggle := !toggle ; Toggle the state between true and false
    if (toggle) {
        SoundBeep, 1000, 100 ; Higher pitch beep to indicate activation
        SetTimer, GameMacro, 10 ; Set a timer to loop the macro
    } else {
        SoundBeep, 500, 100 ; Lower pitch beep to indicate deactivation
        SetTimer, GameMacro, Off ; Turn off the timer
    }
return

GameMacro:
    ; Check if Diablo IV is the active window (with possible space in the name)
    IfWinActive, ahk_exe Diablo IV.exe
    {
        Click, Left
        Sleep, 50
        Click, Right
        Sleep, 20
		Click, Right
		Sleep, 20
		Click, Right
		Sleep, 20
        Send, a
        Sleep, 50
        Send, w
        Sleep, 50
        Send, d
        Sleep, 50
		Send, r 
		Sleep, 50
		Send, {Space}
		Sleep, 50
    }
return
