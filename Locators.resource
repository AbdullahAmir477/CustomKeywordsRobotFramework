*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Website_URL}              https://www.saucedemo.com/v1/
${Browser}                  Chrome
${Login_Header}             xpath://div[@class='login_logo']
${Username_Path}            xpath://input[@id='user-name']
${Username}                 abd   #standard_user
${Password_Path}            xpath://input[@id='password']
${Password}                 abb   #secret_sauce
${Login_Button}             xpath://input[@id='login-button']


${element}                  xpath:/html/body/div/div/div[2]/div[1]/div/div/form/div[3]/h3/text()
${elemnet_text}             Epic sadface: Username and password do not match any user in this service






#${Website_URL}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
#${Browser}                  Chrome
#${Login_Header}             xpath://h5[normalize-space()='Login']
#${Username_Path}            xpath://input[@placeholder='Username']
#${Username}                 Admin
#${Password_Path}            xpath://input[@placeholder='Password']
#${Password}                 admin123
#${Login_Button}             xpath://button[normalize-space()='Login']










