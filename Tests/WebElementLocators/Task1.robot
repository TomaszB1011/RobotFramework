*** Settings ***
Documentation  To jest test, w którym testujemy otwieranie przeglądarki i wyszukiwarkę
...            1. Otwieramy przeglądarkę na stronie
...            2. Użytkownik klika na pole do wyszukiwania i wpisuje zadany tekst
...            3. Użytkownik klika na przycisk "SZUKAJ" aby wyświetlić rezultaty
...            4. Weryfikujemy, czy pojawiły się wyniki
...            5. Zaznaczamy opcję, aby były wyświetlane wyniki dla opcji "kup teraz"
...            6. Zaznaczamy opcję z checkboxa "Nowy"
...            7. Wpisujemy w pole Maks zł - 100, aby wyświetlić wyniki dla cen do 100 zł
...            8. Klikamy przycisk zatwierdź zakres cen - strzałka przy polu z ceną Maks
...            9. Zamykamy przeglądarkę
Library     SeleniumLibrary
Resource    ../../Resources/common.resource
Resource    ../../Resources/zasoby_ebay.resource
Test Setup  Open And Maximize Browser
Test Teardown   Close Browser After Test


*** Test Cases ***
SEARCH
    [Tags]  chrome  selenium  search
    Search Given Phrase In The Search Box
    Check If Page Contains Element
    Mark "kup teraz" Button
    Mark "stan:nowy" in the checkbox
    Limit results for price up to 100zl