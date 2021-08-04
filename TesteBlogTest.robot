*** Settings ***
Resource  ResourceBlogTest.robot

*** Test Cases ***
Caso de teste 01: Pesquisar um post
  Acessar pagina do blog 
  Pesquisar por um post: "Season Premiere: Introdução ao Robot Framework"
  Conferir mensagem de pesquisa por "Mostrando postagens que correspondem à pesquisa por Season Premiere: Introdução ao Robot Framework"
  Fechar o navegador 
