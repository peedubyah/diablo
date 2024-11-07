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
        SetTimer, SendKeys, 100  ; Start sending inputs every 100 ms (.1 second)
    }
    else
    {
        SetTimer, SendKeys, Off  ; Stop sending inputs
    }
    return
}

; Function to send RButton, A, W, and D
SendKeys:
{
    ; Send right mouse button (RButton) click to the Diablo IV window
    ControlClick, , %gameWindow%, , Right, 1
    Sleep, 100  ; Pause for half a second

    ; Send "A" to the Diablo IV window
    ControlSend,, a, %gameWindow%
    Sleep, 100  ; Pause for half a second

    ; Send "W" to the Diablo IV window
    ControlSend,, w, %gameWindow%
    Sleep, 100  ; Pause for half a second

    ; Send "D" to the Diablo IV window
    ControlSend,, d, %gameWindow%
    Sleep, 00  ; Pause for half a second
}
