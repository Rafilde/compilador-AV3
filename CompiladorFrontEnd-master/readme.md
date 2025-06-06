TRABALHO AV3 - COMPILADOR (JFlex + JCup)
==============================

Autores:
- Rafael Silva - Matrícula: 2212378
- Evandro Luz - Matrícula: 2220294

1. Abra o terminal no diretório do projeto.
2. Digite o comando abaixo para executar o script:
   > ./run.bat

2. Digite o comando abaixo para limpar os arquivos:
   > ./cleanup.bat

3. Quando o programa iniciar, digite expressões como:

   > 1 + 2;

   > (3 + 4) * 5;

   > -10 + (6 - 3);

   Finalize cada expressão com `;`

4. Para sair, digite:
   > exit

5. Se desejar testar automaticamente o conteúdo do arquivo `input.txt`, substitua este trecho em `Main.java`:
   ```java
    BufferedReader reader = new BufferedReader(new FileReader("input.txt"));
5. Para testar pelo terminal, modifique o Main.java:
    ```java
    BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));