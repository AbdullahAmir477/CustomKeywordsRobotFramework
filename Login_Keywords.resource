*** Settings ***
Library     SeleniumLibrary
Resource    Locators.resource

*** Keywords ***
I Open the Website URL
    Open Browser    ${Website_URL}      ${Browser}
    Maximize Browser Window

I want to Login the Account
    Wait Until Page Contains Element    ${Login_Header}
    Input Text    ${Username_Path}    ${Username}
    Input Password    ${Password_Path}    ${Password}
    
#    Element Text Should Be    ${element}    ${elemnet_text}
#    Page Should Contain Element    locator
#    Page Should Contain    text
        
    
    Click Element    ${Login_Button}
    Sleep    5s
    
