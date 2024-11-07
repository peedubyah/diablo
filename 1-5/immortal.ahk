#Persistent
#NoEnv
#SingleInstance, Force

; Toggle flag
toggle := false

; Middle mouse button toggles the macro on/off
MButton::
    toggle := !toggle
    if (toggle) {
        SoundBeep, 750, 100  ; Softer beep to indicate the macro is ON
    } else {
        SoundBeep, 600, 100  ; Softer beep to indicate the macro is OFF
    }
return

; Variables to track the timing of key presses
lastRPress := 0
lastWPress := 0
lastSPress := 0

; Define the hotkey for Left Mouse Button when the macro is active and Diablo IV is the active window
~LButton::
    if (toggle && WinActive("ahk_exe Diablo IV.exe")) {
        ; Record the start time
        startTime := A_TickCount

        ; Immediate key presses
        SendInput, r
        lastRPress := A_TickCount
        SendInput, w
        lastWPress := A_TickCount
        SendInput, s
        lastSPress := A_TickCountrws

        ; Start spamming the Left Mouse button click
        Loop {
            if (!GetKeyState("LButton", "P")) {
                break
            }
            ; Send Left Mouse button click
            Click
            Sleep, 50  ; Adjust this delay as needed for optimal performance

            ; Check and send "r" key press every 6 seconds
            if ((A_TickCount - lastRPress) > 6000) {
                SendInput, r
                lastRPress := A_TickCount
            }

            ; Check and send "w" key press every 8 seconds
            if ((A_TickCount - lastWPress) > 8000) {
                SendInput, w
                lastWPress := A_TickCount
            }

            ; Check and send "s" key press every 8 seconds
            if ((A_TickCount - lastSPress) > 8000) {
                SendInput, s
                lastSPress := A_TickCount
            }
        }
    }
return
