; #Warn  ; Enable warnings to assist with detecting common errors.
#Requires AutoHotkey v2.0
#SingleInstance Force    ; allows only a single instance of a script to be running, so that running a script that is already running makes the new instance replace the old instance automatically.

; * Application: SuperMemo

; exp: Commonly-used window classes

GroupAdd "SuperMemo", "ahk_class TElWind"    ;Element Window
GroupAdd "SuperMemo", "ahk_class TContents"    ;Content Window (Knowledge Tree)
GroupAdd "SuperMemo", "ahk_class TBrowser"    ;Browser
GroupAdd "SuperMemo", "ahk_class TSMMain"    ;Toolbar
GroupAdd "SuperMemo", "ahk_class TRegistryForm"    ; Registry Window

; exp: Execute code only if SuperMemo is focused

#HotIf WinActive("ahk_group SuperMemo")

; exp: Apply templates to topics and items in SuperMemo
; step 1. Activate the Element window
; step 2. Press Ctrl + Shift + M to open the template selection menu
; step 3. Delete the text in the template regristry
; step 4. Send the desired template name
; step 5. Press Enter to apply the template

; * Article
; CTRL + 1


; * Article_Extract
; CTRL + 2


; * Article_Extract_Image
; CTRL + 3


; * Item_Plain_Text
; CTRL + 4


; * Item_Plain_Text_Code
; CTRL + 5


; * Item_Plain_Text_Image
; CTRL + 6

apply_template(type) {
    WinActivate("ahk_class TElWind")
    Send "{Ctrl Down}{Shift Down}m{Ctrl Up}{Shift Up}"
    Send %type%
    Send "{Enter}"
}
return