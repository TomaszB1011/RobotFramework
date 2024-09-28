*** Settings ***
Documentation  Nasz Pierwszy Test
Test Tags  web  chrome

*** Keywords ***

*** Variables ***

*** Test Cases ***
TEST1
    [Tags]  weekend  pl
    Log    Dzien dobry
    Log    Dzis jest sobota
TEST2
    [Tags]  eng  pl
    Log    Niedziela
    Set Tags  hello