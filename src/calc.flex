import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup
%line
%column

WHITESPACE = [ \t\n\r]+
SINGLE_LINE_COMMENT = "//"[^\n]*
DIGIT = [0-9]
LETTER = [a-zA-Z_]
INT = {DIGIT}+
FLOAT = {DIGIT}+"."{DIGIT}+
ID = {LETTER}({LETTER}|{DIGIT})*

%%

<YYINITIAL> {
    // Ignorar espaços e comentários
    {WHITESPACE}  { /**/ }
    {SINGLE_LINE_COMMENT} { /**/ } 

    // Palavras-chave
    "escreva"             { return new Symbol(sym.ESCREVA); }
    
    // Operadores relacionais 
    "igual"               { return new Symbol(sym.EQ); } //✅     
    "diferente"           { return new Symbol(sym.NEQ); } //✅     
    "maior"               { return new Symbol(sym.GT); } //✅     
    "menor"               { return new Symbol(sym.LT); } //✅      
    "maior igual"      { return new Symbol(sym.GTE); } //✅    
    "menor igual"      { return new Symbol(sym.LTE); } //✅    

    // Operadores aritméticos (pseudocódigo)
    "mais"                { return new Symbol(sym.PLUS); } //✅   
    "menos"               { return new Symbol(sym.MINUS); } //✅  
    "vezes"               { return new Symbol(sym.TIMES); } //✅   
    "divide"            { return new Symbol(sym.DIV); } //✅    
    "resto"                 { return new Symbol(sym.MOD); } //✅

    // Operador de atribuição
    "recebe"              { return new Symbol(sym.ASSIGN); } //✅

    // Operadores lógicos
    "e"                   { return new Symbol(sym.AND); } //✅    
    "ou"                  { return new Symbol(sym.OR); } //✅      
    "nao"                 { return new Symbol(sym.NOT); } //✅     

    // Delimitadores
    ";"                  { return new Symbol(sym.SEMI); } //✅
    ","                  { return new Symbol(sym.COMMA); } 
    "{"                  { return new Symbol(sym.LBRACE); }
    "}"                  { return new Symbol(sym.RBRACE); }
    "("                  { return new Symbol(sym.LPAREN); }
    ")"                  { return new Symbol(sym.RPAREN); }

    // Valores
    {FLOAT}         { return new Symbol(sym.FLOAT, Double.parseDouble(yytext())); } //✅
    {INT}           { return new Symbol(sym.INT, Integer.parseInt(yytext())); } //✅
    "verdade"          { return new Symbol(sym.BOOLEANO, Boolean.TRUE); } //✅ 
    "falso"               { return new Symbol(sym.BOOLEANO, Boolean.FALSE); } //✅

    // Identificadores
    {ID}                 { return new Symbol(sym.ID, yytext()); }

    // Caractere inválido
    .             { System.err.println("Illegal character: " + yytext()); }
}