; Hotstring syntax:
;   :<options>:<trigger_string>::<replacement>

; Hotstring options used in this file:
;   *  = An ending character (e.g. `Space`) is *not* required to trigger the hotstring.
;   ?  = The hotstring will be triggered even when it's inside another word.
;   b0 = Automatic backspacing is *not* done to erase the trigger string.

; sect: Superscript Numbers

:?*:\supzero::⁰
:?*:\supone::¹
:?*:\suptwo::²
:?*:\supthree::³
:?*:\supfour::⁴
:?*:\supfive::⁵
:?*:\supsix::⁶
:?*:\supseven::⁷
:?*:\supeight::⁸
:?*:\supnine::⁹

; sect: Superscript Operators
:?*:\supplus::⁺
:?*:\supmin::⁻
:?*:\supeq::⁼

; sect: Superscript Characters
:?*:\supn::ⁿ
:?*:\supi::ⁱ