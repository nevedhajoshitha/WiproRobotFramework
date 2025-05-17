*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

Test Setup      Open the browser
Test Teardown       Close the browser

*** Test Cases ***
Testing the login function
    Validate the login functionality    user1    pass1
    Validate the login functionality    user2    pass2
    Validate the login functionality    user3    pass3
