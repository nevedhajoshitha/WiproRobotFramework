*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library     DataDriver      ../Data/SampleData.csv

Test Setup      Open the browser
Test Teardown       Close the browser
Test Template      Login functionality

*** Keywords ***
Login functionality
    [Arguments]     ${username}    ${password}
    Enter username and password    ${username}    ${password}
    Click login button

*** Test Cases ***
Test the login function with excel   ${username}    ${password}