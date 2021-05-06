*** Settings ***
Resource  ../resources/Resource.robot

*** Test Case ***
Caso de Teste 01: Pesquisar produto valido
  Acessar pagina principal
  Pesquisar produto "Printed Chiffon Dress"
  Conferir se o resultado da pesquisa corresponde a produto pesquisado


Caso de Teste 02: Pesquisar produto Invalido
  Acessar pagina principal
  Pesquisar produto invalido "Invalido"
  Conferir mensagem de erro "No results were found for your search "Invalido""
  Fechar Navegador
