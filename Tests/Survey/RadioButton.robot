*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
*** Variables ***

*** Test Cases ***
Radio Button Check
    [Tags]  radio   button  chrome
    Open Browser    https://demoqa.com/automation-practice-form     chrome
    Maximize Browser Window
    Sleep    1s

    Page Should Contain Radio Button    //*[@id="gender-radio-1"]
    Sleep    1s
    
    Page Should Not Contain Radio Button    //*[@id="gender-radio-5"]
    Sleep    1s
    
    Radio Button Should Not Be Selected    gender
    Sleep    1s

#    Select Radio Button    gender    Male
#    Sleep    1s

    Click Element    //*[@id="genterWrapper"]/div[2]/div[1]
    Sleep    1s

    Radio Button Should Be Set To    gender    Male
    Sleep    1s
