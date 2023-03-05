#Include modules/Rufaydium.ahk
f1::
Chrome := new Rufaydium() 
Chrome.capabilities.setUserProfile("Default") ; can use Default user 
Page := Chrome.NewSession()
Page.url :=  "https://demo.msk.muzkult.ru/cpa" 
return

f12:: ; close all sessions first then exit the driver
Chrome := new Rufaydium() 
Chrome.QuitAllSessions() ; closing all session one by one
Chrome.driver.exit() ; exitting driver
return