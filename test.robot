*** Settings ***

Documentation       Test all the ways that the user can log in to RicultX:
...                 . With email and password.


Library             SeleniumLibrary
Resource            login.resource



*** Test Cases ***

TC_001: Logging in to the RicultX Site in English as Admin Should Show the Main Page
   Given I Open the RicultX Website
   When I Select the English Language
   And I Choose to Login by Email
   And I Enter Valid Admin Email
   And I Enter Valid Admin Password
   Then I Should See the Name of the Admin User
  # And Logout of RicultX
