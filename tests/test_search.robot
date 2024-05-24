*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com/

*** Test Cases ***
Test Dynamic Content
    Open Browser    ${URL}    firefox
    Click Button    id:W0wltc
    Input Text    id:APjFqb    Robot Framework
    Press Key   id:APjFqb   \\13    #la recla enter
    #Click Button    id:search-button
    #Wait Until Page Contains    Search Results
    sleep   3
    Page Should Contain    Robot Framework
    Close Browser
