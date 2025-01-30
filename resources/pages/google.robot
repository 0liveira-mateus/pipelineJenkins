*** Settings ***

Resource    ../main.robot


*** Variables ***
&{google}
...    url=https://www.google.com.br
...    campo=(//input[@value="Pesquisa Google"])[2]


*** Keywords ***
Abrir url google
    Open Browser    ${google.url}    firefox
Copiar o campo google
    Wait Until Element Is Visible    ${google.campo}
    ${texto}    Get Value    ${google.campo}
