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
lastEvadePress := 0

; Define the hotkey for Left Mouse Button when the macro is active and Diablo IV is the active window
~LButton::
    if (toggle && WinActive("ahk_exe Diablo IV.exe")) {

        ; Send immediate "Shift K" key press
        SendInput, +k   
        lastEvadePress := A_TickCount

        ; Start spamming the Left Mouse button click
        Loop {
            if (!GetKeyState("LButton", "P")) {
                break
            }
            ; Send Left Mouse button click
            Click
            Sleep, 10  ; Adjust this delay as needed for optimal performance

            ; Check and send "Shift K" key press every 2.5 seconds
            if ((A_TickCount - lastEvadePress) > 2500) {
                SendInput, +k
                lastEvadePress := A_TickCount
            }
        }
    }
return
