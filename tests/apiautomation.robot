* Settings *
Documentation           Aqui estarão presentes os testes referentes as API's de de Books.

Resource                  ../resources/keywords/kws_apiautomation.robot
Suite Setup              Conectar a minha API

* Test Case *
Cenario: Buscar a listagem de todos os livros (GET em todos os livros)
    [Tags]            TESTE_1
    Requisitar todos os livros
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna uma lista com "200" livros

Cenario: Buscar um livro específico(GET em um Livro específico)
    [Tags]            TESTE_2
    Requisitar o livro "20"
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna todos os dados corretos do livro 20

Cenario: Cadastrar um novo livro (POST)
    [Tags]          TESTE_3
    Cadastrar um novo livro
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna todos os dados cadastrados do livro "201"