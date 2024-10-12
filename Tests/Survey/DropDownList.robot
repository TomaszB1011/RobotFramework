*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
*** Variables ***

*** Test Cases ***
Dropdown List Check
    Open Browser    https://demowebshop.tricentis.com/books     chrome
    Maximize Browser Window
    Sleep    1s

    Page Should Contain List    //*[@id="products-orderby"]
    Page Should Not Contain List    //*[@id="products-orderbyyyyyyyyyyy"]

    @{ALLItems}     Get List Items    //*[@id="products-orderby"]
    ${ListLabes}     Get Selected List Labels    //*[@id="products-orderby"]
    ${ListValues}     Get Selected List Values    //*[@id="products-orderby"]

    Select From List By Index    //*[@id="products-orderby"]    2
    Select From List By Value    //*[@id="products-orderby"]    https://demowebshop.tricentis.com/books?orderby=11
    Sleep    1s

    List Selection Should Be    //*[@id="products-orderby"]     Price: High to Low
