*** Settings ***
Documentation           Aqui estarao presentes todas as keywords que
...                     compõem os testes de automação web.

Library                 SeleniumLibrary
Library                 String
Library    Collections

*** Variable ***
${BROWSER}              chrome
${URL}                  http://automationpractice.com


**Keywords*** 
### Setup e Teardown
Abrir o navegador
    Open Browser       browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
     Close Browser

Acessar a página home do site Automation Practice
    Go To               ${URL}
    Wait Until Element Is Visible       xpath=//*[@id="block_top_menu"]/ul
    Title Should Be                     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          name=search_query       ${PRODUTO}
    #Capture Page Screenshot

Clicar no botão pesquisar
    Click Button         name=submit_search
    #Capture Page Screenshot

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible       class=page-heading
    Title Should Be                     Search - My Store
    Page Should Contain Image           xpath=//*[@id="center_column"]//*[@src="${URL}/img/p/7/7-home_default.jpg"]
    Page Should Contain Link            xpath=//*[@id="center_column"]//*[@class="product-name"][contains(text(), "${PRODUTO}")]
    

Conferir mensagem "${MENSAGEM_ERROR}"
    
    Wait Until Element Is Visible          xpath=//*[@id="center_column"]/p
    Element Text Should Be                 xpath=//*[@id="center_column"]/p    ${MENSAGEM_ERROR}

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Mouse Over                             xpath=//*[@id="block_top_menu"]/ul/li[1]/a[@class="sf-with-ul"]


Clicar na sub categoria "${SUBCATEGORY}"
    Wait Until Element Contains           xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a    ${SUBCATEGORY}
    Click Link                            xpath=//*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
    

Conferir se os produtos da sub-categoria "${CONFERIR_PRODUTOS}" foram mostrados na página
   
    Wait Until Element Is Visible        xpath=//*[@id="center_column"]/h1/span[1]
    Wait Until Element Is Visible        xpath=//*[@id="center_column"]/h1/span[2]
    Mouse Over                           xpath=//*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a
    Mouse Over                           xpath=//*[@id="center_column"]/ul/li[2]/div/div[1]/div/a[1]/img
    Mouse Over                           xpath=//*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img

    