*** Settings ***
Library     SeleniumLibrary

Resource    Login_Keywords.resource
Resource    My_Info_Keywords.resource

*** Test Cases ***
TC 1: Open and Logged in Website
    Given I Open the Website URL
    When I want to Login the Account



#TC 2: I Buy a Product
#    When I Open the and Buy the Product

