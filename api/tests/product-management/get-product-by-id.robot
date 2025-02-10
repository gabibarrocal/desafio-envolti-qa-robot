*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/product-keywords.robot
Resource   ../../variables/variables.robot
Resource    ../user-management/keywords/user-keywords.robot

*** Test Cases ***
Consultar Produto Específico
    [Documentation]    Teste para consultar um produto pelo ID.
     # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Login de administrador para obter o token
    Login de Usuário

    # 🔹 Criar um novo produto
    Criar Produto
    
    # 🔹 Criar um novo produto
    Consultar Produto Por ID