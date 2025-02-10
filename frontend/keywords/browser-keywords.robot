*** Settings ***
Library    SeleniumLibrary
Resource    ../variables/frontend-variables.robot

*** Keywords ***
Abrir o Navegador
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window

Fechar o Navegador
    Close Browser