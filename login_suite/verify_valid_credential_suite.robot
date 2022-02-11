*** Settings ***
Documentation    This suite file handles all the test case related to the
...      valid credentials

Library  SeleniumLibrary

*** Test Cases ***
Verify Valid Credential Test
     Open Browser    browser=edge        executable_path=${EXECDIR}${/}drivers${/}msedgedriver.exe
     Maximize Browser Window
     Set Selenium Implicit Wait  20s
     Go To  url=https://demo.openemr.io/b/openemr
     Input Text  id=authUser     admin=123
     Input Password  id=clearPass    pass
     Select From List By Label  name=languageChoice  English (Indian)
     Click Element  xpath=//button[@type='submit]
     Title Should Be  OpenEMR
     Close Browser

