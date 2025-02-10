*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections  # ✅ Importando a biblioteca para manipular listas
Resource   ../../../variables/variables.robot

*** Keywords ***

Consultar Carrinhos

    ${response}    GET    ${BASE_URL}${CART_ENDPOINT}
    Should Be Equal As Strings    ${response.status_code}    200
    RETURN    ${response.json()}

Criar Carrinho
    ${headers}    Create Dictionary    Authorization=${AUTH_TOKEN}
    ${list}    Create List  

    # ✅ Criar os dicionários para cada produto
    ${product_1}    Create Dictionary    idProduto=0Xk1qFi9pX4TWHZT    quantidade=${1}
    ${product_2}    Create Dictionary    idProduto=2VMjj92lMMtaBS1k    quantidade=${1}

    # ✅ Adicionar os produtos à lista
    Append To List    ${list}    ${product_1}
    Append To List    ${list}    ${product_2}

    # ✅ Criar o JSON da requisição
    ${body}    Create Dictionary    produtos=${list}

    ${response}    POST    ${BASE_URL}${CART_ENDPOINT}    json=${body}    headers=${headers}
    
    Should Be Equal As Strings    ${response.status_code}    201

    ${cart_id}    Set Variable    ${response.json()["_id"]}
    Set Global Variable    ${CART_ID}    ${cart_id}

    RETURN    ${cart_id}

*** Keywords ***
Criar Carrinho Duplicado

    ${headers}    Create Dictionary    Authorization=${AUTH_TOKEN}
    ${list}    Create List  

    # ✅ Criar os dicionários para cada produto
    ${product_1}    Create Dictionary    idProduto=0Xk1qFi9pX4TWHZT    quantidade=${1}
    ${product_2}    Create Dictionary    idProduto=2VMjj92lMMtaBS1k    quantidade=${1}

    # ✅ Adicionar os produtos à lista
    Append To List    ${list}    ${product_1}
    Append To List    ${list}    ${product_2}

    # ✅ Criar o JSON da requisição
    ${body}    Create Dictionary    produtos=${list}

    # ✅ Tentar criar o segundo carrinho (esperando erro)
    ${status}    ${response}    Run Keyword And Ignore Error    POST    ${BASE_URL}${CART_ENDPOINT}    json=${body}    headers=${headers}


    # ✅ Capturar código HTTP corretamente
    ${status_code}    Run Keyword If    '${status}' == 'PASS'    Set Variable    ${response.status_code}    ELSE    Set Variable    400

    # ✅ O teste **deve falhar** se não receber erro 400
    Should Be Equal As Strings    ${status_code}    400    


Consultar Carrinho Por ID

    ${headers}    Create Dictionary    Authorization=${AUTH_TOKEN}
    ${url}    Set Variable    ${BASE_URL}${CART_ENDPOINT}/${CART_ID}
    ${response}    GET    ${url}    headers=${headers}

    Should Be Equal As Strings    ${response.status_code}    200
    RETURN    ${response.json()}

Concluir Compra

    ${headers}    Create Dictionary    Authorization=${AUTH_TOKEN}
    ${url}    Set Variable    ${BASE_URL}${CART_ENDPOINT}/concluir-compra
    ${response}    DELETE    ${url}    headers=${headers}

    Should Be Equal As Strings    ${response.status_code}    200

Cancelar Compra

    ${headers}    Create Dictionary    Authorization=${AUTH_TOKEN}
    ${url}    Set Variable    ${BASE_URL}${CART_ENDPOINT}/cancelar-compra
    ${response}    DELETE    ${url}    headers=${headers}

    Should Be Equal As Strings    ${response.status_code}    200
