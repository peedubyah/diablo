#SingleInstance force
SetBatchLines, -1
SetKeyDelay, 20  ; Adjust the delay as needed (in milliseconds)
SetTitleMatchMode, 2  ; Allow partial matching of window titles
#IfWinActive ahk_class Diablo IV Main Window Class ahk_exe Diablo IV.exe

; Declare a toggle variable
toggle := false
sequenceCounter := 0  ; Initialize a counter for cycling through sequences

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

; When the script is toggled on, pressing the right mouse button also sends different sequences
RButton::
    if (toggle)
    {
        ; Increment the counter and reset it if it exceeds the number of sequences
        sequenceCounter++
        if (sequenceCounter > 3)
        {
            sequenceCounter := 1
        }

        ; Send different sequences based on the counter value
        if (sequenceCounter = 1)
        {
            Send, {w}{d}{s}{r}  ; First sequence
        }
        else if (sequenceCounter = 2)
        {
            Send, {s}{r}  ; Second sequence
        }
        else if (sequenceCounter = 3)
        {
            Send, {s}{r}{d}  ; Third sequence
        }
    }
    Send, {RButton}  ; Normal right-click action
return

#IfWinActive  ; End window-specific context
