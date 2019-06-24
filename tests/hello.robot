*** Settings ***
Documentation               Test Helion Promotion Book
Library                     SeleniumLibrary
Test Teardown               Close Browser

*** Variables ***
${SERVER}                   https://helion.pl/
${LOCAL_SERVER}             http://127.0.0.1:8000/
${BROWSER}                  Chrome

*** Test Cases ***
Get Helion Homepage
    Open Browser            ${SERVER}   ${BROWSER}
    Title Should Be         Księgarnia internetowa informatyczna Helion.pl - wydawnictwo informatyczne, książki, kursy

Check Filip Homepage
    Open Browser            ${LOCAL_SERVER}/filip   ${BROWSER}
    Page Should Contain     FiliP

Check SynApps Homepage
    Open Browser            ${LOCAL_SERVER}/synapps   ${BROWSER}
    Page Should Contain     SynappS
