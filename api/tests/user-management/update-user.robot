*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Library    String
 
Resource    keywords/user-keywords.robot

*** Test Cases ***
Editar Usuário
    [Documentation]    Teste para criar um novo usuário e editá-lo.

    # Criar novo usuário
    Criar Usuário

    # Realizar login para obter token
    Login de Usuário

    # Editar usuário criado
    Editar Usuário
