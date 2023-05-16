#language:pt

Funcionalidade: Login

  Contexto:
    Dado que a Modal esteja sendo exibida

  @fecharModal
  Cenario: Fechar a Modal ao clicar fora da mesmo
    Quando for realizado um clique fora da Modal
    Então a janela Modal deve ser fechada

   @fecharModalIcone
  Cenario: Fechar a Modal ao clicar no icone fechar
    Quando for realizado um clique no icone de fechar Modal
    Então a janela Modal deve ser fechada

     @createNewAccount
  Cenario: Link Create New Account
    Quando for realizado um clique no link Create New Account
    Então a pagina Create New Account deve ser exibida


  Esquema do Cenario:Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Então deser ser possivel logar no sistema

    Exemplos:
      | identificacao       | login   | password | remember |
      | campos obrigatorios | chronos | senha    | false    |
      | todos os campos     | chronos | senha    | true     |

  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Quando for realizado o clique no botao sign in
    Então o sistema devera exibir uma mensagem de erro

    Exemplos:
      | identificacao    | login   | password | remember |
      | usuario invalido | chronos | senha    | false    |
      | senha invalido   | chronos | senha    | true     |

    @dadosEmBranco
  Esquema do Cenario: Realizar login com <identificacao>
    Quando os campos de login sejam preenchidos da seguinte forma
      | login    | <login>    |
      | password | <password> |
      | remember | <remember> |
    Então o botao sign in deve permanecer desabilitado

    Exemplos:
      | identificacao     | login   | password | remember |
      | usuario em branco |         | senha    | false    |
      | senha em branco   | chronos |          | false    |

