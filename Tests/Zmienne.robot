*** Settings ***
Documentation  Testowanie zmiennych
Library    SeleniumLibrary

*** Keywords ***
Wyswietl login
    Log  ${MOJ_SLOWNIK}[login]

Wyswietl haslo
    Log  ${MOJ_SLOWNIK}[haslo]

Wyswietl login i haslo
    Wyswietl login
    Wyswietl haslo

Wyswietl uzytkownika
    [Arguments]     ${UZYTKOWNIK}   ${HASLO}
    Log Many   ${UZYTKOWNIK}    ${HASLO}

Wyswietl pierwszy login
    [Arguments]     ${UZYTKOWNIK}
    Log     ${UZYTKOWNIK}

Wyswietl pierwsze haslo
    [Arguments]     ${HASLO}
    Log     ${HASLO}

Wyswietl wybranego uzytkownika
    [Arguments]     ${UZYTKOWNIK}   ${HASLO}
    Wyswietl pierwszy login    ${UZYTKOWNIK}
    Wyswietl pierwsze haslo    ${HASLO}


*** Variables ***
${MOJA_ZMIENNA_SKALARNA}    Hello variable
${MOJA_ZMIENNA_SKALARNA2}   Hello second variable

@{MOJA_LISTA}   web  eng  pl  html

&{MOJ_SLOWNIK}  login=tomek  haslo=12345
&{MOJ_SLOWNIK2}  login=natalia  haslo=6789

*** Test Cases ***
TEST_ZMIENNYCH
    Log  ${MOJA_ZMIENNA_SKALARNA}
    Log  ${MOJA_ZMIENNA_SKALARNA2}
    Log  ${MOJA_LISTA}
    Log  ${MOJA_LISTA}[1]
    Log  ${MOJA_LISTA}[:2]
    Wyswietl login
    Wyswietl haslo
    Wyswietl login i haslo
    Wyswietl uzytkownika    ${MOJ_SLOWNIK2}[login]  ${MOJ_SLOWNIK2}[haslo]
    Wyswietl uzytkownika    ${MOJ_SLOWNIK}[login]   ${MOJ_SLOWNIK}[haslo]
    Wyswietl wybranego uzytkownika    ${MOJ_SLOWNIK2}[login]  ${MOJ_SLOWNIK2}[haslo]

