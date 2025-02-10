*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/cart-keywords.robot
Resource   ../../variables/variables.robot
Resource   ../user-management/keywords/user-keywords.robot

*** Test Cases ***
*** Test Cases ***
Consultar Carrinhos Cadastrados
    [Documentation]    Teste para criar um carrinho e consultá-lo no sistema.

    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Realizar login com o usuário criado
    Login de Usuário

    # 🔹 Criar um novo carrinho com itens
    Criar Carrinho

    # 🔹 Consultar todos os carrinhos disponíveis
    Consultar Carrinhos

    # 🔹 Consultar o carrinho específico pelo ID gerado
    Consultar Carrinho Por ID
