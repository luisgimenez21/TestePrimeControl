*** Settings ***
Resource  ../resources/Resource.robot
Resource  ../resources/PageObject/Home.robot
Resource  ../resources/PageObject/Pesquisar.robot
Test Setup          Abrir Sessao
Test Teardown       Fechar Navegador

*** Test Case ***
Caso de Teste 01: Pesquisar produto valido
  Home.Acessar pagina principal
  Home.Pesquisar produto "Printed Chiffon Dress"
  Pesquisar.Conferir se o resultado da pesquisa corresponde a produto pesquisado


Caso de Teste 02: Pesquisar produto Invalido
  Home.Acessar pagina principal
  Home.Pesquisar produto invalido "Invalido"
  Pesquisar.Conferir mensagem de erro "No results were found for your search "Invalido""
