*** Library ***
Library  SeleniumLibrary

*** Variables ***
${PESQUISA_Elemento}       css=#center_column > h1
${PESQUISA_Imagem}         xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/2/0/20-home_default.jpg']
${PESQUISA_ProdutoText}    xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"Printed Chiffon Dress")]
${PESQUISA_CAMPO_MENSAGEM}  xpath=//*[@id="center_column"]/p

*** Keywords ***
Conferir se o resultado da pesquisa corresponde a produto pesquisado
  Wait Until Element Is Visible  ${PESQUISA_Elemento}
  Title Should Be  ${PESQUISA_Title}
  Page Should Contain Link    ${PESQUISA_ProdutoText}
  Page Should Contain Image  ${PESQUISA_Imagem}
  Capture Page Screenshot


Conferir mensagem de erro "${PESQUISA_MSG_ERRO}"
  Wait Until Element Is Visible           ${PESQUISA_CAMPO_MENSAGEM}
  Element Text Should Be                  ${PESQUISA_CAMPO_MENSAGEM}            ${PESQUISA_MSG_ERRO}
