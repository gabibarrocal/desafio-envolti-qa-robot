*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Library    String
 
Resource    keywords/user-keywords.robot

*** Test Cases ***
Excluir Usuário
    [Documentation]    Teste para criar um novo usuário e excluí-lo.

    # Criar novo usuário
    Criar Usuário

    # Realizar login para obter token
    Login de Usuário

    # Excluir usuário criado
    Excluir Usuário
