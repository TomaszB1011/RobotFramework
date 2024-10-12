*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Search Given Phrase In The Search Box
    Input Text    ${xpath_objects}[search_box]    ${search_phrase}
    Sleep    2s
    Click Element    ${xpath_objects}[search_button]
    Sleep    2s

Check If Page Contains Element
    Page Should Contain   ${search_result_checker} ${search_phrase}
    Sleep    2s

Mark "kup teraz" Button
    Click Element    ${xpath_objects}[buy_now_button]
    Sleep    2s

Mark "stan:nowy" in the checkbox
    Select Checkbox    ${xpath_objects}[checkbox_new]
    Sleep    2s

Limit results for price up to 100zl
    Input Text    ${xpath_objects}[price_box]    ${price}
    Sleep    2s
    Press Keys    ${xpath_objects}[confirm_price]   RETURN
    Sleep    2s



*** Variables ***
${search_phrase}    klocki
${url}  https://www.ebay.pl/
${browser}  chrome
${search_result_checker}    Wyniki dla
${price}    100

&{xpath_objects}    search_box=//*[@id="gh-ac"]
...                 search_button=//*[@id="gh-btn"]
...                 buy_now_button=//*[@id="mainContent"]/div[1]/div/div[2]/div[2]/div[1]/div/ul/li[3]/a/span
...                 checkbox_new=//*[@id="x-refine__group__1"]/ul/li[1]/div/a/div/span/input
...                 price_box=//*[@id="s0-60-0-12-8-0-1-2-2-9[2]-textrange-endParamValue-textbox"]
...                 confirm_price=//*[@id="x-refine__group__2"]/div[1]/div[2]/div[1]/div/div[3]/button