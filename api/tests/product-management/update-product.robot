*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/product-keywords.robot
Resource   ../../variables/variables.robot
Resource    ../user-management/keywords/user-keywords.robot

*** Test Cases ***
Editar Produto
    [Documentation]    Teste para editar um produto existente.
    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Login de administrador para obter o token
    Login de Usuário
    
    # 🔹 Criar um novo produto
    Criar Produto

    # 🔹 Editar produto existente
    Editar Produto
