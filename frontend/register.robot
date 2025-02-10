*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    keywords/browser-keywords.robot
Resource    keywords/register-keywords.robot

*** Test Cases ***
Cadastrar Novo Usuário
    [Documentation]    Testa cadastro de um novo usuário com sucesso.

    ${RANDOM}    Generate Random String    5    [LETTERS]
    ${email}    Set Variable    test${RANDOM}@serverest.dev

    Abrir o Navegador
    Cadastrar Novo Usuário    nome=${USER_NAME}    email=${email}    password=${PASSWORD}

    Wait Until Page Contains    Cadastro realizado com sucesso    timeout=5s
    Log    Cadastro concluído com sucesso!

    Fechar o Navegador

Cadastrar Novo Administrador
    [Documentation]    Testa cadastro de um novo administrador com sucesso.

    ${RANDOM}    Generate Random String    5    [LETTERS]
    ${email}    Set Variable    test${RANDOM}@serverest.dev

    Abrir o Navegador
    Cadastrar Novo Usuário    nome=${USER_NAME}    email=${email}    password=${PASSWORD}    admin=${true}

    Wait Until Page Contains    Cadastro realizado com sucesso    timeout=5s
    Log    Cadastro concluído com sucesso!

    Fechar o Navegador


Cadastrar Usuário Sem Preencher Campos
    [Documentation]    Testa tentativa de cadastro sem preencher nome, email e senha.

    Abrir o Navegador
    Click Element    ${REGISTER_BUTTON}
    Click Button    ${REGISTER_BUTTON_SUBMIT}

    Wait Until Page Contains    Nome é obrigatório    timeout=5s
    Wait Until Page Contains    Email é obrigatório    timeout=5s
    Wait Until Page Contains    Password é obrigatório    timeout=5s
    Log    Validação de campos obrigatórios funcionando!

    Fechar o Navegador
