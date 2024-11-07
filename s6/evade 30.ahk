; Press F2 to start or stop the mouse movement, spacebar presses, and looping.
toggle := false
centerX := 958   ; X-coordinate of the new center
centerY := 508   ; Y-coordinate of the new center

; Predefined coordinates for 30 degrees and 210 degrees at 150 pixels from the center
xCoord30 := 1087  ; X coordinate for 30-degree position
yCoord30 := 433   ; Y coordinate for 30-degree position
xCoord210 := 828  ; X coordinate for 210-degree position
yCoord210 := 583  ; Y coordinate for 210-degree position

F2::
    toggle := !toggle
    if (toggle) {
        SetTimer, MoveMouseLoop, 1000 ; Set a 1-second interval between movements
    } else {
        SetTimer, MoveMouseLoop, Off
    }
return

MoveMouseLoop:
    ; Move the mouse to the center of the screen
    MouseMove, %centerX%, %centerY%, 0 ; Instantly move to the center

    ; Move the mouse to the 30-degree position (predefined coordinates)
    MouseMove, %xCoord30%, %yCoord30%, 0 ; Instantly move to 30-degree position

    ; Send two presses of the spacebar with a 100ms delay between them
    Send, {Space}
    Sleep, 100
    Send, {Space}

    ; Small delay to ensure the game registers the action
    Sleep, 200

    ; Move the mouse back to the center
    MouseMove, %centerX%, %centerY%, 0 ; Instantly move back to center

    ; Move the mouse to the 210-degree position (predefined coordinates)
    MouseMove, %xCoord210%, %yCoord210%, 0 ; Instantly move to 210-degree position

    ; Send two presses of the spacebar with a 100ms delay between them
    Send, {Space}
    Sleep, 100
    Send, {Space}

    ; Small delay to ensure the game registers the action
    Sleep, 200

    ; Move the mouse back to the center
    MouseMove, %centerX%, %centerY%, 0 ; Instantly move back to center

return
