*** Settings ***
Documentation  Moje zasoby

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