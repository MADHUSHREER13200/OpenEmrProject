*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials

Library     SeleniumLibrary
Resource    ../base/common_functionality.resource

Test Setup   Launch Browser
Test Teardown    End Browser

Test Template    Verify Invalid Credentials Template

*** Test Cases ***
TC1  Jonh    john123     Dutch   Invalid username or password
TC2  peter   peter123    Danish  Invalid username or password
TC3  Mark    Mark123     Greek   Invalid username or password

