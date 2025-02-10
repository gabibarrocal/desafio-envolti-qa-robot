*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource    ../user-management/keywords/user-keywords.robot
Resource    keywords/cart-keywords.robot

*** Test Cases ***
Cancelar Compra
    [Documentation]    Teste para criar um usuário, logar e cancelar uma compra.

    # 🔹 Criar novo usuário
    Criar Usuário

    # 🔹 Realizar login com o usuário criado
    Login de Usuário

    # 🔹 Cancelar a compra do carrinho vinculado ao usuário
    Cancelar Compra
