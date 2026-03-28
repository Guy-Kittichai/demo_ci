*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
GET Post By ID
    Create Session    jsonplaceholder    ${BASE_URL}
    ${response}=    GET On Session    jsonplaceholder    /posts/1
    Status Should Be    200    ${response}
    Should Be Equal As Integers    ${response.json()}[id]    1
