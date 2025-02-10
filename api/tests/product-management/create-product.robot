*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/product-keywords.robot
Resource   ../../variables/variables.robot
Resource    ../user-management/keywords/user-keywords.robot

*** Test Cases ***
Criar Novo Produto
    [Documentation]    Teste para criar um novo produto.

    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Login de administrador para obter o token
    Login de Usuário

    # 🔹 Criar um novo produto
    Criar Produto

*** Test Cases ***
Criar Novo Produto Sem ser Adminstrador
    [Documentation]    Teste para criar um novo produto.

    # 🔹 Criar novo usuário
    Criar Usuário    false

    # 🔹 Login de administrador para obter o token
    Login de Usuário

    # 🔹 Criar um novo produto
    Criar Produto    false