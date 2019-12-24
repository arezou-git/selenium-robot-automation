*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resources.robot
#Test Setup  Start Browser and Maximize

*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    # create folder at runtime  firstFolder  secondFolder
    CONCATENATE USERNAME AND PASSWORD  Testing  world
    Open Browser  ${Url}  ${Browser}
    Maximize Browser Window
    ${PageTitle}=  Get Title
    Log  ${PageTitle}
    ${Speed}=  Get Selenium Speed
    Log  ${Speed}
    ${Value}=  Get Value  xpath://input[@type= 'submit']
    Log  ${Value}
    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    Log  ${Text}
    Select From List By Index  name:sex  1
    ${Val}=  Get Selected List Value  name:sex
    Log  ${Val}
    ${Label}=  Get Selected List Label  name:sex
    Log  ${Text}
    ${AllLabels}=  Get List Items  name:sex
    Log  ${AllLabels}
    ${ActualURL}=  Get Location
    Log  ${ActualURL}
    ${PageHTML}=  Get Source
    Log  ${PageHTML}
    ${Attr}  Get Element Attribute  name:fld_username  calss
    Log  ${Attr}
    ${cnt}  Get Element Count  class:field
    Log  ${cnt}