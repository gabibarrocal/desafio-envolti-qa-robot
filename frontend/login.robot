*** Settings ***
Library    SeleniumLibrary
Library    String

Resource    variables/frontend-variables.robot
Resource    variables/locators.robot

Resource    keywords/browser-keywords.robot
Resource    keywords/register-keywords.robot
Resource    keywords/login-keywords.robot

*** Test Cases ***
Login de usuário com Sucesso
    [Documentation]    Testa login válido no sistema.

    ${RANDOM}    Generate Random String    5    [LETTERS]
    ${email}    Set Variable    test${RANDOM}@serverest.dev
    
    Abrir o Navegador
    Cadastrar Novo Usuário    nome=${USER_NAME}    email=${email}    password=${PASSWORD}
    Fazer Login    ${email}     password=${PASSWORD}

    Log    Login realizado com sucesso!

    Fechar o Navegador

Login de administrador com Sucesso
    [Documentation]    Testa login válido no sistema.

    ${RANDOM}    Generate Random String    5    [LETTERS]
    ${email}    Set Variable    test${RANDOM}@serverest.dev
    
    Abrir o Navegador
    Cadastrar Novo Usuário    nome=${USER_NAME}    email=${email}    password=${PASSWORD}    admin=${true}
    Fazer Login    ${email}     password=${PASSWORD}    admin=${true}

    Log    Login realizado com sucesso!

    Fechar o Navegador
Login com Credenciais Inválidas
    [Documentation]    Testa login com email ou senha incorretos.

    Abrir o Navegador
    Fazer Login    usuario_invalido@serverest.dev    senhaerrada

    Wait Until Page Contains    Email e/ou senha inválidos    timeout=5s
    Log    Erro de login validado corretamente!

    Fechar o Navegador

Login sem Preencher Campos
    [Documentation]    Testa tentativa de login sem preencher email e senha.

    Abrir o Navegador
    Click Button    ${LOGIN_BUTTON_SUBMIT}

    Wait Until Page Contains    Email é obrigatório    timeout=5s
    Wait Until Page Contains    Password é obrigatório    timeout=5s
    Log    Validação de campos obrigatórios funcionando!

    Fechar o Navegador
