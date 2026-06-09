#Requires AutoHotkey v2.0
#SingleInstance Force

NoCtrlAlt() {
    return !GetKeyState("Ctrl", "P") && !GetKeyState("Alt", "P")
}

SendLetter(lower, upper) {
    if (GetKeyState("Shift", "P") != GetKeyState("CapsLock", "T"))
        SendText upper
    else
        SendText lower
}

^!F12::ExitApp

#HotIf

<^>!SC003::SendText "²"
<^>!SC004::SendText "³"
<^>!SC008::SendText "{"
<^>!SC009::SendText "["
<^>!SC00A::SendText "]"
<^>!SC00B::SendText "}"
<^>!SC00C::SendText "\"
<^>!SC010::SendText "@"
<^>!SC012::SendText "€"
<^>!SC01B::SendText "~"
<^>!SC032::SendText "µ"
<^>!SC056::SendText "|"

#HotIf NoCtrlAlt()

SC029::SendText "^"
+SC029::SendText "°"

SC002::SendText "1"
+SC002::SendText "!"

SC003::SendText "2"
+SC003::SendText Chr(34)

SC004::SendText "3"
+SC004::SendText "§"

SC005::SendText "4"
+SC005::SendText "$"

SC006::SendText "5"
+SC006::SendText "%"

SC007::SendText "6"
+SC007::SendText "&"

SC008::SendText "7"
+SC008::SendText "/"

SC009::SendText "8"
+SC009::SendText "("

SC00A::SendText "9"
+SC00A::SendText ")"

SC00B::SendText "0"
+SC00B::SendText "="

SC00C::SendText "ß"
+SC00C::SendText "?"

SC00D::SendText "´"
+SC00D::SendText Chr(96)

*SC015::SendLetter("z", "Z")
*SC02C::SendLetter("y", "Y")

*SC01A::SendLetter("ü", "Ü")
SC01B::SendText "+"
+SC01B::SendText "*"

*SC027::SendLetter("ö", "Ö")
*SC028::SendLetter("ä", "Ä")

SC02B::SendText "#"
+SC02B::SendText "'"

SC033::SendText ","
+SC033::SendText ";"

SC034::SendText "."
+SC034::SendText ":"

SC035::SendText "-"
+SC035::SendText "_"

SC056::SendText "<"
+SC056::SendText ">"

#HotIf

>!SC008::SendText "{"
>!SC009::SendText "["
>!SC00A::SendText "]"
>!SC00B::SendText "}"
>!SC00C::SendText "\"
>!SC010::SendText "@"
>!SC012::SendText "€"
>!SC01B::SendText "~"
>!SC032::SendText "µ"
>!SC056::SendText "|"

Snip() {
    Run "ms-screenclip:"
}

RAlt & Insert::Snip()
RAlt & Ins::Snip()

>!Insert::Snip()
>!Ins::Snip()

<^>!Insert::Snip()
<^>!Ins::Snip()

^!Insert::Snip()
^!Ins::Snip()
