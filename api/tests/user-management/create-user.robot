*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Library    String
Resource    keywords/user-keywords.robot

*** Test Cases ***
Criar Novo Usuário
    [Documentation]    Teste para criar um novo usuário e armazenar o ID para testes futuros.

    # Criar novo usuário
    Criar Usuário
