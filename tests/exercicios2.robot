*** Settings ***

Documentation    exercício de hoje: criar kayword que gera email
...              com o formato nome_sobrenome_idade@robot.com

Library    Collections



*** Variables ***
${NOME}        wallison
${SOBRENOME}   lisboa
${IDADE}       29

*** Test Cases ***

Formando o Email
    [Tags]            TEST_EMAIL
    ${RESULTADO}      Criar email com argumentos abaixo "wallison" e "lisboa" e "29"
    Log To Console    ${RESULTADO}

*** Keywords ***
Criar email com argumentos abaixo "${NOME}" e "${SOBRENOME}" e "${IDADE}"
       

    ${RESULTADO} =    Catenate    SEPARATOR=_   ${NOME}    ${SOBRENOME}    ${IDADE}
    [Return]           ${RESULTADO}@robot.com

   

    