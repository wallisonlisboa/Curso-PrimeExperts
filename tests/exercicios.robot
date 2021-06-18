*** Settings ***
# Dentro do documentation estará presente informações a respeito de arquivo
Documentation        Aqui estarão presentes todos os exercícios do Prime Experts
...                  focado em Imensão com Robot
Library    Collections

*** Variables ***
# Minha primeira variável simples
${NOME}       Wallison Lisboa


# Minha primeira variável tipo Dicionário

&{PESSOA}          
...    nome=Wallison        
...    sobrenome=Lisboa        
...    idade=29
...    cpf=00000000000
...    endereço=rua 9, Qd2
...    estado=Distrito Federal
...    rg=123.321.44
...    cnh=32131231455
...    dominio=@robot.com

# Minha primeira variável tipo lista

@{FRUTAS}  
...      Banana
...      Maça
...      Abacaxi    
...      Morango

*** Test Cases ***


Cenario: Imprimir 6 informações de usuario
    [Tags]            TESTE

    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.cpf}
    Log To Console    ${PESSOA.endereço}
    Log To Console    ${PESSOA.estado}
    Log To Console    ${PESSOA.rg}
    Log To Console    ${PESSOA.cnh}


Cenario: Imprimir Frutas
    Log To Console    ${FRUTAS}

Cenario: Imprimir Frutas
    Log To Console    \nBanana
    Log To Console    \nMaça
    Log To Console    \nAbacaxi
    Log To Console    \nMorango

Cenario: Realizar Soma
    [Tags]            SOMA
    ${RESULTADO}      Somar dois números    2    4
    Log To Console    ${RESULTADO}

Cenario: Realizar Soma 2
    [Tags]            SOMA_2
    ${RESULTADO}      Somar dois números "3" e "7"
    Log To Console    ${RESULTADO}

Cenario: Contando de 0 a 9

    [Tags]        COUNT
    FOR    ${count}    IN RANGE  0    10
        Log To Console  ${count}
     END

# O FOR é para ele ficar rodando até achar o que é preciso
Cenario: For para imprimir Frutas
    [Tags]        FRUTAS
    @{FRUTA}      Create List    Morango    maça    uva abacaxi
    FOR     ${Frutas}    IN    @{FRUTAS}
        Log To Console    ${frutas}
    END

Cenário: Contando imprime no console
    [Tags]        TESTE
    FOR     ${numero}    IN RANGE  0    10
        Log To Console   Estou no numero: ${numero}
    END

Cenario: Aprendendo IF e ELSE IF
    [Tags]    TESTES
    FOR      ${numero}    IN RANGE    0    10
        IF    ${numero} == 5
        Log To Console    Estou no numero: ${numero}
        ELSE IF    ${numero} == 8
        Log To Console    Estou no numero: ${numero}
    END
    END
    
*** Keywords ***

Somar dois números
    [Arguments]        ${NUM_A}    ${NUM_B}
    ${SOMA}            Evaluate    ${NUM_A}+${NUM_B}
    [Return]           ${SOMA}
   
Somar dois números "${NUM_A}" e "${NUM_B}"
 
    ${SOMA}            Evaluate    ${NUM_A}+${NUM_B}
    [Return]           ${SOMA}


Contado usando o For
    [Arguments]    ${INIT}    ${FINISH}
    FOR    ${count}    IN RANGE   ${INIT}    ${FINISH}
        Log To Console    ${count}
    END
    
    Contado usando o For    0    20

Imprimir e-mail do paises
    @{PAISES}    Create List    Brasil     Jamaica     Suiça     México    Canada
    FOR     ${país}    IN    @{PAISES}
        Log To Console    Estou no seguinte país:  ${país}
    END
    

 
 
    
  
   
    






   
    