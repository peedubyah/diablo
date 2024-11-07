#SingleInstance force
SetBatchLines, -1
SetKeyDelay, 20  ; Adjust the delay as needed (in milliseconds)
SetTitleMatchMode, 2  ; Allow partial matching of window titles
#IfWinActive ahk_class Diablo IV Main Window Class ahk_exe Diablo IV.exe

; Declare a toggle variable
toggle := false

; Middle mouse button toggles the script on/off
MButton::
    toggle := !toggle
    if (toggle)
    {
        SoundBeep, 500, 100  ; Beep sound for "on" (higher pitch)
    }
    else
    {
        SoundBeep, 400, 100   ; Beep sound for "off" (lower pitch)
    }
return

; When the script is toggled on, pressing the right mouse button also sends "a", "w", "d", "s"
RButton::
    if (toggle)
    {
        Send, {a}{w}{d}{r}  ; Send "a", "w", "d", and "r"
    }
    Send, {RButton}  ; Normal right-click action
return

#IfWinActive  ; End window-specific context
