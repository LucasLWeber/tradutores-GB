%%

%class Lexer
%unicode
%public
%standalone

%%

/* ===================== Palavras reservadas ===================== */
"if"        { System.out.println("TOKEN: IF"); }
"else"      { System.out.println("TOKEN: ELSE"); }
"while"     { System.out.println("TOKEN: WHILE"); }
"for"       { System.out.println("TOKEN: FOR"); }
"do"        { System.out.println("TOKEN: DO"); }
"switch"    { System.out.println("TOKEN: SWITCH"); }
"case"      { System.out.println("TOKEN: CASE"); }
"default"   { System.out.println("TOKEN: DEFAULT"); }
"break"     { System.out.println("TOKEN: BREAK"); }
"continue"  { System.out.println("TOKEN: CONTINUE"); }
"return"    { System.out.println("TOKEN: RETURN"); }
"public"    { System.out.println("TOKEN: PUBLIC"); }
"private"   { System.out.println("TOKEN: PRIVATE"); }
"protected" { System.out.println("TOKEN: PROTECTED"); }
"class"     { System.out.println("TOKEN: CLASS"); }
"static"    { System.out.println("TOKEN: STATIC"); }
"final"     { System.out.println("TOKEN: FINAL"); }
"void"      { System.out.println("TOKEN: VOID"); }
"new"       { System.out.println("TOKEN: NEW"); }

/* ===================== Exceções ===================== */
"try"               { System.out.println("TOKEN: TRY"); }
"catch"             { System.out.println("TOKEN: CATCH"); }
"throw"             { System.out.println("TOKEN: THROW"); }
"finally"           { System.out.println("TOKEN: FINALLY"); }
"Exception"         { System.out.println("TOKEN: EXCEPTION"); }
"RuntimeException"  { System.out.println("TOKEN: RUNTIME_EXCEPTION"); }

/* ===================== Números ===================== */
[0-9]+\.[0-9]+      { System.out.println("TOKEN: FLOAT " + yytext()); }
[0-9]+              { System.out.println("TOKEN: INT " + yytext()); }

/* ===================== Identificadores ===================== */
[A-Za-z_][A-Za-z0-9_]* { System.out.println("TOKEN: ID " + yytext()); }

/* ===================== Operadores ===================== */
"=="|"<="|">="|"<"|">"|"="|"+"|"-"|"*"|"/"|"%"  { System.out.println("TOKEN: OP " + yytext()); }

/* ===================== Delimitadores ===================== */
";"|","|"\("|"\)"|"\{"|"\}"|" " { /* ignora delimitadores e espaços */ }

/* ===================== Strings ===================== */
\"[^\"]*\" { System.out.println("TOKEN: STRING " + yytext()); }

/* ===================== Comentários ===================== */
"//".*     { /* ignora comentários de linha */ }

/* ===================== Ignora espaços e quebras de linha ===================== */
[ \t\r\n]+ { /* ignora espaços, tab, CR e newline */ }

/* ===================== Captura caracteres inválidos ===================== */
.          { throw new RuntimeException("Caractere inválido: " + yytext()); }

