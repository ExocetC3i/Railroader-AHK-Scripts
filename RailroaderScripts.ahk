#Requires AutoHotkey v2.0

; Set of scripts to use for the game Railroader
#HotIf WinActive("ahk_exe Railroader.exe")

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

; Keybinds for teleporting to various locations
~F2::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp ds{Enter}{Esc}"
}

~F3::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp `"East Whittier`"{Enter}{Esc}"
}

~F4::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp Whittier{Enter}{Esc}"
}

~F5::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp Ela{Enter}{Esc}"
}

~F6::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp `"Alarka Jct`"{Enter}{Esc}"
}

~F7::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp Alarka{Enter}{Esc}"
}


~F8::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp Dillsboro{Enter}{Esc}"
}

~F9::
{
	SendInput "~"
	Sleep 100
	SendInput "/tp Sylva{Enter}{Esc}"
}
