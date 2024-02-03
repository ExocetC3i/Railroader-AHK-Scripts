#Requires AutoHotkey v2.0

; Set of scripts to use for the game Railroader
#HotIf WinActive("Railroader")

; Use Mouse 4 to toggle RMB for freelook
XButton1:: 
{
	if GetKeyState("RButton")
		Click "Up Right"
	else
		Click "Down Right"

}

; Double-click to Ctrl-Click
; https://www.autohotkey.com/boards/viewtopic.php?t=120028 for the double-click code block
~LButton::
{
	While GetKeyState("LButton") 
		{
		If A_TimeSinceThisHotkey >= 500
			Break
		Else if (A_PriorHotkey = A_ThisHotkey && A_TimeSincePriorHotkey <= DllCall("GetDoubleClickTime"))
			{
			SendInput "{Ctrl down}{Click down}"
			Sleep 50
			SendInput "{Ctrl up}{Click up}"
			Return 
			}
		}
}

; Mouse5 for Shift-Ctrl-Click
Xbutton2::
{
	Send "{Shift down}{Ctrl down}{Click down}"
	Sleep 50
	Send "{Shift up}{Ctrl up}{Click up}"
}
