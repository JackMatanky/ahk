; Code source: https://github.com/shankarsivarajan/ahk_characters

; Hotstring syntax:
;   :<options>:<trigger_string>::<replacement>

; Hotstring options used in this file:
;   *  = An ending character (e.g. `Space`) is *not* required to trigger the hotstring.
;   ?  = The hotstring will be triggered even when it's inside another word.
;   b0 = Automatic backspacing is *not* done to erase the trigger string.

; * The diacritics follow LaTeX's notation closely: \"a → ä, \'e → é, \\i → ı, \ho → ő, \^u → û.

:?*:\'a::á
:?*:\'e::é
:?*:\'i::í
:?*:\'o::ó
:?*:\'u::ú
:?*:\'y::ý
:?*:\'c::ć
:?*:\'\ae::ǽ

:?*:\`^a::â
:?*:\`^e::ê
:?*:\`^i::î
:?*:\`^o::ô
:?*:\`^u::û

:?*:\"a::ä
:?*:\"e::ë
:?*:\"i::ï
:?*:\"o::ö
:?*:\"u::ü
:?*:\"y::ÿ

:?*:\``a::à
:?*:\``e::è
:?*:\``i::ì
:?*:\``o::ò
:?*:\``u::ù

:?*:\~a::ã
:?*:\~n::ñ
:?*:\~o::õ

:?*:\cc::ç

:?*:\Ho::ő

:?*:\=a::ā
:?*:\=e::ē
:?*:\=i::ī
:?*:\=o::ō
:?*:\=u::ū
:?*:\=n::n̄

:?*:\vs::š
:?*:\vz::ž
:?*:\vg::ğ

:?*:\oa::å
:?*:\oe::œ
:?*:\ae::æ
:?*:\\o::ø
:?*:\\l::ł

:?*:\.z::ż
:?*:\\z::ƶ

:?*:\thorn::þ
:?*:\eth::ð
:?*:\ss::ß

:?*:\\i::ı
:?*:\\j::ȷ