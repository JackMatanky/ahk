; #Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir %A_ScriptDir%    ; Ensures a consistent starting directory.
CoordMode "Mouse", "Screen"
#SingleInstance    ; allows only a single instance of a script to be running, so that running a script that is already running makes the new instance replace the old instance automatically.

; * possible function
; * IsChecked := ControlGetChecked(Control , WinTitle, WinText, ExcludeTitle, ExcludeText)

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

!Numpad1::    ; ALT + 1
!1:: split_article("<h1")

!Numpad2::    ; ALT + 2
!2:: split_article("<h2")

!Numpad3::    ; ALT + 3
!3:: split_article("<h3")

!Numpad4::    ; ALT + 4
!4:: split_article("<h4")

!Numpad5::    ; ALT + 5
!5:: split_article("<h5")

split_article(type) {

    Send "^{Enter}"    ; Ctrl + Enter
    Send "{Text}split"
    ; Send the desired template name
    send %type%
    ; Press Enter to apply the template
    send { Enter }
    ; Press Esc to exit the template selection menu
    send { Escape }
}

; !1::
; {
;     Send "{Control down}{Enter}{Control up}"
;     Send "{Text}split"
;     Send "{Enter}"
;     If WinActive("ahk_class TChecksDlg")
;     {
;         ; Check if only the last checkbox is checked
;         WinTitle := WinGetTitle(WinActive())
;         checkboxCount := WinGetCount("SysListView321", WinTitle)
;         for i in 0 to (checkboxCount - 1)
;         {
;             state := ControlGetChecked("SysListView321", "", i, WinTitle)
;             If (state == true && i != (checkboxCount - 1))
;             {
;                 ; Checkbox is checked, but it's not the last one
;                 MsgBox "Checkbox " . i . " is checked, but it should be unchecked"
;                 return
;             }
;         }
;         If (ControlGetChecked("SysListView321", "", (checkboxCount - 1), WinTitle) == true)
;         {
;             ; The last checkbox is checked, which is what we want
;             MsgBox "Only the last checkbox is checked"
;         }
;         else
;         {
;             ; The last checkbox is not checked
;             MsgBox "The last checkbox should be checked"
;         }
;     }
; }


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
