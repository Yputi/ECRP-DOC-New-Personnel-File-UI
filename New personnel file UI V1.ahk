#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

Gui, add, Text,, Enter full name:
Gui, Add, Edit, vname

Gui, add, Text,, Enter phone number:
Gui, Add, Edit, vphonenr

Gui, add, Text,, Enter date of birth (dd/mm/yy):
Gui, Add, Edit, vdob

Gui, add, Text,, Enter rank:
Gui, Add, ComboBox, vRank, Warden|Deputy Warden|Assistant Warden|Commander|Captain|Lieutenant|Sergeant|Corporal|Senior Correctional Officer|Correctional Officer III|Correctional Officer II|Correctional Officer I|Correctional Trainee

Gui, add, Text,, Enter badge Nr:
Gui, Add, Edit, vbadge

Gui, add, Text,, Enter starting date:
Gui, Add, Edit, vstartdate

Gui, add, Text,, Enter employment contract url:
Gui, Add, Edit, w500 vempurl

Gui, add, Text,, Enter government profile URL:
Gui, Add, Edit, w500 vprourl

Gui, add, Text,, Enter fluent language:
Gui, Add, Edit, vfluentlan

Gui, add, Text,, Enter BLS certified (yes or no):
Gui, Add, Edit, vbls

Gui, add, Text,, ((Enter Discord ID:))
Gui, Add, Edit, vdiscordid

Gui, add, Text,, ((Enter ECRP forum username:))
Gui, Add, Edit, vecrpforumname

Gui, Add, Button, gSubmit, submit

Gui, Add, Button, gClear, Reload (clear)

Gui, Add, Text, xp yp+50 cBlue gLink1, Employee roster
Gui, Add, Text, xp yp+25 cBlue gLink2, Personnel files
Gui, Add, Text, xp yp+25 cBlue gLink3, Contracts of Employment

Gui, Show, Autosize
return

Submit:
GuiControlGet, name
GuiControlGet, phonenr
GuiControlGet, dob
GuiControlGet, rank
GuiControlGet, badge
GuiControlGet, startdate
GuiControlGet, empurl
GuiControlGet, prourl
GuiControlGet, fluentlang
GuiControlGet, bls
GuiControlGet, discordid
GuiControlGet, ecrpforumname
FileRead, GetFromFile, %A_ScriptDir%\REQUIRED_DONT_TOUCH.txt
Result = [img]https://imgur.com/JWgKiNU.png[/img]`n[docsubtitle]Officer Details[/docsubtitle]`n[divbox=white]`n[ol][/ol]`n[b]Full Name:[/b] %name%`n[b]Phone Number:[/b] %phonenr%`n[b]D.O.B:[/b] %dob%`n[ol][/ol]`n[hr]`n[b]Rank:[/b] %rank%`n[b]Badge Number:[/b] %badge%`n[b]Start Date:[/b] %startdate%`n[b][url=%empurl%]Employment Contract on File[/url][/b]`n[b][url=%prourl%]Government Website Profile[/url][/b]`n[ol][/ol]`n[hr]`n[b]Fluent Languages:[/b] %fluentlang%`n[b]Basic Life Support Certified:[/b] %bls%`n[ol][/ol]`n[hr]`n[b](( Discord ID:[/b] %discordid% [b]))[/b] `n[b](( Eclipse Forum Username:[/b] %ecrpforumname% [b]))[/b]`n%GetFromFile%
clipboard := Result
StringReplace, clipboard, clipboard, â˜ , , All ;To fix the unicode character from txt file (Unchecked box)
StringReplace, clipboard, clipboard, ðŸ—µ, 🗵, All ;To fix the unicode character from txt file (Checked box)
StringReplace, clipboard, clipboard, âŸ¶, ⟶, All ;To fix the unicode character from txt file (Arrow)
MsgBox Output has been placed on your clipboard!
return

Clear:
Reload

Link1:
  Run, https://gov.eclipse-rp.net/viewtopic.php?p=196037#p196037
Return

Link2:
  Run, https://gov.eclipse-rp.net/viewforum.php?f=732
Return

Link3:
  Run, https://gov.eclipse-rp.net/viewtopic.php?t=53295
Return

GuiClose:
ExitApp