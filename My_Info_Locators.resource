*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${Add_Cart}                 xpath://div[@class='inventory_list']//div[1]//div[3]//button[1]
${Shopping_Cart}            xpath://*[name()='path' and contains(@fill,'currentCol')]
#${your}                     Your Cart
${Check_Out_Button}         xpath://a[normalize-space()='CHECKOUT']
#${checkOut}                 Checkout: Your Information
${First_Name}               xpath://input[@id='first-name']
${Last_Name}                xpath://input[@id='last-name']
${Postal_Code}              xpath://input[@id='postal-code']
${Continue_Button}          xpath://input[@value='CONTINUE']
${Finish_Button}            xpath://a[normalize-space()='FINISH']










































#${Admin}                    xpath://li[1]//a[1]//span[1]
#${Syetme_Title}             System Users
#${Add_Button}               xpath://button[normalize-space()='Add']
#${User_Title}               Add User
#${User_Role}                xpath:(//div[contains(text(),'-- Select --')])[1]
#${Select_User_Role}         xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]
#${Employee_Name}            xpath://input[@placeholder='Type for hints...']
#${Status}                   xpath://div[3]//div[1]//div[2]//div[1]//div[1]//div[1]
#${Status_Select}            xpath:/html/body/div/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div/div[1]
#${Username}                 xpath:(//input[@class='oxd-input oxd-input--active'])[2]
#${Password}                 xpath:(//input[@type='password'])[1]
#${Confirm_Password}         xpath:(//input[@type='password'])[2]
#${Save}                     xpath://button[normalize-space()='Save']







#${My_Info}                  xpath://span[normalize-space()='My Info']
#${Personal_Title}           xpath://h6[normalize-space()='Personal Details']
#${First_N}                  name=firstName
#${First_Name}               xpath:xpath:(//input[@placeholder='First Name'])[1]
#${Last_Name}                xpath://input[@placeholder='Last Name']
#${Empl_ID}                  xpath:(//input)[5]
#${Other_ID}                 xpath:(//input)[6]
#${Driving_License}          xpath:(//input)[7]
#${Exp_Date_License}         xpath:(//input[@placeholder='yyyy-dd-mm'])[1]
#${Country_Dropdown}         xpath:(//i)[7]
#${Country_Select}           xpath://div[contains(text(),'Pakistani')]
#${Martial}                  xpath:(//i)[8]
#${Martial_Status}           xpath://div[contains(text(),'Single')]
#${DOB}                      xpath:(//input[@placeholder='yyyy-dd-mm'])[2]                      #(//i)[9]
#${DOB_Select}               2020-25-11
#${Radio}                    xpath://label[normalize-space()='Male']
#${Check_Box}                xpath://label[normalize-space()='Yes']
#${Save_Button}              xpath:(//button[@type='submit'][normalize-space()='Save'])[1]