import java.io.*;
import java_cup.runtime.*;

public class Main {
    public static void main(String[] args) {
                try {
            FileReader reader = new FileReader("input.txt");
            scanner scanner = new scanner(reader);

            System.out.println("Tokens encontrados no arquivo:");

            Symbol token;
            while ((token = scanner.next_token()) != null) {
                if (token.sym == sym.EOF) break;

                System.out.println("Token: " + token.sym + ", Valor: " + token.value);
            }

            // Reiniciar o scanner para o parser
            reader = new FileReader("input.txt");
            scanner.yyreset(reader);
            parser parser = new parser(scanner);

            System.out.println("\nParsing o código-fonte:");
            parser.parse();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}