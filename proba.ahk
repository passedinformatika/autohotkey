;"tgy " hatására megnyitja a tesztelesagyakorlatban.hu oldalt és rákeres a Több, mint makró cikkre.
::tgy::tesztelesagyakorlatban.hu{enter}{tab}Több, mint makró{enter}

;Ugyanaz, mint az előző, azzal a különbséggel, hogy nem kell záró " " (szóköz) billenttyűt ütni "tgx" után.
:*:tgx::tesztelesagyakorlatban.hu{enter}{tab}Több, mint makró{enter}

#F1::MsgBox Hello, AutoHotkey! ; Example 1
#t::SendInput tesztelesagyakorlatban.hu{enter}{tab}Több, mint makró{enter}

::pido::
 SendInput %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%
 return 
  
#n::
 IfWinExist Névtelen - Jegyzettömb
    WinActivate
 else
    Run Notepad
 return
 
#w::
 run http://tesztelesagyakorlatban.hu/
 Sleep 1500
 IfWinExist Tesztelés a Gyakorlatban - A szakértő tesztelők lapja
   {
    WinActivate
    SendInput {tab}Több, mint makró{enter}
    return
   }
 return

#q::
 Send, ^c
 Sleep 50
 Run, http://www.google.com/search?q=%clipboard%
 Return
