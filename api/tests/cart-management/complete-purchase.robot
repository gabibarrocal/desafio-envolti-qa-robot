*** Settings ***
Library    RequestsLibrary
Library    BuiltIn

Resource    ../user-management/keywords/user-keywords.robot
Resource    keywords/cart-keywords.robot

*** Test Cases ***
Concluir Compra
    [Documentation]    Teste para criar um usuário, logar e concluir uma compra.

    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Realizar login com o usuário criado
    Login de Usuário

    # 🔹 Concluir a compra do carrinho vinculado ao usuário
    Concluir Compra