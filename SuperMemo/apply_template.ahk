#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
#SingleInstance, force
SetTitleMatchMode,2

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar
GroupAdd, SuperMemo, ahk_class TRegistryForm; Template window

#IfWinActive ahk_group SuperMemo

^Numpad0:: ; CTRL + 0
^0::setTemplate(0)

^Numpad1:: ; CTRL + 1 
^1::setTemplate("Article")

^Numpad2:: ; CTRL + 2
^2::setTemplate("Article_Extract")

^Numpad3:: ; CTRL + 3
^3::setTemplate("Article_Extract + Image")

^Numpad4:: ; CTRL + 4
^4::setTemplate("Item_Plain Text")

^Numpad5:: ; CTRL + 5
^5::setTemplate("Item_Plain Text_Code")

^Numpad6:: ; CTRL + 6
^6::setTemplate("Item_Plain Text_Image")

; ^Numpad7:: ; CTRL + 7
; ^7::setTemplate("Classic")

; ^Numpad8:: ; CTRL + 8
; ^8::setTemplate("Classic Picture")

; ^Numpad9:: ; CTRL + 9
; ^9::setTemplate("Classic Picture")


setTemplate(type) {

    send, {esc}
    send, ^+m
    send, %type%
    send, {enter}
    send, {esc}
}
return