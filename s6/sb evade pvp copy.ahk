; Declare a toggle variable
toggle := false

; Space bar toggles the script on/off
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

; When the script is toggled on, pressing the right mouse button also sends "a", "w", and "d"
Space::
    if (toggle)
    {
        Send, {r}{a}{w}{LShift}  ; Send "a", "w", and "d"
    }
    Send, {Space}  ; Normal right-click action
return
