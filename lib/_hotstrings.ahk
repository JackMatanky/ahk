#Include "default_settings.ahk"

; Code source: https://github.com/shankarsivarajan/ahk_characters

; Hotstring syntax:
;   :<options>:<trigger_string>::<replacement>

; Hotstring options used in this file:
;   *  = An ending character (e.g. `Space`) is *not* required to trigger the hotstring.
;   ?  = The hotstring will be triggered even when it's inside another word.
;   b0 = Automatic backspacing is *not* done to erase the trigger string.

;=============================================================================
; * Hebrew
;=============================================================================

; ! WARNING: These type right-to-left.
; ! This bug is unlikely to be fixed for historical reasons.

:?*:\aleph::א    ; Aleph
:?*:\beth::ב
:?*:\gimel::ג
:?*:\dalet::ד
:?*:\hei::ה
:?*:\vav::ו
:?*:\zayin::ז
:?*:\heth::ח
:?*:\teth::ט
:?*:\yod::י
:?*:\kaph::כ
:?*:\lamed::ל
:?*:\mem::מ
:?*:\nun::נ
:?*:\samekh::ס
:?*:\ayin::ע
:?*:\pei::פ
:?*:\tsadi::צ
:?*:\qoph::ק
:?*:\resh::ר
:?*:\shin::ש
:?*:\tav::ת

:?*:\finkaph::ך
:?*:\finmem::ם
:?*:\finnun::ן
:?*:\finpei::ף
:?*:\fintsadi::ץ

;=============================================================================
; * Greek
;=============================================================================

; sect: Lower case

:?*:\alpha::α
:?*:\beta::β
:?*:\gamma::γ
:?*:\delta::δ
:?*:\epsilon::ε
:?*:\zeta::ζ
:?*:\eta::η
:?*:\theta::θ
:?*:\iota::ι
:?*:\kappa::κ
:?*:\lambda::λ
:?*:\mu::μ
:?*:\nu::ν
:?*:\xi::ξ
:?*:\omicron::ο
:?*:\pi::π
:?*:\rho::ρ
:?*:\sigma::σ
:?*:\varsigma::ς
:?*:\tau::τ
:?*:\upsilon::υ
:?*:\phi::φ
:?*:\chi::χ
:?*:\psi::ψ
:?*:\omega::ω
:?*:\digamma::ϝ

; sect: Upper case

:?*:\Alpha::Α
:?*:\Beta::Β
:?*:\Gamma::Γ
:?*:\Delta::Δ
:?*:\Epsilon::Ε
:?*:\Zeta::Ζ
:?*:\Eta::Η
:?*:\Theta::Θ
:?*:\Iota::Ι
:?*:\Kappa::Κ
:?*:\Lambda::Λ
:?*:\Mu::Μ
:?*:\Nu::Ν
:?*:\Xi::Ξ
:?*:\Omicron::Ο
:?*:\Pi::Π
:?*:\Rho::Ρ
:?*:\Sigma::Σ
:?*:\Tau::Τ
:?*:\Upsilon::Υ
:?*:\Phi::Φ
:?*:\Chi::Χ
:?*:\Psi::Ψ
:?*:\Omega::Ω

;=============================================================================
; * Diacritics
;=============================================================================

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

;=============================================================================
; * Subscript
;=============================================================================

; sect: Subscript Numbers

:?*:\subzero::₀
:?*:\subone::₁
:?*:\subtwo::₂
:?*:\subthree::₃
:?*:\subfour::₄
:?*:\subfive::₅
:?*:\subsix::₆
:?*:\subseven::₇
:?*:\subeight::₈
:?*:\subnine::₉

; sect: Subscript Operators
:?*:\subplus::₊
:?*:\submin::₋
:?*:\subeq::₌

; sect: Subscript Punctuation
:?*:\sublpar::₍
:?*:\subrpar::₎

; sect: Subscript Characters
:?*:\suba::ₐ
:?*:\sube::ₑ
:?*:\subo::ₒ
:?*:\subx::ₓ
:?*:\subh::ₕ
:?*:\subk::ₖ
:?*:\subl::ₗ
:?*:\subm::ₘ
:?*:\subn::ₙ
:?*:\subp::ₚ
:?*:\subs::ₛ
:?*:\subt::ₜ

;=============================================================================
; * Superscript
;=============================================================================

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


;=============================================================================
; * astro characters
;=============================================================================

:?*:\astrosun::☉
:?*:\astromoon::☽
:?*:\astromercury::☿
:?*:\astrovenus::♀︎
:?*:\astroearth1::⊕
:?*:\astroearth2::♁
:?*:\astromars::♂︎
:?*:\astrojupiter::♃
:?*:\astrosaturn::♄
:?*:\astrouranus1::♅
:?*:\astrouranus2::⛢
:?*:\astroneptune::♆
:?*:\astropluto::♇
:?*:\astroceres::⚳
:?*:\astropallas::⚴
:?*:\astrojuno::⚵
:?*:\astrovesta::⚶
:?*:\astrochiron::⚷
:?*:\astronodeasc::☊
:?*:\astronodedesc::☋

;=============================================================================
; * zodiac characters
;=============================================================================

:?*:\zodaries::♈
:?*:\zodtaurus::♉
:?*:\zodgemini::♊
:?*:\zodcancer::♋
:?*:\zodleo::♌
:?*:\zodvirgo::♍
:?*:\zodlibra::♎
:?*:\zodscorpio::♏
:?*:\zodsagittarius::♐
:?*:\zodcapricorn::♑
:?*:\zodaquarius::♒
:?*:\zodpisces::♓
:?*:\zodophiuchus::⛎

;=============================================================================
; * Mathematics
;=============================================================================
; Mathematical Symbols: https://en.wikipedia.org/wiki/List_of_mathematical_symbols_by_subject#Equality_signs


; sect: General
:?*:\func::⨍    ; function
:?*:\infty::∞    ; infinity
:?*:\sqrt::√    ; square root
:?*:\sqrtc::∛    ; cube root
:?*:\sqrtq::∜    ; quad root

; sect 1: Numbers

; sect 1.1: Number Sets
:?*:\numnat::ℕ    ; Set of Natural Numbers
:?*:\numint::ℤ    ; Set of Integers
:?*:\numrat::ℚ    ; Set of Rational Numbers
:?*:\numreal::ℝ    ; Set of Real Numbers
:?*:\numcomp::ℂ    ; Set of Complex Numbers

; sect 1.2: Arithmetic Operators
:?*:\plus::+    ; addition
:?*:\minus::−    ; minus
:?*:\cdot::⋅    ; multiplication dot
:?*:\times::⨯    ; multiplication ex
:?*:\div::÷    ; division
:?*:\pm::±    ; plus or minus
:?*:\mp::∓    ; minus or plus

; sect 1.3: Relational Operators
:?*:\eq::=    ; Equality
:?*:\ne::≠    ; Inequality
:?*:\equiv::≡    ; Identity, or equivalence
:?*:\neqv::≢    ; Non-identity, or non-equivalence
:?*:\approx::≈    ; approximation
:?*:\propto::∝    ; proportionality
:?*:\gt::>    ; greater than
:?*:\ge::≥    ; greater than or equal to
:?*:\lt::<    ; less than
:?*:\le::≤    ; less than or equal to

; sect 2: Statistics
:?*:\mu::μ    ; population mean (greek lowercase mu)
:?*:\pmean::μ    ; population mean (greek lowercase mu)
:?*:\xbar::x̄    ; sample mean (x-bar)
:?*:\smean::x̄    ; sample mean (x-bar)
:?*:\sdev::s    ; sample standard deviation (letter s)
:?*:\sigma::σ    ; sample standard deviation (greek lowercase sigma)
:?*:\pdev::σ    ; population standard deviation (greek lowercase sigma)
:?*:\svar::s²    ; sample variance (letter s to the power of 2)
:?*:\pvar::σ²    ; population variance ((greek lowercase sigma to the power of 2)
:?*:\scorr::r    ; sample correlation (letter r)
:?*:\rho::ρ    ; population correlation (greek lowercase rho)
:?*:\pcorr::ρ    ; population correlation (greek lowercase rho)
:?*:\phat::p̂

; sect 3: Calculus

; sect 3.1: Sequences and Series
:?*:\sum::∑    ; sigma summation
:?*:\prod::∏    ; product
:?*:\coprod::∐    ; coproduct

; sect 3.2: Limits
:?*:\rarr::→    ; signifies limit of sequence, function, etc.

; sect 3.3: Differential Calculus
:?*:\prime::′    ; prime symbol (Lagrange's notation)
:?*:\partial::∂    ; partial derivative

; sect 3.4: Vector Calculus
:?*:\nabla::∇    ; gradient, divergence, curl
:?*:\delta::∆    ; Laplace operator
:?*:\square::□    ; D'Alembert operator

; sect 3.5: Asymptotic Behavior
:?*:\sim::∼    ; Asymptotic analysis

; sect 4: Linear Algebra

; sect 4.1: Vector Operations
:?*:\cdot::⋅    ; Dot product
:?*:\times::⨯    ; Cross product
:?*:\otimes::⊗    ; Dyadic product
:?*:\vert::|    ; Euclidean norm
:?*:\dvert::‖    ; Norm function
:?*:\Vert::‖    ; Norm function (Latex notation)

; sect 4.2: Matrix Operations
:?*:\cdot::⋅    ; Matrix multiplication
:?*:\circ::∘    ; Hadamard product
:?*:\oslash::⊘    ; Hadamard division
:?*:\otimes::⊗    ; Kronecker product


; sect 4.3: Vector Spaces

; sect 4.4: Functional Analysis


; sect 5: Logic
; sect 5.1: Logical Operators
:?*:\lnot::¬    ; Logical negation (not) (Latex)
:?*:\land::∧    ; Logical conjunction (and) (Latex)
:?*:\lor::∨    ; Logical disjunction (or) (Latex)
:?*:\oplus::⊕    ; Logical exclusive disjunction (either/or) (Latex)
:?*:\lxor::⊕    ; Logical exclusive disjunction (either/or)
:?*:\lnxor::⨀    ; Negated logical exclusive disjunction (either/or)
:?*:\implies::⇒    ; Logical consequence (if...then) (Latex)
:?*:\nimplies::⇏    ; Negated logical consequence
:?*:\iff::⇔    ; Logical equivalence (if and only if) (Latex)
:?*:\niff::⇎    ; negated material implication

; sect 5.2: Logical Quantifiers
:?*:\forall::∀    ; universal quantification
:?*:\exists::∃    ; existential quantification
:?*:\nexists::∄    ; negated existential quantification

; sect 5.3: Deductions Symbols
:?*:\therefore::∴    ; therefore
:?*:\because::∵    ; because


; sect: Set Theory
; sect .1: Set Construction
:?*:\emptyset::∅    ; Empty set
:?*:\mid::|    ; "such that..." (Latex: includes whitespace)
:?*:\vert::|    ; "such that..." (Latex: no whitespace included)

; sect .2: Set Operations
:?*:\cap::∩    ; Intersection (Latex)
:?*:\setinter::∩    ; Intersection
:?*:\cup::∪    ; Union (Latex)
:?*:\setunion::∪    ; Union
:?*:\setminus::∖    ; Difference (Latex)
:?*:\triangle::∆    ; Symmetric Difference (Latex)
:?*:\setsymdiff::∆    ; Symmetric Difference
:?*:\times::⨯    ; Cartesian Product (Latex)
:?*:\powerset::𝒫    ; Power set

; sect .3: Set Relations
:?*:\subset::⊂    ; Proper subset (Latex)
:?*:\psubset::⊂    ; Proper subset
:?*:\subseteq::⊆    ; Subset (Latex)
:?*:\nsubset::⊄    ; Proper subset negation
:?*:\npsubset::⊄    ; Proper subset negation
:?*:\nsubseteq::⊈    ; Subset negation
:?*:\supset::⊃    ; Proper superset (Latex)
:?*:\psupset::⊃    ; Proper superset
:?*:\supseteq::⊇    ; Superset (Latex)
:?*:\nsupset::⊅    ; Proper superset negation
:?*:\npsupset::⊅    ; Proper superset negation
:?*:\nsupseteq::⊉    ; Superset negation
:?*:\in::∈    ; set element (Latex)
:?*:\notin::∉    ; set element negation (Latex)
:?*:\inset::∈    ; set element
:?*:\notinset::∉    ; set element negation

; sect: Geometry
:?*:\degree::°    ; angle degree
:?*:\angle::∠    ; Angle
:?*:\triangle::△    ; Triangle
:?*:\square::□    ; Quadrilateral
:?*:\parallel::∥    ; Parallel
:?*:\nparallel::∦    ; Not parallel
:?*:\perp::⟂    ; Perpindicular (orthogonality)

; ½⅓¼⅕⅙⅐⅛⅑⅒⅔⅖¾⅗⅜⅘⅝

;=============================================================================
; * Miscellaneous
;=============================================================================

:?*:\mdot::∙    ; medium dot
:?*:\check::✓    ; check mark

:?*:\hbar::ћ
:?*:\ddag::‡
:?*:\dag::†
:?*:\copyright::©
:?*:\registered::®
:?*:\trademark::™
:?*:\<<::«
:?*:\>>::»

:?*:\oc::©
:?*:\or::®
:?*:\tm::™
:?*:\smiley::☺
:?*:\times::×

; sect: Currency
:?*:\usd::$
:?*:\nis::₪
:?*:\pound::£
:?*:\euro::€
:?*:\cent::¢

; sect: Punctuation
:?*:\sections::§
:?*:\paragraphp::¶
:?*:\dash::-    ; dash
:?*:\ndash::–    ; en dash
:?*:\mdash::—    ; em dash
:?*:\undsc::_    ; underscore
:?*:\elipses::…    ; elipses
:?*:\amp::&    ; ampersand
:?*:\?``::¿
:?*:\!``::¡
:?*:\?!::‽
:?*:\!?::‽

; sect: Arrows
:?*:\uparrow::↑
:?*:\downarrow::↓
:?*:\leftarrow::←
:?*:\rightarrow::→
:?*:\leftrightarrow::↔
:?*:\updownarrow::↕

; sect: Playing Cards
:?*:\spade::♠
:?*:\heart::♥
:?*:\club::♣
:?*:\diamond::♦

; sect: Music
:?*:\eighthnote::♪
:?*:\twonotes::♫

; sect: Biological Sex Symbols
:?*:\male::♂
:?*:\female::♀
:?*:\mfsex::⚤
:?*:\fmsex::⚤
:?*:\mmsex::⚣
:?*:\ffsex::⚢