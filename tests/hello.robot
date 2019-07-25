*** Settings ***
Documentation               Test Suite Documentation
Library                     SeleniumLibrary
Test Teardown               Close Browser

*** Variables ***
${Server}                   https://helion.pl/
${LocalServer}              http://127.0.0.1:8000/
${Browser}                  chrome

*** Test Cases ***
Get Helion Homepage
    Open Browser            ${Server}   ${Browser}
    Title Should Be         Księgarnia internetowa informatyczna Helion.pl - wydawnictwo informatyczne, książki, kursy

Check Filip Homepage
    Open Browser            ${LocalServer}filip   ${Browser}
    Page Should Contain     FiliP

Check Helion Promotion
    [Documentation]         Failing tests for screenshot

    Open Browser            ${Server}   ${Browser}
    Title Should Be         Amazon.com
