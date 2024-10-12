*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
*** Variables ***

*** Test Cases ***
Checkbox Check
    Open Browser    https://demoqa.com/automation-practice-form     chrome
    Maximize Browser Window
    Sleep    1s
    
    Page Should Contain Checkbox    //*[@id="hobbies-checkbox-1"]
    Page Should Not Contain Checkbox    //*[@id="hobbies-checkbox-10"]
    
    Click Element    //*[@id="hobbiesWrapper"]/div[2]/div[1]
    Sleep    1s
    Click Element    //*[@id="hobbiesWrapper"]/div[2]/div[2]
    Sleep    1s

    Checkbox Should Be Selected    id:hobbies-checkbox-1
    Sleep    1s
    Checkbox Should Not Be Selected    id:hobbies-checkbox-3
    Sleep    1s

    Click Element    //*[@id="hobbiesWrapper"]/div[2]/div[1]
    Sleep    1s