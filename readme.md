# 🛠️ Compilador Básico Front-end

Este projeto tem como objetivo a construção de um compilador front-end básico dividido em **três etapas** principais: Analisador Léxico com **JFlex**, Analisador Sintático com **JCup** e a **Integração** entre ambos para processar código-fonte de entrada.

---

## 📌 Etapas do Projeto

### 🔹 Etapa 1 – Analisador Léxico com JFlex

Nesta fase, foi desenvolvido um **Scanner Léxico** capaz de identificar tokens com base em regras definidas. Os tokens reconhecidos incluem:

- **Palavras-chave**: `if`, `else`, `while`, `return`, etc.  
- **Identificadores**  
- **Constantes**: inteiros e ponto flutuante  
- **Operadores**: `+`, `-`, `*`, `/`, `==`, `!=`, etc.  
- **Delimitadores**: `;`, `,`, `{`, `}`, `(`, `)`  
- **Comentários**: de linha única e múltiplas linhas

**Entregáveis:**

- Arquivo `.flex` com as regras léxicas
- Classe Java gerada automaticamente pelo JFlex
- Script de teste que imprime todos os tokens e seus respectivos tipos no console

---

### 🔹 Etapa 2 – Analisador Sintático com JCup

Aqui, foi construído um **Parser Sintático** que, a partir dos tokens gerados, monta uma árvore sintática com base na gramática definida.

**Gramática abrange:**

- Estrutura geral do programa
- Declaração de variáveis
- Estruturas de controle: `if-else`, `while`
- Definições e chamadas de funções
- Expressões e atribuições

**Entregáveis:**

- Arquivo `.cup` com a especificação gramatical
- Classes Java geradas automaticamente pelo JCup
- Script de teste que imprime a árvore sintática no console

---

### 🔹 Etapa 3 – Integração

Etapa responsável por unir o Scanner e o Parser, processando o código-fonte do início ao fim.

**Inclui:**

- Integração do scanner JFlex com o parser JCup
- Arquivo `input.txt` contendo um programa de exemplo na linguagem definida
- Execução completa mostrando geração de tokens e árvore sintática

---

## ▶️ Comandos para Executar o Projeto

Abra o terminal na raiz do projeto e utilize os seguintes comandos:

- Para **executar** o projeto:
  ```bash
  ./run.bat
- Para **limpar** arquivos gerados:
  ```bash
  ./cleanup.bat
- Para **sair**:
  ```bash
  exit
**⚠️ Observação**: O projeto ainda está em desenvolvimento. Mais detalhes e funcionalidades serão adicionados nas próximas atualizações.

## 👥 Integrantes do grupo
- **Rafael Silva** - Matrícula: 2212378
- **Evandro Luz** - Matrícula: 2220294