*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.pl/
${browser}  chrome

*** Keywords ***
Open And Maximize Browser
    Open Browser    ${url}    ${browser}      options=add_argument("--incognito")
    Maximize Browser Window

Close Browser After Test
    Close Browser