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
