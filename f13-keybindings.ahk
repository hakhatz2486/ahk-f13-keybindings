#Requires AutoHotkey v2.0

; カーソル移動
F13 & j::Send("{Blind}{left}")
F13 & k::Send("{Blind}{down}")
F13 & i::Send("{Blind}{up}")
F13 & l::Send("{Blind}{right}")

F13 & a::Send("{Blind}^{left}")
F13 & d::Send("{Blind}^{right}")
F13 & q::Send("{Blind}{Home}")
F13 & e::Send("{Blind}{End}")
F13 & w::Send("{Blind}{PgUp}")
F13 & s::Send("{Blind}{PgDn}")

; コードのフォーマット(Alt+Shift+f)
F13 & f::Send("{Blind}!+f")

; 改行を削除してペースト
F13 & v:: {
    ; クリップボードの内容を取得
    clipboardContent := A_Clipboard
    ; 改行文字（`r`n および `n）を空文字に置換
    clipboardContent := StrReplace(clipboardContent, "`r`n", "")
    clipboardContent := StrReplace(clipboardContent, "`n", "")
    ; 整形したテキストをクリップボードに戻す
    A_Clipboard := clipboardContent
    ; ペーストを実行 (Ctrl+Shift+V)
    Send("+^v")
}

; メディア操作
F13 & p::Media_Play_Pause
F13 & m::Volume_Mute
F13 & WheelUp::SoundSetVolume("+4")
F13 & WheelDown::SoundSetVolume("-4")

; Lockキー
F13 & c::Send("{Blind}+{CapsLock}")
F13 & n::Send("{Blind}{NumLock}")

;ブラウザ
F13 & ,::Send("{Blind}!{Left}")
F13 & .::Send("{Blind}!{Right}")