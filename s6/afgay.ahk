; Define the window title for Diablo IV
gameWindow := "ahk_exe Diablo IV.exe"

; Initialize the toggle variable
toggle := false

; F1 to toggle on/off
F1::
{
    toggle := !toggle  ; Toggle the value (on/off)

    if (toggle)
    {
        SetTimer, SendKeys, 100  ; Start sending keys every 100 ms
    }
    else
    {
        SetTimer, SendKeys, Off  ; Stop sending keys
    }
    return
}

; Function to send "q" and "r"
SendKeys:
{
    ; Send "q" to the Diablo IV window
    ControlSend,, q, %gameWindow%
    Sleep, 100  ; Pause for half a second

    ; Send "r" to the Diablo IV window
    ControlSend,, r, %gameWindow%
    Sleep, 100  ; Pause for half a second
}
