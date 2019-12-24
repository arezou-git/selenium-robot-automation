*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
Documentation  This File having testcase of testing functionality
# this will be applied to all test
#test timeout  20s

*** Variables ***


*** Test Cases ***
TC_002
    [Documentation]  This test case is for cheking browser
    [Timeout]  2mins 50s  Failed to Execute First Test Case
    ${Res}=  Start Browser and Maximize  http://www.thetestingworld.com/testings  Chrome
    Log  ${Res}
    Input Text  name:fld_username  ${Res}
