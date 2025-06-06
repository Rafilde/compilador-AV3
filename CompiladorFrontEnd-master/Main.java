import java.io.*;
import java_cup.runtime.*;

public class Main {
    public static void main(String[] args) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader("input.txt"));
            scanner scanner = new scanner(reader);

            System.out.println("========================================");
            System.out.println("| Token Name      | Token Value        |");
            System.out.println("========================================");

            Symbol token;
            while ((token = scanner.next_token()).sym != sym.EOF) {
                String tokenName = sym.terminalNames[token.sym];
                Object value = token.value;

                if (value != null) {
                    System.out.printf("| %-15s | %-18s |\n", tokenName, value);
                } else {
                    System.out.printf("| %-15s | %-18s |\n", tokenName, "N/A");
                }
            }

            System.out.println("========================================");

            reader.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}