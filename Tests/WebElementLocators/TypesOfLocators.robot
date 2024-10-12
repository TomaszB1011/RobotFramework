*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
*** Variables ***

*** Test Cases ***
TYPES
    Open Browser    https://www.ebay.pl/    chrome      options=add_argument("--incognito")
    Maximize Browser Window
    # uzycie id
    Input Text    id:gh-ac    id
    Sleep    1s

    # uzycie name
    Input Text    name:_nkw    name
    Sleep    1s

    # uzycie xpath
    Input Text    xpath: //*[@id="gh-ac"]    xpath
    Sleep    1s

    # uzycie css
    Input Text    css:#gh-ac    css
    Sleep    1s

    # uzycie link
    Click Link    link:Zapisane
    Sleep    5s

    # uzycie partial link
    Click Link    partial link:Warun
    Sleep    5s