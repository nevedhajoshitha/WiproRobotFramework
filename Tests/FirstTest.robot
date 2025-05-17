*** Settings ***
Library     SeleniumLibrary
Library    String

*** Variables ***
${url}     https://demoqa.com/buttons
${browser}      headlesschrome
${username}     user1
${password}     pwd1
${handles}
${msg}

*** Keywords ***
Open the browser
     Open Browser   ${url}     ${browser}
     Maximize Browser Window

Close the browser
    Close Browser

Steps for handling alert
    Click Element    xpath=//button[@id='promtButton']
    Input Text Into Alert    welcome
    Handle Alert
    Sleep   2s

Steps for handling frames
    Select Frame    id=frame1
    ${msg}=     Get Text    id=sampleHeading
    Log    ${msg}
    Unselect Frame

Steps for multiple window handling
    Click Element    id=tabButton
    ${handles}=    Get Window Handles
    Log    ${handles}
    Switch Window   ${handles}[1]
    Sleep    2s
    ${msg}=     Get Text    id=sampleHeading
    Log    ${msg}

Validate the login
    Input Text   id=email   ${username}
    Input Text   id=pass    ${password}
    Click Button    Log in

*** Test Cases ***
Launching the browser
    Open the browser

Mouse actions
    Mouse Over    id=doubleClickBtn
    Sleep    2s
    Double Click Element    id=doubleClickBtn
    Sleep    2s
    Open Context Menu    id=rightClickBtn
    Sleep    5s
    Go To    https://demoqa.com/droppable
    Drag And Drop    id=draggable    id=droppable
    Sleep    2s

Closing the browser
    Close All Browsers