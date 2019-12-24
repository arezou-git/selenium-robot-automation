*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py


*** Variables ***



*** Keywords ***
Start Browser and Maximize
    [Documentation]  This keword is for start browser and miximize window
    #[Timeout]  5s
    [Arguments]  ${UserUrl}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
#    Log  ${Title}
#    [return]  ${Title}

Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Close Browser


Before Each Test Suite
    Log  Before Eech Test Suite


After Each Test Suite
    Log  After Each Test Suite

Create Folder At Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_folder  ${foldername}
    create sub folder  ${subfoldername}
    Log  "Task Done Successfully"

concatenate Username and Password
    [Arguments]  ${username}  ${password}
    ${resultval}=  concatenate_two_values  ${username}  ${password}
    Log  ${resultval}