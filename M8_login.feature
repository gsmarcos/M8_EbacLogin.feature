
            #lenguage: pt

            Funcionalidade: Tela de Login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto: Dado que eu acesse a página de autenticação do portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "marcos@ebac.com.br"
            E a senha "senha321"
            Então deve exibir uma mensagem de boas vindas "Olá Marcos"


            Cenário: Usuário inexistente
            Quando eu digitar o usuário "marquinhos@ebac.com.br"
            E a senha "senha321"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: usuário com senha inválida
            Quando eu digitar o usuário "marcos@ebac.com.br"
            E a senha "senha123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválida"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a mensagem de sucesso "Olá, sejam bem vindos"

            Exemplo
            | usuario              | senha      | Olá, sejam bem vindos |
            | "marcos@ebac.com.br" | "senha321" | Olá, sejam bem vindos |
            | "jan@ebac.com.br"    | "senha321" | Olá, sejam bem vindos |
            | "plinio@ebac.com.br" | "senha321" | Olá, sejam bem vindos |

