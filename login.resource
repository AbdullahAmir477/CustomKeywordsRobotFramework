*** Settings ***

Documentation       User actions for the login flow.

Library             SeleniumLibrary

*** Variables ***

${WEBSITE_URL}      https://ricult-qa1.firebaseapp.com
${LANGUAGE}         English
${BROWSER}          Chrome



${VALID_EMAIL_LOGIN_USERNAME}       abdullah.amir@ricult.com
${VALID_EMAIL_LOGIN_PASSWORD}       Hello@12345
${ADMIN_FULL_NAME}                  Abdullah QA
${ADMIN_ROLE}                       Main Admin



${LANGUAGE_SELECT_MAIN}             xpath:/html/body/div[1]/div/div/div[1]/div[2]/div

${LANGUAGE_SELECT_DROPDOWN}             xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[1]/div[1]
${LANGUAGE_SELECT_ENGLISH}              xpath://div[contains(text(),'English')]
${LANGUAGE_SELECT_NEXT}                 xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[3]/div[1]

${LOGIN_OPTIONS_MAIN}                   xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]

${LOGIN_SELECT_EMAIL_OPTION}            xpath://body/div[@id='root']/div[1]/div[1]/div[1]/div[2]/div[1]/div[3]/div[2]

${EMAIL_LOGIN_USERNAME_INPUT_LABEL}     xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div/div
${EMAIL_LOGIN_USERNAME_TEXT_FIELD}      xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]
${EMAIL_LOGIN_USERNAME_INPUT}           xpath://input[@id="username"]
${EMAIL_LOGIN_USERNAME_CONTINUE}        xpath:/html/body/div[1]/div/div/div[1]/div[2]/div[1]/div[3]/div[2]

${EMAIL_LOGIN_PASSWORD_INPUT_LABEL}     xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[1]/div[1]/div[1]/div
${EMAIL_LOGIN_PASSWORD_TEXT_FIELD}      xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[1]/div[2]
${EMAIL_LOGIN_PASSWORD_INPUT}           xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[1]/div[2]/input
${EMAIL_LOGIN_PASSWORD_CONTINUE}        xpath:/html/body/div[1]/div/div/div[1]/div[2]/div/div[3]/div[2]

${NAV_USER_FULL_NAME}               xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[1]
${NAV_USER_ROLE}                    xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[1]/div[2]/div[2]
${NAV_USER_DROPDOWN}                xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[2]/div[1]
${LOGOUT_BUTTON}                    xpath:/html/body/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div[2]/div[2]/div/div/div[4]/div[2]



*** Keywords ***

I Open the RicultX Website
   Open Browser    ${website_url}    ${browser}
   # Open Browser    https://ricult-qa1.firebaseapp.com    Chrome
   Maximize Browser Window
   Wait Until Page Contains Element    ${LANGUAGE_SELECT_DROPDOWN}

I Select the English Language
   Click Element    ${LANGUAGE_SELECT_DROPDOWN}
   Click Element    ${LANGUAGE_SELECT_ENGLISH}
   Click Element    ${LANGUAGE_SELECT_NEXT}

I Choose to Login by Email
   Wait Until Page Contains Element    ${LOGIN_OPTIONS_MAIN}
   Click Element    ${LOGIN_SELECT_EMAIL_OPTION}

I Enter Valid Admin Email
   Wait Until Element Contains    ${EMAIL_LOGIN_USERNAME_INPUT_LABEL}    Email
   Click Element    ${EMAIL_LOGIN_USERNAME_TEXT_FIELD}
   Press Keys    ${EMAIL_LOGIN_USERNAME_INPUT}    ${VALID_EMAIL_LOGIN_USERNAME}
   Wait Until Element Is Enabled    ${EMAIL_LOGIN_USERNAME_CONTINUE}
   Click Element    ${EMAIL_LOGIN_USERNAME_CONTINUE}

I Enter Valid Admin Password
   Wait Until Element Contains    ${EMAIL_LOGIN_PASSWORD_INPUT_LABEL}    Password
   Click Element    ${EMAIL_LOGIN_PASSWORD_TEXT_FIELD}
   Press Keys    ${EMAIL_LOGIN_PASSWORD_INPUT}    ${VALID_EMAIL_LOGIN_PASSWORD}
   Wait Until Element Is Enabled    ${EMAIL_LOGIN_PASSWORD_CONTINUE}
   Click Element    ${EMAIL_LOGIN_PASSWORD_CONTINUE}

I Should See the Name of the Admin User
   Wait Until Keyword Succeeds    8 sec    2 sec    Correct Admin User Name and Role is Shown

Correct Admin User Name and Role is Shown
   Element Text Should Be    ${NAV_USER_FULL_NAME}    ${ADMIN_FULL_NAME}
   Element Text Should Be    ${NAV_USER_ROLE}    ${ADMIN_ROLE}
