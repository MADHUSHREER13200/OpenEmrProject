*** Settings ***
Documentation   This suite file verifies all test cases related to valid credentials


Resource     ../pages/login_page.resource

Library    DataDriver       file=../test_data/openEMR_data.xlsx         sheet_name=VerifyValidCredentialsTemplate

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Valid Credential Template

*** Test Cases ***
TC1

*** Keywords ***
Verify Valid Credential Template
    [Arguments]     ${username}     ${password}     ${language}     ${expected_title}
    Enter Username       ${username}
    Enter password       ${password}
    Select Language Using Label       ${language}
    Click Login
    Validate Invalid Error Message    ${expected_title}

