*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/login-keywords.robot
Resource    ../variables/locators.robot
Resource    ../variables/frontend-variables.robot

*** Keywords ***

Fazer Login
    [Arguments]    ${email}    ${senha}    ${admin}=None
    Input Text    ${LOGIN_INPUT_EMAIL}    ${email}
    Input Text    ${LOGIN_INPUT_PASSWORD}    ${PASSWORD}
    Click Button    ${LOGIN_BUTTON_SUBMIT}
    IF    '${admin}' == 'True'
        Wait Until Page Contains    Bem Vindo    timeout=5s
    ELSE
        Wait Until Page Contains    Serverest Store    timeout=5s
    END
    
