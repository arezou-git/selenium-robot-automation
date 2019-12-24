*** Settings ***
Resource  ../Resources/Resources.robot

*** Variables ***
*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize  http://www.thetestingworld.com/testings  Chrome
    when Create Folder At Runtime  ABCD  XSZ
    Then concatenate Username and Password  Testing  world
