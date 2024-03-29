﻿;No dependencies

class Unicode {

    static Symbols := Map(

        "pleading",                 0x1F97A, ; 🥺
        "yum",                      0x1F60B, ; 😋
        "exploding head",           0x1F92F, ; 🤯
        "smirk cat",                0x1F63C, ; 😼
        "sunglasses",               0x1F60E, ; 😎
        "sob",                      0x1F62D, ; 😭
        "face with monocle",        0x1F9D0, ; 🧐
        "flushed",                  0x1F633, ; 😳
        "face with raised eyebrow", 0x1F928, ; 🤨
        "purple heart",             0x1F49C, ; 💜
        "skull",                    0x1F480, ; 💀
        "rolling eyes",             0x1F644, ; 🙄
        "thinking",                 0x1F914, ; 🤔
        "weary",                    0x1F629, ; 😩
        "woozy",                    0x1F974, ; 🥴
        "finger left",              0x1F448, ; 👈
        "finger right",             0x1F449, ; 👉
        "drooling",                 0x1F924, ; 🤤
        "eggplant",                 0x1F346, ; 🍆
        "smiling imp",              0x1F608, ; 😈
        "fearful",                  0x1F628, ; 😨
        "middle dot",               0x00B7,  ; ·
        "discord escape",           0x001B,
        "long dash",                0x2014,  ; —
        "sun",                      0x2600,  ; ☀
        "cloud",                    0x2601,  ; ☁
        "nerd",                     0x1F913, ; 🤓
        "handshake",                0x1F91D, ; 🤝
        "shrug",                    0x1F937, ; 🤷
        "clap",                     0x1F44F, ; 👏
        "amogus",                   0x0D9E,  ; ඞ
        "confetti",                 0x1F389, ; 🎉
        " ",                        0x0020

    )

    /**
     * Sends a unicode character using the Send function by using the character's predefined name
     * @param name *String* The predefined name of the character
     * @param endingChar *String* The string to append to the character. For example, a space or a newline
     */
    static Send(symbols*) {
        output := ""
        for index, symbol in symbols
            output .= Chr(this.Symbols[symbol])
        Send(output)
    }

}
