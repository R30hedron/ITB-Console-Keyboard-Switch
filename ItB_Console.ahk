SetFormat, Integer, H
eng := 0x4090409

SetLayout(language)
{
    ControlGetFocus, control, A
    PostMessage 0x50, 0, %language%, %control%, A ; WM_INPUTLANGCHANGEREQUEST
}

F11:: ;Change this character to the key of your choice.
  if(WinActive("ahk_exe Breach.exe")){
    w := DllCall("GetForegroundWindow")
	pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
	l := DllCall("GetKeyboardLayout", "UInt", pid)
    ;MsgBox, %l%
    SetLayout(eng)
    Sleep 150
    Send {vkC0sc029}
    Sleep 50
    SetLayout(l)
  }
Return
