*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                   http://automationpractice.com
${BROWSER}                 chrome

*** Keywords ***
#### Setup and Teardown
Abrir Sessao
  Open Browser  ${URL}  ${BROWSER}

Fechar Navegador
  Capture Page Screenshot
  Close Browser
