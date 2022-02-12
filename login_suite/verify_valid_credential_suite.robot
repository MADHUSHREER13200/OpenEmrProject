*** Settings ***
Documentation      This suit file handles all the test case related to the
...     valid credentials

Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

Test Setup   Launch Browser
Test Teardown    End Browser

Test Template    Verify Vaid Credential Template

*** Test Cases ***
TC1  admin   pass    English (Indian)    OpenEMR
TC2  physician   physician   English (Indian)    OpenEMR



*** Keywords ***
Verify Valid Credential Template
     [Arguments]  ${username}    ${password}     ${language}     ${expected_error}
     Launch Browser
     Input Text    id=authUser    ${username}
     Input Password    id=clearPass    ${password}
     Select From List By Label    name=languageChoice    ${language}
     Click Element    xpath=//button[@type='submit']\
     Element Should Contain    //div[contains(text(),'Invalid')]    ${expected_error}
