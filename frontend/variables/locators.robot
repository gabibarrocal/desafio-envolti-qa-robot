*** Variables ***
# 🔹 Login Page
${LOGIN_BUTTON}             xpath=//a[contains(text(),'Entrar')]
${LOGIN_INPUT_EMAIL}        xpath=//input[@data-testid="email"]
${LOGIN_INPUT_PASSWORD}     xpath=//input[@data-testid="senha"]
${LOGIN_BUTTON_SUBMIT}      xpath=//button[@data-testid="entrar"]

# 🔹 Cadastro de Usuário
${REGISTER_BUTTON}          xpath=//a[contains(text(),'Cadastre-se')]
${REGISTER_INPUT_NAME}      xpath=//input[@data-testid="nome"]
${REGISTER_INPUT_EMAIL}     xpath=//input[@data-testid="email"]
${REGISTER_INPUT_PASSWORD}  xpath=//input[@data-testid="password"]
${REGISTER_CHECK_ADMIN}     xpath=//input[@data-testid="checkbox"]
${REGISTER_BUTTON_SUBMIT}   xpath=//button[@data-testid="cadastrar"]

# 🔹 Produtos
${PRODUCTS_ADD_BUTTON}      xpath=(//button[@data-testid='adicionarNaLista'])
${PRODUCTS_CART_BUTTON}     xpath=//a[@data-testid="adicionar carrinho"]

# 🔹 Carrinho
${CART_CHECKOUT_BUTTON}     xpath=//button[contains(text(),"Finalizar Compra")]
${CART_REMOVE_BUTTON}       xpath=//button[contains(text(),"Remover")]
