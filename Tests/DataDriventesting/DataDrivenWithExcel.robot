*** Settings ***
Library     SeleniumLibrary
Library     DataDriver      ../TestData/TestData.xlsx   sheet_name=Sheet1
Resource    ../TestData/TestData.resource
Test Template    Login Complete
Suite Setup     TestData.Open browser and wait for element
Suite Teardown      TestData.Close browser After Test

*** Keywords ***
Login Complete
    [Arguments]     ${login}    ${password}     ${page_message}
    Input Text    //*[@id="username"]    ${login}
    Input Text    //*[@id="password"]    ${password}
    Click Element    //*[@id="submit"]
    Page Should Contain    ${page_message}

*** Variables ***

*** Test Cases ***
Login Functionality With Excel
    Login Complete    $login    $password    $page_message