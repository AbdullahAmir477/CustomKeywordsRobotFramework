*** Settings ***
Library     SeleniumLibrary
Library     custom_keyword.py




*** Test Cases ***
TC: 1 Example Test
    Open Browser    https://www.saucedemo.com/v1/
    Custom Login    standard_user    secret_sauce
    Custom Verify Text    Product
    Close Browser





#TC: 2 Check Product Availability Test
#    Open Browser    https://www.saucedemo.com/v1/inventory.html
#    ${availability}    Check Product Availability    Backpack
#    Log    ${availability}
#    Close Browser



TC: 3 Add Product To Cart Test
    Open Browser    https://www.saucedemo.com/v1/inventory.html
    ${result}    Add Product To Cart If Available    Backpack
    Log    ${result}
    Close Browser