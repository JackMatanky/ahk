; #Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.
CoordMode "Mouse", "Screen"
#SingleInstance Force
SetTitleMatchMode 2

; * Application: SuperMemo

; exp: Commonly-used window classes

GroupAdd "SuperMemo" "ahk_class TBrowser"    ;Browser
GroupAdd "SuperMemo" "ahk_class TContents"    ;Content Window (Knowledge Tree)
GroupAdd "SuperMemo" "ahk_class TElWind"    ;Element window
GroupAdd "SuperMemo" "ahk_class TSMMain"    ;Toolbar
GroupAdd "SuperMemo" "ahk_class TRegistryForm"    ; Template window

; exp: Execute code only if SuperMemo is focused

#HotIf WinActive("ahk_group SuperMemo")

; exp: Apply templates to topics and items in SuperMemo

^Numpad1::    ; CTRL + 1
^1:: set_template("Article")

^Numpad2::    ; CTRL + 2
^2:: set_template("Article_Extract")

^Numpad3::    ; CTRL + 3
^3:: set_template("Article_Extract + Image")

^Numpad4::    ; CTRL + 4
^4:: set_template("Item_Plain Text")

^Numpad5::    ; CTRL + 5
^5:: set_template("Item_Plain Text_Code")

^Numpad6::    ; CTRL + 6
^6:: set_template("Item_Plain Text_Image")


set_template(type) {

    SendInput { Escape }
    send "^+m"
    send type
    send { Enter }
    send { Escape }
}