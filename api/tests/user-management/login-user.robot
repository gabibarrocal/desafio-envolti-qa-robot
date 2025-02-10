
*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Library    String

Resource    ../../variables/variables.robot
Resource    keywords/user-keywords.robot

*** Test Cases ***
Login de Usuário
    [Documentation]    Teste para criar um novo usuário e realizar login com ele.

    # Criar novo usuário
    Criar Usuário

    # Realizar login com o usuário criado
    Login de Usuário
