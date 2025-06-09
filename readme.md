# 🛠️ Compilador Básico Front-end

Este projeto tem como objetivo a construção de um **Analisador Léxico e Sintático** para processar código-fonte escrito em pseudocódigo. O foco está na validação da estrutura e significado do código.

---

## 📌 Etapas do Projeto

### 🔹 Etapa 1 – Analisador Léxico

Nesta etapa, foi desenvolvido um **Parser Léxico** que valida a estrutura do código-fonte com base em uma gramática definida. A gramática cobre:

- **Expressões aritméticas**: `mais`, `menos`, `vezes`, `divide`, `resto`
- **Operadores relacionais**: `igual`, `diferente`, `maior`, `menor`, `maior igual`, `menor igual`
- **Operadores lógicos**: `e`, `ou`, `nao`
- **Atribuições**: `recebe`
- **Delimitadores**: `(`, `)`, `;`

---

### 🔹 Etapa 2 – Analisador Sintático

O **Analisador Sintático** verifica o significado do código, garantindo que:

- **Tipos de dados** sejam compatíveis em operações e atribuições.
- **Variáveis** sejam declaradas antes de serem usadas.
- **Operações** sejam realizadas corretamente com base nos tipos dos operandos.

---

## ▶️ Palavras-chave e Operadores no Pseudocódigo

### Palavras-chave:
- **`escreva`**: Imprime valores no console.

### Operadores Relacionais:
- **`igual`**: Verifica se dois valores são iguais.
- **`diferente`**: Verifica se dois valores são diferentes.
- **`maior`**: Verifica se o primeiro valor é maior que o segundo.
- **`menor`**: Verifica se o primeiro valor é menor que o segundo.
- **`maior igual`**: Verifica se o primeiro valor é maior ou igual ao segundo.
- **`menor igual`**: Verifica se o primeiro valor é menor ou igual ao segundo.

### Operadores Aritméticos:
- **`mais`**: Realiza adição.
- **`menos`**: Realiza subtração.
- **`vezes`**: Realiza multiplicação.
- **`divide`**: Realiza divisão.
- **`resto`**: Calcula o resto da divisão.

### Operadores Lógicos:
- **`e`**: Realiza conjunção lógica (AND).
- **`ou`**: Realiza disjunção lógica (OR).
- **`nao`**: Realiza negação lógica (NOT).

### Outros:
- **`recebe`**: Realiza atribuição de valores a variáveis.
- **Delimitadores**: `(`, `)`, `;` são usados para estruturar o código.

---

## 👥 Integrantes do grupo
- **Rafael Silva** - Matrícula: 2212378
- **Evandro Luz** - Matrícula: 2220294
