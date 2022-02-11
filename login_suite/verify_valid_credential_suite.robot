*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials

Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

*** Test Cases ***
Verify Valid Credentials Test
    Launch Browser
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    Title Should Be    OpenEMR
    Close Browser