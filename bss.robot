*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
TC_001: Open the page
   Given I Open the BSS Website





*** Variables ***

${WEBSITE_URL}      https://projects.boundlesstechnologies.net/bss/
${LANGUAGE}         English
${BROWSER}          Chrome




*** Keywords ***
I Open the BSS Website
   Open Browser    ${WEBSITE_URL}    ${BROWSER}
   Maximize Browser Window
   Sleep    4s
