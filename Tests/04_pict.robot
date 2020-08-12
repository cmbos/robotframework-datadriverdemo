*** Settings ***
Library           DataDriver  file=data/login.pict

Test Template     Login

*** Test Cases ***
Login with username  ${username}  ${password}

*** Keywords ***
Login
    [Arguments]  ${username}  ${password}
    log  ${username}
    log  ${password}




