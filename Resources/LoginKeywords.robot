*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.facebook.com/
${browser}      chrome

*** Keywords ***
Open the browser
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

Close the browser
    Close All Browsers

Enter username and password
    [Arguments]     ${username}     ${password}
    Input Text    id=email    ${username}
    Input Text    id=pass    ${password}

Click login button
    Click Button    xpath=//button[@name='login']
    Sleep    2s

