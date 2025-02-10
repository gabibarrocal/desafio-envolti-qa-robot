*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/frontend-variables.robot
Resource   ../variables/locators.robot

*** Keywords ***
Cadastrar Novo Usuário
    [Arguments]    ${nome}    ${email}    ${password}    ${admin}=False
    
    Click Element    ${REGISTER_BUTTON}
    Input Text    ${REGISTER_INPUT_NAME}    ${nome}
    Input Text    ${REGISTER_INPUT_EMAIL}    ${email}
    Input Text    ${REGISTER_INPUT_PASSWORD}    ${password}
    Run Keyword If    ${admin}    Click Element    ${REGISTER_CHECK_ADMIN}
    Click Button    ${REGISTER_BUTTON_SUBMIT}
    Wait Until Page Contains    Cadastro realizado com sucesso    timeout=5s
    Click Element    ${LOGIN_BUTTON}


