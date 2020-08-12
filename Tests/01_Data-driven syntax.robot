*** Settings ***
Test Template  Login

*** Test Cases ***           USERNAME  PASSWORD
Right user empty pass        demo      ${EMPTY}
Right user wrong pass        demo      FooBar
Empty username               ${EMPTY}  mode
Username and password empty  ${EMPTY}  ${EMPTY}

*** Keywords ***
Login
    [Arguments]  ${username}  ${password}
    log  ${username}
    log  ${password}