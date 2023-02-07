#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;#########################################################################################
IsEditingHTML() {
	ControlGetFocus, current_focus, ahk_class TElWind
	return WinActive("ahk_class TElWind") && InStr(current_focus, "Internet Explorer_Server")
}

MoveAboveRef() {
	Send, ^{End}^+{up} ; if there are references this would select (or deselect in visual mode) them all
	if InStr(clip(), "#SuperMemo Reference:")
		send {up 2} ; go to start of last line
	else
		send ^{end}
}

ClipboardGet_HTML( byref Data ) { ; https://www.autohotkey.com/boards/viewtopic.php?t=13063
 If CBID := DllCall( "RegisterClipboardFormat", Str,"HTML Format", UInt )
  If DllCall( "IsClipboardFormatAvailable", UInt,CBID ) <> 0
   If DllCall( "OpenClipboard", UInt,0 ) <> 0
    If hData := DllCall( "GetClipboardData", UInt,CBID, UInt )
       DataL := DllCall( "GlobalSize", UInt,hData, UInt )
     , pData := DllCall( "GlobalLock", UInt,hData, UInt )
     , Data := StrGet( pData, dataL, "UTF-8" )
     , DllCall( "GlobalUnlock", UInt,hData )
 DllCall( "CloseClipboard" )
Return dataL ? dataL : 0
}

;uri encode/decode by Titan
;Thread: http://www.autohotkey.com/forum/topic18876.html
;About: http://en.wikipedia.org/wiki/Percent_encoding
;two functions by titan: (slightly modified by infogulch)
; https://www.autohotkey.com/board/topic/29866-encoding-and-decoding-functions-v11/

Enc_Uri(str)
{
	f = %A_FormatInteger%
	SetFormat, Integer, Hex
	If RegExMatch(str, "^\w+:/{0,2}", pr)
		StringTrimLeft, str, str, StrLen(pr)
	StringReplace, str, str, `%, `%25, All
	Loop
		If RegExMatch(str, "i)[^\w\.~%/:]", char)
			StringReplace, str, str, %char%, % "%" . SubStr(Asc(char),3), All
		Else Break
	SetFormat, Integer, %f%
	Return, pr . str
}

; Clip() - Send and Retrieve Text Using the Clipboard
; by berban - updated February 18, 2019
; https://www.autohotkey.com/boards/viewtopic.php?f=6&t=62156
Clip(Text="", Reselect="", NoRestore=false)
{
	Static BackUpClip, Stored, LastClip
	If (A_ThisLabel = A_ThisFunc) {
		If (Clipboard == LastClip)
			Clipboard := BackUpClip
		BackUpClip := LastClip := Stored := ""
	} Else {
		If !Stored {
			Stored := True
			BackUpClip := ClipboardAll ; ClipboardAll must be on its own line
		} Else
			SetTimer, %A_ThisFunc%, Off
		LongCopy := A_TickCount, Clipboard := "", LongCopy -= A_TickCount ; LongCopy gauges the amount of time it takes to empty the clipboard which can predict how long the subsequent clipwait will need
		If (Text = "") {
			SendInput, ^c
			ClipWait, LongCopy ? 0.6 : 0.2, True
		} Else {
			Clipboard := LastClip := Text
			ClipWait, 10
			SendInput, ^v
		}
		if !NoRestore ; for scripts that restore clipboard at the end
			SetTimer, %A_ThisFunc%, -700
		Sleep 20 ; Short sleep in case Clip() is followed by more keystrokes such as {Enter}
		If (Text = "")
			Return LastClip := Clipboard
		Else If ReSelect and ((ReSelect = True) or (StrLen(Text) < 3000))
			SendInput, % "{Shift Down}{Left " StrLen(StrReplace(Text, "`r")) "}{Shift Up}"
	}
	Return
	Clip:
	Return Clip()
}
;#########################################################################################

; Simple LaTex script
#if IsEditingHTML()
^!l::
	KeyWait ctrl
	KeyWait alt
	FormatTime, current_time_display,, yyyy-MM-dd HH:mm:ss:%A_msec%
	FormatTime, current_time_file_name,, yyyy-MM-dd-HH-mm-ss-%A_msec%
	clip_bak := Clipboardall
	Clipboard =
	send ^c
	ClipWait 1
	sleep 20
	If ClipboardGet_HTML( Data ){
		; Removing this for now (if image has <span> tag wrapped around this would not work)
		; if RegExMatch(data, "<IMG[^>]*>\K[\s\S]+(?=<!--EndFragment-->)") { ; match end of first IMG tag until start of last EndFragment tag
			; MsgBox Please select text or image only.
			; Clipboard := clip_bak
			; Return
		; } else
		if !InStr(data, "<IMG") { ; no image
			WinGetText, visible_text, ahk_class TElWind
			RegExMatch(visible_text, "(?<=LearnBar\r\n)(.*?)(?= \(SuperMemo 18: )", collection_name)
			RegExMatch(visible_text, "(?<= \(SuperMemo 18: )(.*)(?=\)\r\n)", collection_path)
			latex_formula := Enc_Uri(Clipboard)
			latex_link := "https://latex.vimsky.com/test.image.latex.php?fmt=png&val=%255Cdpi%257B150%257D%2520%255CLARGE%2520%257B%255Ccolor%257BBlack%257D%2520" . latex_formula . "%257D&dl=1"
			latex_foler_path := collection_path . collection_name . "\LaTex"
			latex_path := latex_foler_path . "\" . current_time_file_name . ".png"
			FileCreateDir % latex_foler_path
			img_html = <img alt="%Clipboard%" src="%latex_path%">
			clip(img_html, true, true)
			send ^+1
			send {esc}^t ; save html
			Clipboard =
			send !{f12}fc ; copy file path
			ClipWait 1
			sleep 20
			FileRead, html, %Clipboard%
			MoveAboveRef()
			send !\\
			WinWaitNotActive, ahk_class TElWind,, 0
			if !ErrorLevel
				send {enter}
			fuck_lexicon = <P><SMALL>Last LaTex to image conversion: %current_time_display%
			if InStr(html, "<P><SMALL>Last LaTex to image conversion: ")
				new_html := RegExReplace(html, "<P><SMALL>Last LaTex to image conversion: (.*)", fuck_lexicon)
			else if !html ; sometimes save html would empty it
				new_html := img_html . "`n" . fuck_lexicon
			else
				new_html := html . "`n" . fuck_lexicon
			clip(new_html,, true)
			send ^+{home}^+1
			UrlDownloadToFile, %latex_link%, %latex_path%
			send !{home}!{left} ; refresh
		} else { ; image
			RegExMatch(data, "<IMG (alt=""|alt=)\K.+?(?=(""|\s+src=))", latex_formula)
			RegExMatch(data, "src=""file:\/\/\/\K[^""]+", latex_path)
			clip(latex_formula,, true)
			FileDelete %latex_path%
		}
	}
	Clipboard := clip_bak
Return