*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/product-keywords.robot
Resource   ../../variables/variables.robot
Resource    ../user-management/keywords/user-keywords.robot

*** Test Cases ***
Excluir Produto
    [Documentation]    Teste para excluir um produto existente.

     # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Login de administrador para obter o token
    Login de Usuário

    # 🔹 Criar um novo produto
    Criar Produto

    # 🔹 Excluir produto existente
    Excluir Produto
