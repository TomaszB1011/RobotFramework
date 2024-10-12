*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open browser and wait for element
    Open Browser    https://practicetestautomation.com/practice-test-login/     chrome
    Wait Until Element Is Visible    //*[@id="username"]

Close browser After Test
    Close Browser
