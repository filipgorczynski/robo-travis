*** Settings ***
Documentation               Test Helion Promotion Book
Library                     SeleniumLibrary
Test Teardown               Close Browser

*** Variables ***
${SERVER}                   https://helion.pl/
${BROWSER}                  Chrome

*** Test Cases ***
Display Promoted Book
    Open Browser            ${SERVER}   ${BROWSER}
    Title Should Be         Księgarnia internetowa informatyczna Helion.pl - wydawnictwo informatyczne, książki, kursy
