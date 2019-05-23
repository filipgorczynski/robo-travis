*** Settings ***
Documentation               Test Django homepage
Library                     SeleniumLibrary
Test Teardown               Close Browser

*** Variables ***
${SERVER}                   http://127.0.0.1:8000/
${BROWSER}                  Chrome

*** Test Cases ***
Open Homepage
    Open Browser            ${SERVER}   ${BROWSER}
    Title Should Contain    Django
