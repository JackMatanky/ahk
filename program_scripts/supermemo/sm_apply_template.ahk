#Include "\autohotkey\lib\default_settings.ahk"

; * Application: SuperMemo

; exp: Commonly-used window classes

GroupAdd("SuperMemo", "ahk_class TElWind")    ;Element Window
GroupAdd("SuperMemo", "ahk_class TContents")    ;Content Window (Knowledge Tree)
GroupAdd("SuperMemo", "ahk_class TBrowser")    ;Browser
GroupAdd("SuperMemo", "ahk_class TSMMain")    ;Toolbar
GroupAdd("SuperMemo", "ahk_class TRegistryForm")    ; Registry Window

; exp: Execute code only if SuperMemo is focused

#HotIf WinActive("ahk_class TElWind")

; exp: Apply templates to topics and items in SuperMemo
; step 1. Activate the Element window
; step 2. Press Ctrl + Shift + M to open the template selection menu
; step 3. Delete the text in the template regristry
; step 4. Send the desired template name
; step 5. Press Enter to apply the template

; * Article
; CTRL + 1
^Numpad1::
^1:: apply_template("Article")


; * Article_Extract
; CTRL + 2
^Numpad2::
^2:: apply_template("Article_Extract")


; * Article_Extract_Image
; CTRL + 3
^Numpad3::
^3:: apply_template("Article_Extract_Image")


; * Item_Plain_Text
; CTRL + 4
^Numpad4::
^4:: apply_template("Item_Plain_Text")


; * Item_Plain_Text_Code
; CTRL + 5
^Numpad5::
^5:: apply_template("Item_Plain_Text_Code")


; * Item_Plain_Text_Image
; CTRL + 6
^Numpad6::
^6:: apply_template("Item_Plain_Text_Image")


apply_template(template_string) {
    Send("{Escape}")
    Send("{Ctrl Down}{Shift Down}m{Ctrl Up}{Shift Up}")
    Send(template_string)
    Send("{Enter}")
}
#HotIf