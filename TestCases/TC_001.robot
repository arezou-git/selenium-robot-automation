*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite
default tags  dflt
force tags  forced

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser Start and Close
    [Documentation]  This test case is to check registration functionality of application
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    # After each line it will wait 2 seconds then execute next line
    #Set Selenium Speed  2seconds
#    Input Text  name:fld_username  testing
#    Input Text  xpath://input[@name='fld_email']  are@gmail.com
#    Input Text  name:fld_password  123456
#    Clear Element Text  name:fld_username
    Select Radio Button  add_type  office
    Select Checkbox  name:terms
    Select From List By Index  name:sex  2
    Select From List By Value  name:sex  1
    Select From List By Label  name:sex  Female
    #Click Link  xpath://a[text()='Read Detail']
    Click Button  xpath://input[@type='submit']
    Enter Username Password Email  testing  are@gmail.com  123456
    #Close Browser

*** Keywords ***
Enter Username Password Email
    [Arguments]  ${username}  ${email}  ${password}
    Input Text  name:fld_username  ${username}
    Input Text  xpath://input[@name='fld_email']  ${email}
    Input Text  name:fld_password  ${password}
