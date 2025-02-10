*** Settings ***
Library    RequestsLibrary
Library    String
Resource   ../../../variables/variables.robot

*** Keywords ***
Criar Usuário
    [Arguments]    ${administrador}=true
    
    ${RANDOM}    Generate Random String    5    [LETTERS]
    ${email}    Set Variable    test${RANDOM}user@serverest.dev
    
    # Criar corpo da requisição
    ${body}    Create Dictionary    nome=${USER_NAME}    email=${email}    password=${PASSWORD}    administrador=${administrador}

    # Fazer requisição POST
    ${response}    POST    ${BASE_URL}${USER_ENDPOINT}    json=${body}

    # Validar resposta
    Should Be Equal As Strings    ${response.status_code}    201

    # Capturar ID do usuário criado
    ${user_id}    Set Variable    ${response.json()["_id"]}

    Set Global Variable    ${USER_ID}    ${user_id}
    Set Global Variable    ${EMAIL}    ${email}
    RETURN    ${user_id}

*** Keywords ***
Login de Usuário

    ${login_body}    Create Dictionary    email=${EMAIL}    password=${PASSWORD}
    ${response}    POST    ${BASE_URL}${LOGIN_ENDPOINT}    json=${login_body}

    # Verificar se o status da resposta é 200 (login bem-sucedido)
    Should Be Equal As Strings    ${response.status_code}    200

    # Capturar o token de autenticação e garantir que não está vazio
    ${auth_token}    Set Variable    ${response.json()["authorization"]}
    Should Not Be Empty    ${auth_token}

    Set Global Variable    ${AUTH_TOKEN}    ${auth_token}

    RETURN    ${auth_token}

*** Keywords ***
Editar Usuário

    ${url}    Set Variable    ${BASE_URL}${USER_ENDPOINT}/${USER_ID}
    ${headers}    Create Dictionary    Authorization=Bearer ${AUTH_TOKEN}

    ${edit_body}    Create Dictionary    nome=${EDITED_USER_NAME}    email=${EMAIL}    password=${PASSWORD}    administrador=false

    ${response}    PUT    ${url}    json=${edit_body}    headers=${headers}

    # Verificar se o status da resposta é 200 (edição bem-sucedida)
    Should Be Equal As Strings    ${response.status_code}    200


Excluir Usuário
    
    ${url}    Set Variable    ${BASE_URL}${USER_ENDPOINT}/${USER_ID}
    ${headers}    Create Dictionary    Authorization=Bearer ${AUTH_TOKEN}  # Criar dicionário corretamente

    ${response}    DELETE    ${url}    headers=${headers}  # Passar headers corretamente

    Should Be Equal As Strings    ${response.status_code}    200
