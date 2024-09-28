*** Settings ***
Documentation    Testowanie plikow zrodlowych
Resource    ../Resources/zasoby.robot

*** Test Cases ***
TEST_ZASOBOW
    Wyswietl wybranego uzytkownika    ${MOJ_SLOWNIK}[login]   ${MOJ_SLOWNIK}[haslo]