*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
Documentation  This File having testcase of testing functionality
# this will be applied to all test
#test timeout  20s

Test Setup  Start Browser and Maximize
Test Teardown  Close Browser Window

*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_003
    [Tags]  Smoke
    #[Setup]  Start Browser and Maximize  http://www.thetestingworld.com/testings  Chrome
    #[Teardown]  Close Browser Window
    Input Text  name:fld_username  testing
    Input Text  name:fld_email  testing@gamail.com
    Input Text  name:fld_password  testing

TC_003_01
    [Tags]  Smoke  Sanity
    #[Setup]  Start Browser and Maximize  http://www.thetestingworld.com/testings  Chrome
    #[Teardown]  Close Browser Window
    Select Radio Button  add_type  office