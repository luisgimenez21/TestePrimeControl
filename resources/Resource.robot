*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                   http://automationpractice.com
${BROWSER}                 chrome
${INPUT_PESQUISAR}         name=search_query
${BTN_PESQUISAR}           name=submit_search

${PESQUISA_Title}          Search - My Store
${PESQUISA_Elemento}       css=#center_column > h1
${PESQUISA_Imagem}         xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/2/0/20-home_default.jpg']
${PESQUISA_ProdutoText}    xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"Printed Chiffon Dress")]

${PESQUISA_CAMPO_MENSAGEM}  xpath=//*[@id="center_column"]/p

*** Keywords ***
Acessar pagina principal
  Open Browser    url=${URL}  browser=${BROWSER}
  Title Should Be    My Store

Pesquisar produto "${PRODUTO_PESQUISA}"
  Input Text    ${INPUT_PESQUISAR}    ${PRODUTO_PESQUISA}
  Click Button    ${BTN_PESQUISAR}

Conferir se o resultado da pesquisa corresponde a produto pesquisado
  Wait Until Element Is Visible  ${PESQUISA_Elemento}
  Title Should Be  ${PESQUISA_Title}
  Page Should Contain Link    ${PESQUISA_ProdutoText}
  Page Should Contain Image  ${PESQUISA_Imagem}
  Capture Page Screenshot


Pesquisar produto invalido "${PRODUTO_INVALIDO}"
  Input Text    ${INPUT_PESQUISAR}    ${PRODUTO_INVALIDO}
  Click Button    ${BTN_PESQUISAR}


Conferir mensagem de erro "${PESQUISA_MSG_ERRO}"
  Wait Until Element Is Visible           ${PESQUISA_CAMPO_MENSAGEM}
  Element Text Should Be                  ${PESQUISA_CAMPO_MENSAGEM}            ${PESQUISA_MSG_ERRO}


Fechar Navegador
  Capture Page Screenshot
  Close Browser
