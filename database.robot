*** Settings ***
Documentation       This is the default settings section
Default Tags        default
Library     SeleniumLibrary
Library     DatabaseLibrary
Library     OperatingSystem


*** Variables ***
${DBHost}         BSS-PC110
${DBName}         xyz
#${DBUsername}     dummy_username

*** Test Cases ***
Connect to Database with Windows Authentication
    [Documentation]     default
    ${connection string}=    Evaluate    "DRIVER={SQL Server};SERVER=${DBHost};DATABASE=${DBName};Trusted_Connection=yes;"     #UID=${DBUsername};
    Connect To Database    pyodbc    ${connection string}
    ${result}=    Query    SELECT * FROM multiple_table
    Disconnect From Database
    Log    ${result}