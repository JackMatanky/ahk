; #Warn  ; Enable warnings to assist with detecting common errors.
CoordMode "Mouse", "Screen"
#SingleInstance    ; allows only a single instance of a script to be running, so that running a script that is already running makes the new instance replace the old instance automatically.

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
^1:: apply_template("Article")

^Numpad2::    ; CTRL + 2
^2:: apply_template("Article_Extract")

^Numpad3::    ; CTRL + 3
^3:: apply_template("Article_Extract + Image")

^Numpad4::    ; CTRL + 4
^4:: apply_template("Item_Plain Text")

^Numpad5::    ; CTRL + 5
^5:: apply_template("Item_Plain Text_Code")

^Numpad6::    ; CTRL + 6
^6:: apply_template("Item_Plain Text_Image")


apply_template(type) {
    ; Press Esc to exit any active input fields
    SendInput "{Escape}"
    ; Press Ctrl + Shift + M to open the template selection menu
    Send "{Ctrl Down}{Shift Down}m{Ctrl Up}{Shift Up}"
    ; Send the desired template name
    Send %type%
    ; Press Enter to apply the template
    Send "{Enter}"
    ; Press Esc to exit the template selection menu
    Send "{Escape}"
}