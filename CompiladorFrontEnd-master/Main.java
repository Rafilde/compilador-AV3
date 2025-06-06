import java.io.*;
import java_cup.runtime.*;

public class Main {
    public static void main(String[] args) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader("input.txt"));
            scanner scanner = new scanner(reader);

            System.out.println("Enter expressions (end with semicolon ';'):");

            Symbol token;
            while ((token = scanner.next_token()).sym != sym.EOF) {
                String tokenName = sym.terminalNames[token.sym];
                Object value = token.value;
                System.out.println("Token: " + tokenName);
                // if (value != null) {
                //     System.out.println(tokenName);
                // } 
            }

            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
