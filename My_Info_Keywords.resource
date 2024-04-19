*** Settings ***
Library     SeleniumLibrary
Resource    My_Info_Locators.resource


*** Keywords ***
I Open the and Buy the Product
    Wait Until Page Contains    Products
    Click Element    ${Add_Cart}
    Click Element    ${Shopping_Cart}
    Wait Until Page Contains    Your Cart
    Click Element    ${Check_Out_Button}
    Wait Until Page Contains    Checkout: Your Information
    Input Text    ${First_Name}    Abdullah
    Input Text    ${Last_Name}    QA
    Input Text    ${Postal_Code}    12345
    Click Element    ${Continue_Button}
    Wait Until Page Contains    Checkout: Overview
    Click Element    ${Finish_Button}
    Wait Until Page Contains    THANK YOU FOR YOUR ORDER
    Sleep    3s
    Close Browser
































#I Open and Fill the Admin Form
#    Click Element    ${Admin}
#    Wait Until Page Contains    ${Syetme_Title}
#    Click Element    ${Add_Button}
#    Wait Until Page Contains    ${User_Title}
#    Click Element    ${User_Role}
#    Sleep    2s
#    Click Element    ${Select_User_Role}
#    Sleep    2s
#    Input Text    ${Employee_Name}    Ali Ahmed khan
#    Click Element    ${Status}
#    Click Element    ${Status_Select}
#    Input Text    ${Username}    Admin
#    Input Password    ${Password}    Admin123
#    Input Password    ${Confirm_Password}    Admin123
#    Click Element    ${Save}
#    Sleep    4s
#











#    Click Element    ${My_Info}
#    Wait Until Page Contains Element    ${Personal_Title}
#    Sleep    2s
#    #Clear Element Text    (//div)[47]        #${First_Name}
##    Clear Element Text    ${Last_Name}
##    Clear Element Text    ${Empl_ID}
##    Clear Element Text    ${Other_ID}
##    Clear Element Text    ${Driving_License}
##    Clear Element Text    ${Exp_Date_License}
##    Clear Element Text    ${DOB}
#    #Click Element    ${First_Name}
#    #Clear Element Text      ${First_Name}              #${First_N}
#    Input Text    ${First_Name}    Abdullah
#    Clear Element Text    ${First_Name}
#    Sleep    3s
#    Input Text    ${Last_Name}    Amir
#    Input Text    ${Empl_ID}    12345
#    Input Text    ${Other_ID}     23432
#    Input Text    ${Driving_License}    abc12345
#    Input Text    ${Exp_Date_License}    2024-10-04
#    Click Element    ${Country_Dropdown}
#    #Select From List By Index    ${Country_Select}
#    Click Element    ${Country_Select}
#    #Select All From List    ${Country_Select}
#    Click Element    ${Martial}
#    Click Element    ${Martial_Status}
#    Input Text    ${DOB}    ${DOB_Select}
#    Select Radio Button    ${Radio}    Male
#    #Click Element    ${Radio}
#    Click Element    ${Check_Box}
#    Click Element    ${Save_Button}
