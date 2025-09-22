### Execução do Analizador Léxico Java em ambiente Linux

*Para instalar jflex v1.8*
```shell
wget https://sourceforge.net/projects/jflex.mirror/files/v1.8.2/jflex-1.8.2.zip
unzip jflex-1.8.2.zip
cd jflex-1.8.2
```

*Criação de Alias para facilitar o uso do comando*
```shell
echo "alias jflex='java -jar ~/jflex-1.8.2/lib/jflex-full-1.8.2.jar'" >> ~/.bashrc
source ~/.bashrc
```

*Para compilar*
```shell
jflex ./Lexer.flex
```

*Para compilar o .java*
```shell
javac Lexer.java
```

*Para executar o analisador léxico*
```shell
java Lexer tests.txt
```

--- 
Teste gerado:
```java
if x == 10
y = 3.14
try {
    throw new RuntimeException
} catch (Exception e) {
    // comentário
}
String teste = "Olá Unisinos"
```

---
### Tabela de retornos

| Código             | Token gerado                   | Comentário                                     |
| ------------------ | ------------------------------ | ---------------------------------------------- |
| `if`               | `TOKEN: IF`                    | Palavra reservada reconhecida                  |
| `x`                | `TOKEN: ID x`                  | Identificador                                  |
| `==`               | `TOKEN: OP ==`                 | Operador                                       |
| `10`               | `TOKEN: INT 10`                | Número inteiro                                 |
| `y`                | `TOKEN: ID y`                  | Identificador                                  |
| `=`                | `TOKEN: OP =`                  | Operador                                       |
| `3.14`             | `TOKEN: FLOAT 3.14`            | Número real                                    |
| `try`              | `TOKEN: TRY`                   | Palavra reservada exception                    |
| `throw`            | `TOKEN: THROW`                 | Palavra reservada exception                    |
| `new`              | `TOKEN: NEW`                   | Palavra reservada reconhecida                  |
| `RuntimeException` | `TOKEN: RUNTIME_EXCEPTION`     | Palavra reservada exception                    |
| `catch`            | `TOKEN: CATCH`                 | Palavra reservada exception                    |
| `Exception`        | `TOKEN: EXCEPTION`             | Palavra reservada exception                    |
| `e`                | `TOKEN: ID e`                  | Identificador                                  |
| `String`           | `TOKEN: ID String`             | Como não é keyword no lexer, é tratado como ID |
| `teste`            | `TOKEN: ID teste`              | Identificador                                  |
| `=`                | `TOKEN: OP =`                  | Operador                                       |
| `"Olá Unisinos"`   | `TOKEN: STRING "Olá Unisinos"` | String reconhecida                             |
