﻿#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

#IfWinActive ahk_exe Diablo IV.exe

Base64PNG_on := "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"
Base64PNG_off := "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"
Menu Tray, Icon, % "HBITMAP:*" hICON := CreateBitMap(Base64PNG_off)

r::
Send, a
SetTimer, PressA, % (Toggle := !Toggle) ? 250 : "Off"
; slot 1
slot1_isabuff := false
slot1_coords := "387, 1022"
slot1_coords := StrSplit(slot1_coords, ", ") ; Split the string into x and y coordinates
PixelGetColor, slot1activecolor, % slot1_coords[1], % slot1_coords[2] ; Use the coordinates to get the color

;if (toggle)
;    Menu Tray, Icon, % "HBITMAP:*" hICON := CreateBitMap(Base64PNG_on)
;else
;    Menu Tray, Icon, % "HBITMAP:*" hICON := CreateBitMap(Base64PNG_off)

return ; end of a

^MButton:: ; This is the hotkey for Shift + Mouse 4
Toggle := false ; Set the toggle variable to false
SetTimer, PressA, Off ; Stop the timer for the 'PressA' subroutine
return

PressA:
; Check slot 1
PixelGetColor, color,  % slot1_coords[1], % slot1_coords[2]
if ((color = slot1activecolor) && (slot1_isabuff = true))
{
    Send, a
}

return

CreateBitMap(ByRef strB64) {
	VarSetCapacity(B64, StrLen(strB64) << !!A_IsUnicode) ; Not need on short string
	B64 := strB64, strB64 := "" ; free memory
	If !DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &B64, "UInt", 0, "UInt", 0x01, "Ptr", 0, "UIntP", DecLen, "Ptr", 0, "Ptr", 0)
		Return False
	VarSetCapacity(Dec, DecLen, 0)
	If !DllCall("Crypt32.dll\CryptStringToBinary", "Ptr", &B64, "UInt", 0, "UInt", 0x01, "Ptr", &Dec, "UIntP", DecLen, "Ptr", 0, "Ptr", 0)
		Return False
	hData := DllCall("Kernel32.dll\GlobalAlloc", "UInt", 2, "UPtr", DecLen, "UPtr")
	pData := DllCall("Kernel32.dll\GlobalLock", "Ptr", hData, "UPtr")
	DllCall("Kernel32.dll\RtlMoveMemory", "Ptr", pData, "Ptr", &Dec, "UPtr", DecLen)
	DllCall("Kernel32.dll\GlobalUnlock", "Ptr", hData)
	DllCall("Ole32.dll\CreateStreamOnHGlobal", "Ptr", hData, "Int", True, "PtrP", pStream)
	hGdip := DllCall("Kernel32.dll\LoadLibrary", "Str", "Gdiplus.dll", "UPtr")
	VarSetCapacity(SI, 16, 0), NumPut(1, SI, 0, "UChar")
	DllCall("Gdiplus.dll\GdiplusStartup", "PtrP", pToken, "Ptr", &SI, "Ptr", 0)
	DllCall("Gdiplus.dll\GdipCreateBitmapFromStream",  "Ptr", pStream, "PtrP", pBitmap)
	DllCall("Gdiplus.dll\GdipCreateHBITMAPFromBitmap", "Ptr", pBitmap, "PtrP", hBitmap, "UInt", 0)
	DllCall("Gdiplus.dll\GdipDisposeImage", "Ptr", pBitmap)
	DllCall("Gdiplus.dll\GdiplusShutdown", "Ptr", pToken)
	DllCall("Kernel32.dll\FreeLibrary", "Ptr", hGdip)
	DllCall(NumGet(NumGet(pStream + 0, 0, "UPtr") + (A_PtrSize * 2), 0, "UPtr"), "Ptr", pStream)
	Return hBitmap
}