# 🚀 Automação de Testes - Serverest

Este projeto contém a automação de **API e Frontend** do sistema Serverest utilizando **Robot Framework**.   

---

### 📋 Pré-requisitos

Para rodar os testes, você precisa ter instalado em sua máquina:

- [Python 3+](https://www.python.org/downloads/)
- [Robot Framework](https://robotframework.org/)
- [Google Chrome](https://www.google.com/intl/pt-BR/chrome/) e [ChromeDriver](https://chromedriver.chromium.org/downloads)  

Caso não tenha o **Robot Framework** instalado, siga os passos da instalação abaixo.

---

### 🔧 Instalação

1️⃣ **Clone o repositório do projeto**
```sh
git clone https://github.com/gabibarrocal/desafio-envolti-qa-robot.git
cd desafio-envolti-qa-robot
```

2️⃣ **Instale as depêndencias**
```sh
pip install -r requirements.txt
```

3️⃣ **Garanta que o ChromeDriver esta atualizado com o navegador**
```sh
brew upgrade chromedriver

ou

Baixe e instale o ChromeDriver.
Copie o arquivo para um local acessível e adicione ao PATH do sistema.
```

3️⃣ **Garanta que o ChromeDriver esta atualizado com o navegador**
```sh
brew upgrade chromedriver

ou

Baixe e instale o ChromeDriver.
Copie o arquivo para um local acessível e adicione ao PATH do sistema.
````
---

### ⚙️ Executando os testes

🔩 **Testes de API**
- Para rodar todos os testes:
```sh
./run_tests_api.sh
```

- Para rodar um cenários específico:
```sh
robot -t "Criar Novo Usuário" tests/api/user-management.robot
```

🔩 **Testes de Frontend**
- Para rodar todos os testes:
```sh
./run_tests_frontend.sh
```

- Para rodar um cenários específico:
```sh
robot -t "Login de administrador com Sucesso" frontend/login.robot

```