*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BASE_URL}    https://front.serverest.dev
${BROWSER}     headlesschrome
${SCREENSHOT_DIR}    ${EXECDIR}/tests/frontend/screenshots
${PASSWORD}       senha123
${USER_NAME}      Test User

*** Keywords ***
Configurar Ambiente Global
    Log    📂 Configurando diretório de screenshots global: ${SCREENSHOT_DIR}
    Create Directory    ${SCREENSHOT_DIR}
    Set Screenshot Directory    ${SCREENSHOT_DIR}
    Set Selenium Timeout    10s