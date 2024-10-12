*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Keyword 1
    Log     Keyword 1 was run
    Close Browser

Keyword 2
    Log     Keyword 2 was run
    Close Browser

Keyword 3
    Log     Keyword 3 was run
    Close Browser

*** Variables ***
${a}    10

*** Test Cases ***
Jewelry
    Open Browser    https://demowebshop.tricentis.com/jewelry   chrome
    ${list_of_items}=   Get Element Count    class:product-item
    Run Keyword If   ${list_of_items}==10   Keyword 1
    ...  ELSE IF     ${list_of_items}<10     Keyword 2
    ...  ELSE    Keyword 3

TEST2
    IF  ${a}==10
        Log  Right
    ELSE
        Log  Not Right

    END
