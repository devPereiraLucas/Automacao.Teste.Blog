*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://robotizandotestes.blogspot.com/
${BROWSER}  chrome
${BTN_PESQUISAR}  css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}  name=q
${SUBMIT_PESQUISAR}  css=input.search-action.flat-button

*** Keywords ***
Acessar pagina do blog
  Open Browser  ${URL}  ${BROWSER}
  Title Should Be  Robotizando Testes

Pesquisar por um post: "${TEXTO_PESQUISA}"
  Wait Until Element Is Visible  ${BTN_PESQUISAR} 
  Click Button  ${BTN_PESQUISAR}
  Input Text  ${INPUT_PESQUISAR}  ${TEXTO_PESQUISA}
  Click Element  ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por "${MSG_DESEJADA}"
  Page Should Contain  ${MSG_DESEJADA}

Fechar o navegador 
  Close Browser

