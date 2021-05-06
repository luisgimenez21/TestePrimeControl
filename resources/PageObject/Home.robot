*** Library ***
Library  SeleniumLibrary

*** Variables ***
${URL}                   http://automationpractice.com
${PESQUISA_Title}          Search - My Store
${INPUT_PESQUISAR}         name=search_query
${BTN_PESQUISAR}           name=submit_search



*** Keywords ***
####Action
Acessar pagina principal
  Title Should Be    My Store

Pesquisar produto "${PRODUTO_PESQUISA}"
  Input Text    ${INPUT_PESQUISAR}    ${PRODUTO_PESQUISA}
  Click Button    ${BTN_PESQUISAR}

Pesquisar produto invalido "${PRODUTO_INVALIDO}"
  Input Text    ${INPUT_PESQUISAR}    ${PRODUTO_INVALIDO}
  Click Button    ${BTN_PESQUISAR}
