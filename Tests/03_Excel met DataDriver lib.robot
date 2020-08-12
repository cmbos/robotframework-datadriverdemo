*** Settings ***
Library           DataDriver  file=data/login_excel.xlsx  exclude=2

Test Template     Login

*** Test Cases ***
Login with username  ${username}  ${password}

*** Keywords ***
Login
    [Arguments]  ${username}  ${password}
    log  ${username}
    log  ${password}




