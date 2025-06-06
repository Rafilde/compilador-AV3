import java_cup.runtime.*;

%%

%class scanner
%unicode
%cup

WHITESPACE = [ \t\n\r]+
SINGLE_LINE_COMMENT = "//"[^\n]*
// criar um para ignorar mais de uma linha
DIGIT = [0-9]
INT         = {DIGIT}+
FLOAT       = {DIGIT}+"."{DIGIT}+

%%

<YYINITIAL> {
    // Ignorar espaços e comentários
    {WHITESPACE}  { /**/ }
    {SINGLE_LINE_COMMENT} { /**/ } 

    // Palavras-chave
    "if"                 { return new Symbol(sym.IF); }
    "else"               { return new Symbol(sym.ELSE); }
    "while"              { return new Symbol(sym.WHILE); }
    "return"             { return new Symbol(sym.RETURN); }

    // Operadores
    "=="                 { return new Symbol(sym.EQ); }
    "!="                 { return new Symbol(sym.NEQ); }
    "+"                  { return new Symbol(sym.PLUS); }
    "-"                  { return new Symbol(sym.MINUS); }
    "*"                  { return new Symbol(sym.TIMES); }
    "/"                  { return new Symbol(sym.DIV); }

    // Delimitadores
    ";"                  { return new Symbol(sym.SEMI); }
    ","                  { return new Symbol(sym.COMMA); }
    "{"                  { return new Symbol(sym.LBRACE); }
    "}"                  { return new Symbol(sym.RBRACE); }
    "("                  { return new Symbol(sym.LPAREN); }
    ")"                  { return new Symbol(sym.RPAREN); }

    // Valores
    {FLOAT}         { return new Symbol(sym.FLOAT, Double.parseDouble(yytext())); }
    {INT}           { return new Symbol(sym.INT, Integer.parseInt(yytext())); }

    .             { System.err.println("Illegal character: " + yytext()); }
}


// import java_cup.runtime.*;

// %%

// %class scanner
// %unicode
// %cup

// WHITESPACE = [ \t\n\r]+
// SINGLE_LINE_COMMENT = "//"[^\n]*
// DIGIT             = [0-9]
// LETTER            = [a-zA-Z]
// ID                = {LETTER}({LETTER}|{DIGIT})*
// INT_CONST         = {DIGIT}+
// FLOAT_CONST       = {DIGIT}+"."{DIGIT}+

// %%

// <YYINITIAL> {
//     // Ignorar espaços e comentários
//     {WHITESPACE}  { /**/ }
//     {SINGLE_LINE_COMMENT} { /**/ } // Ignore single-line comments

//     // Identificadores
//     {ID}                 { return new Symbol(sym.ID, yytext()); }

//     // Constantes
//     {FLOAT_CONST}        { return new Symbol(sym.FLOAT_CONST, Double.parseDouble(yytext())); }
//     {INT_CONST}          { return new Symbol(sym.INT_CONST, Integer.parseInt(yytext())); }


// }