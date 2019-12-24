*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/Locators.py

*** Variables ***
${Browser}  Chrome
${Url}  http://www.thetestingworld.com/testings

*** Test Cases ***
First json locator test
    Open Browser  ${Url}  ${Browser}
    ${username}=  Read Element Locator  Registration.username_textbox_name
    Input Text  name:${username}  testing

*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [return]  ${result}