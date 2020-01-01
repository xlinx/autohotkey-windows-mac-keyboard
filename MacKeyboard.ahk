;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input


; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------


RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
F10::SendInput {Volume_Mute}
F11::SendInput {Volume_Down}
F12::SendInput {Volume_Up}

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
;F20::SendInput {Insert} ; F20 doesn't show up on AHK anymore, see #3

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

;F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
; F16::Run http://twitter.com
; F17::Run http://tumblr.com
; F18::Run http://www.reddit.com
; F19::Run https://facebook.com

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------


; LAlt::LWin
; LWin::LAlt
; !Left::Home
; !Right::End
!n::send ^n
; #+Up::PgUp
; #+Down::PgDn

; Make Ctrl + S work with cmd (windows) key
!s::send ^s
; Selecting
!a::send ^a

; Copying
!c::send ^c

; Pasting
!v::send ^v

; Cutting
!x::send ^x

; Opening
!o::send ^o
 
; Finding
!f::Send ^f

; Undo
!z::send ^z

; Redo
!y::send ^y

; New tab
!t::send ^t

; close tab
!w::send ^w

; Close windows (cmd + q to Alt + F4)
!q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
LAlt & Tab::AltTab

; minimize windows
!m::WinMinimize,a


; --------------------------------------------------------------
; OS X keyboard mappings for special chars
; --------------------------------------------------------------

; ; Map Alt + L to @
; !l::SendInput {@}

; ; Map Alt + N to \
; +!7::SendInput {\}

; ; Map Alt + N to ©
; !g::SendInput {©}

; ; Map Alt + o to ø
; !o::SendInput {ø}

; ; Map Alt + 5 to [
; !5::SendInput {[}

; ; Map Alt + 6 to ]
; !6::SendInput {]}

; ; Map Alt + E to €
; !e::SendInput {€}

; ; Map Alt + - to –
; !-::SendInput {–}

; ; Map Alt + 8 to {
; !8::SendInput {{}

; ; Map Alt + 9 to }
; !9::SendInput {}}

; ; Map Alt + - to ±
; !+::SendInput {±}

; ; Map Alt + R to ®
; !r::SendInput {®}

; ; Map Alt + N to |
; !7::SendInput {|}

; ; Map Alt + W to ∑
; !w::SendInput {∑}

; ; Map Alt + N to ~
; !n::SendInput {~}
 
; ; Map Alt + 3 to #
; !3::SendInput {#}



; --------------------------------------------------------------
; Custom mappings for special chars
; --------------------------------------------------------------

;#ö::SendInput {[} 
;#ä::SendInput {]} 

;^ö::SendInput {{} 
;^ä::SendInput {}} 


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

#IfWinActive





; Ensures a consistent starting directory.
SetWorkingDir %A_ScriptDir%  

; -----------------------------------------------------------
; Sane Navigation Shortcuts with Alt
;
; An easier and more consistent way to send PgUp/PgDown/
; Home/End for laptops with no dedicated keys for these
; functions.
;
; The following shortcuts recruit Alt as a better Fn key, 
; since Alt is on both sides of the keyboard and isn't used
; much otherwise.
;
; Alt + left arrow = Home
; Alt + right arrow = End
; Alt + up arrow = PgUp
; Alt + down arrow = PgDn
;
; Each Alt key (right and left) must be referred to specific-
; ally, else problems arise. Also, it's sometimes necessary 
; to leave out {Alt Up}.
; -----------------------------------------------------------

; Win + Alt + Left Arrow sends Win-Home
#!Left:: send {Win Up}{Alt Up}#{Home}

; PgUp/Down + Home/End shortcuts (Alt + arrow keys):

; first using right-Alt 

; + arrow keys
>!Up::send {RAlt Up}{PgUp}
>!Down::send {RAlt Up}{PgDn}
>!Left::send {RAlt Up}{Home}
>!Right::send {RAlt Up}{End}

; Ctrl + PgUp/Down, Home/End
; function for text editors and word processors
>!^Up::send {Alt Up}{Crtl Up}^{PgUp}
>!^Down::send {Alt Up}{Crtl Up}^{PgDn}
>!^Left::send {Alt Up}{Crtl Up}^{Home}
>!^Right::send {Alt Up}{Crtl Up}^{End}

; Shift + PgUp/Down, Home/End
; function for text editors and word processors
>!+Up::send {Alt Up}{Shift Up}+{PgUp}
>!+Down::send {Alt Up}{Shift Up}+{PgDn}
>!+Left::send {Alt Up}{Shift Up}+{Home}
>!+Right::send {Alt Up}{Shift Up}+{End}

; Ctrl + Shift + PgUp/Down, Home/End
; function for text editors and word processors
>!^+Up::send {Alt Up}{Crtl Up}{Shift Up}^+{PgUp}
>!^+Down::send {Alt Up}{Crtl Up}{Shift Up}^+{PgDn}
>!^+Left::send {Alt Up}{Crtl Up}{Shift Up}^+{Home}
>!^+Right::send {Alt Up}{Crtl Up}{Shift Up}^+{End}

; now using left Alt too

; + arrow keys
<!Up::send {RAlt Up}{PgUp}
<!Down::send {RAlt Up}{PgDn}
<!Left::send {RAlt Up}{Home}
<!Right::send {RAlt Up}{End}

; Ctrl + PgUp/Down, Home/End
; function for text editors and word processors
<!^Up::send {Alt Up}{Crtl Up}^{PgUp}
<!^Down::send {Alt Up}{Crtl Up}^{PgDn}
<!^Left::send {Alt Up}{Crtl Up}^{Home}
<!^Right::send {Alt Up}{Crtl Up}^{End}

; Shift + PgUp/Down, Home/End
; function for text editors and word processors
<!+Up::send {Alt Up}{Shift Up}+{PgUp}
<!+Down::send {Alt Up}{Shift Up}+{PgDn}
<!+Left::send {Alt Up}{Shift Up}+{Home}
<!+Right::send {Alt Up}{Shift Up}+{End}

; Ctrl + Shift + PgUp/Down, Home/End
; function for text editors and word processors
<!^+Up::send {Alt Up}{Crtl Up}{Shift Up}^+{PgUp}
<!^+Down::send {Alt Up}{Crtl Up}{Shift Up}^+{PgDn}
<!^+Left::send {Alt Up}{Crtl Up}{Shift Up}^+{Home}
<!^+Right::send {Alt Up}{Crtl Up}{Shift Up}^+{End}

; Alt + left/right arrow keys conflicts with existing short-
; cuts in file/internet browsers (plus Alt + up arrow con-
; flicts in Explorer). So, use OS X keyboard shortcuts in 
; those programs, instead (plus an imperfect compromise 
; to replace Alt + up).
;
; In OS X, to go back/forward, Command + left and right 
; brackets ('[]') are used. So, the same are set up here,
; except using Alt instead of Command.
;
; An imperfect replacement for Alt-Up (or Command-Up in
; OS X) is Alt + '.' (period). The mnemonic for this is that
; '..' is used on the command line to go up one level in a
; directory.

; --Test if browser or Explorer is active window--
#If WinActive("ahk_class MozillaWindowClass") or WinActive("ahk_class Chrome_WidgetWin_1") or WinActive("ahk_class CabinetWClass")

; Alt-arrow navigation shortcuts for those programs
<!.::send !{Up}
<![::send !{Left}
<!]::send !{Right}

>!.::send !{Up}
>![::send !{Left}
>!]::send !{Right}

; --end Alt shortcuts--


; --Not used--

; I considered using right-Shift plus arrow keys for 
; PgUp/Down and Home/End for browsers and Explorer, since
; Alt + right/left arrows, and Alt + up arrow for Explorer, 
; are already shortcuts in these programs. But, this 
; seemed like too much cognitive dissonance. However, if 
; you want to use that scheme, the below may be useful.

; Exclude browsers and Explorer to avoid conflict with Alt +
; left/right arrow conflicts for Back/Forward shortcuts in
; those programs (and Alt + up arrow in Explorer for "up one
; directory level")
; #If !(WinActive("ahk_class MozillaWindowClass") OR WinActive("ahk_class Chrome_WidgetWin_1") OR WinActive("ahk_class CabinetWClass"))

; >+Up::send {RShift Up}{PgUp}
; >+Down::send {RShift Up}{PgDn}
; >+Left::send {RShift Up}{Home}
; >+Right::send {RShift Up}{End}

Numpad0 & Numpad2::
Run, notepad.exe
return
