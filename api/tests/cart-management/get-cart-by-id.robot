*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/cart-keywords.robot
Resource   ../../variables/variables.robot
Resource    ../user-management/keywords/user-keywords.robot

*** Test Cases ***
Consultar Carrinho Específico
    [Documentation]    Teste para consultar um carrinho pelo ID.

    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Realizar login com o usuário criado
    Login de Usuário

    # 🔹 Criar um novo carrinho com itens
    Criar Carrinho

    # 🔹 Consultar o carrinho específico pelo ID gerado
    Consultar Carrinho Por ID

