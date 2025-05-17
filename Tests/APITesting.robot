*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***
${BaseUrl}      https://jsonplaceholder.typicode.com/

*** Test Cases ***
Get request in API
    Create Session    session1    ${BaseUrl}
    ${response}=    Get Request    session1    posts
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.status_code}

Post request in API
    Create Session    session2    ${BaseUrl}
    ${data}=    Create Dictionary      userid=222    id=22
    ${response}=    Post Request    session2    posts   json=${data}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.json}

Put request in API
    Create Session    session3    ${BaseUrl}
    ${data}=    Create Dictionary      userid=222    id=221
    ${response}=    Put Request    session3    posts/1   json=${data}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json}

Delete request in API
    Create Session    session4    ${BaseUrl}
    ${response}=    Delete Request    session4    posts/1
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json}