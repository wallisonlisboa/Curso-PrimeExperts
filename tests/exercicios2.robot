*** Settings ***

Documentation    exercício de hoje: criar kayword que gera email
...              com o formato nome_sobrenome_idade@robot.com

*** Variables ***
${NOME}        wallison
${SOBRENOME}   lisboa
${IDADE}       29

*** Keywords ***

Email criado "${EMAIL}"
    [Arguments]        ${NOME}  ${SOBRENOME}  ${IDADE}

    ${RESULTADO} =     Catenate    SEPARADOR=_    ${NOME}    ${SOBRENOME}    ${IDADE}
    
    [Return]          ${RESULTADO}@robot.com


*** Test Cases ***

Cenario: Imprimir E-mail no console
    
    Log To Console    ${RESULTADO}@robot.com
    