*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
*** Variables ***
@{LIST}     Tomek   Basia   Kasia   Franek

*** Test Cases ***
TEST1
    FOR    ${element}    IN    @{LIST}
        Log    ${element}

    END

TEST2
    FOR    ${i}    IN RANGE     0   5
        Log    ${i}

    END

TEST3
    FOR    ${i}    IN   0   1   2   3
        Log    ${i}
        Exit For Loop If    ${1}==2

    END

TEST4
    FOR    ${i}    IN   0 1 2 3
        Log    ${i}

    END
    
TEST5
    Open Browser    https://demowebshop.tricentis.com/books     chrome
    Maximize Browser Window
    Sleep    1s
    @{ALLItems}     Get List Items    //*[@id="products-orderby"]
    FOR    ${i}    IN    @{ALLItems}
        Log    ${i}
        Log    ${ALLItems}
        Select From List By Label    //*[@id="products-orderby"]    ${i}
        Capture Page Screenshot
    END
    Close Browser