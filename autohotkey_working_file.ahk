#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
#SingleInstance, force
SetTitleMatchMode,2

; * Application: SuperMemo

; exp: Commonly-used window classes

GroupAdd, SuperMemo, ahk_class TBrowser ;Browser
GroupAdd, SuperMemo, ahk_class TContents ;Content Window (Knowledge Tree)
GroupAdd, SuperMemo, ahk_class TElWind ;Element window
GroupAdd, SuperMemo, ahk_class TSMMain ;Toolbar
GroupAdd, SuperMemo, ahk_class TRegistryForm; Template window

; exp: Execute code only if SuperMemo is focused

#IfWinActive ahk_group SuperMemo

; sect 1: Apply templates to topics and items in SuperMemo 

^Numpad0:: ; CTRL + 0
^0::set_template(0)

^Numpad1:: ; CTRL + 1 
^1::set_template("Article")

^Numpad2:: ; CTRL + 2
^2::set_template("Article_Extract")

^Numpad3:: ; CTRL + 3
^3::set_template("Article_Extract + Image")

^Numpad4:: ; CTRL + 4
^4::set_template("Item_Plain Text")

^Numpad5:: ; CTRL + 5
^5::set_template("Item_Plain Text_Code")

^Numpad6:: ; CTRL + 6
^6::set_template("Item_Plain Text_Image")

; ^Numpad7:: ; CTRL + 7
; ^7::setTemplate("Classic")

; ^Numpad8:: ; CTRL + 8
; ^8::setTemplate("Classic Picture")

; ^Numpad9:: ; CTRL + 9
; ^9::setTemplate("Classic Picture")


set_template(type) {

    send, {esc}
    send, ^+m
    send, %type%
    send, {enter}
    send, {esc}
}
return

; sect 2: Split article according to heading level 

!Numpad0:: ; ALT + 0
!0::split_article(0)

!Numpad1:: ; ALT + 1 
!1::split_article("Article")

!Numpad2:: ; ALT + 2
!2::split_article("Article_Extract")

!Numpad3:: ; ALT + 3
!3::split_article("Article_Extract + Image")

!Numpad4:: ; ALT + 4
!4::split_article("Item_Plain Text")

!Numpad5:: ; ALT + 5
!5::split_article("Item_Plain Text_Code")

!Numpad6:: ; ALT + 6
!6::split_article("Item_Plain Text_Image")

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

/*
^+!s::
{
    send, ^{Enter}
    send, split
    send, {Enter}
    send, {Enter}
    sleep, 5000

    If !WinExist("Splitting an article ahk_class TProgressBox")
    {
        sleep, 1000
        send, ^+{Enter}
        sleep, 1000
        send, {Enter}
        send, {Enter}
    }
}
return

; exp uncheck boxes for splitting options
Send {Down}
Send {Down}
Send {Space}
Send {Down}
Send {Space}
Send {Down}
Send {Space}
Send {Down}
Send {Space}
Send {Down}
Send {Space}
*/