; Press F2 to start or stop the mouse movement and spacebar press in 45-degree increments along the circle.
toggle := false
currentIndex := 1 ; Start at the first set of coordinates
centerX := 960    ; X-coordinate of the circle's center (half of 1920)
centerY := 540    ; Y-coordinate of the circle's center (half of 1080)

F2::
    toggle := !toggle
    if (toggle) {
        ; Predefined X and Y coordinates for each 45-degree increment around the circle
        xCoords := [960, 1096, 1160, 1096, 960, 823, 760, 823]  ; X coordinates for 45-degree increments
        yCoords := [340, 394, 540, 686, 740, 686, 540, 394]     ; Y coordinates for 45-degree increments
        SetTimer, MoveMouseInCircle, 1000 ; Set a 1-second interval between movements
    } else {
        SetTimer, MoveMouseInCircle, Off
        currentIndex := 1 ; Reset to first coordinate when toggled off
    }
return

MoveMouseInCircle:
    ; Get the current set of coordinates from the arrays
    currentX := xCoords[currentIndex]
    currentY := yCoords[currentIndex]

    ; Move the mouse to the predefined position
    MouseMove, %currentX%, %currentY%, 0 ; Instantly move to the new position

    ; Press the spacebar (evade action)
    Send, {Space}

    ; Small delay to ensure the game registers the action
    Sleep, 100

    ; Move the mouse back to the center of the screen
    MouseMove, %centerX%, %centerY%, 0 ; Instantly move back to center

    ; Increment the index to move to the next coordinate
    currentIndex++
    if (currentIndex > 8) { ; Loop back to the first coordinate after completing the circle
        currentIndex := 1
    }

return
