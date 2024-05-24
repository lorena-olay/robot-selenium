*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  firefox
${url}  https://www.amazon.es/?&tag=hydesnav-21&ref=pd_sl_781oit2196_e&adgrpid=152290669839&hvpone=&hvptwo=&hvadid=672291362554&hvpos=&hvnetw=g&hvrand=14974761983089625507&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1005420&hvtargid=kwd-10573980&hydadcr=4855_2227860

*** Test Cases ***
RegisterNewCostumer
    Open browser to home page
    Maximize Browser Window
    close browser
*** Keywords ***
Open browser to home page
    open browser    ${url}  ${browser}


