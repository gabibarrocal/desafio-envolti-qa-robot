*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/cart-keywords.robot
Resource   ../../variables/variables.robot
Resource    ../user-management/keywords/user-keywords.robot

*** Test Cases ***
Criar Novo Carrinho
    [Documentation]    Teste para adicionar produtos ao carrinho.
    
    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Realizar login com o usuário criado
    Login de Usuário

    # 🔹 Criar um novo carrinho com itens
    Criar Carrinho

*** Test Cases ***
Criar Carrinho Duplicado
    [Documentation]    Teste para validar que não é possível criar um novo carrinho quando já existe um ativo.

    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Realizar login com o usuário criado
    Login de Usuário

    # 🔹 Criar o primeiro carrinho (esperado 201)
    Criar Carrinho

    # 🔹 Tentar criar um segundo carrinho (esperado 400)
    Criar Carrinho Duplicado
    
