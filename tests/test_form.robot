*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  firefox
${url}  https://demo.nopcommerce.com/
${GECKODRIVER}  ../geckodriver


*** Test Cases ***
RegisterNewCostumer
    Open browser to home page
    Go to register page
    Fill Registration Form
    #Close Browser

*** Keywords ***
Open browser to home page
    open browser    ${url}  ${browser}
    Maximize Browser Window
Go to register page
    click link  xpath://a[@class='ico-register']

Fill Registration Form
    [Arguments]    ${first_name}=John   ${password}=123456
    input text  id=FirstName    ${first_name}
    Input Text    id=LastName    Doe
    Input Text    id=Email    johndoe@example.com
    Input Text    id=Password    ${password}
    Input Text    id=ConfirmPassword    ${password}
    # radio button is name value
    select radio button     Gender  M
    # by index value label
    select from list by label   DateOfBirthDay  4
    select from list by value   DateOfBirthMonth  2
    select from list by value   DateOfBirthYear  1918
    sleep   3
    Click Element    id=register-button
    Wait Until Page Contains    Your registration completed
    Capture Page Screenshot

