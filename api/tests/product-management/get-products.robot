*** Settings ***
Library    RequestsLibrary
Library    BuiltIn
Resource   keywords/product-keywords.robot
Resource   ../../variables/variables.robot

*** Test Cases ***
Consultar Todos os Produtos
    [Documentation]    Teste para consultar todos os produtos disponíveis.
    
    # 🔹 Consultar Todos os Produtos Cadastrados
    Consultar Todos os Produtos
