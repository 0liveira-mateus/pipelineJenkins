*** Settings ***

Resource    ../main.robot


*** Variables ***
&{youtube}
...    url=https://www.youtube.com/watch?v=mSYEzm2gIAQ
...    campo=//h1[@class="style-scope ytd-watch-metadata"]


*** Keywords ***
Abrir url 
    Open Browser    ${youtube.url}    firefox
Copiar o campo 
    Wait Until Element Is Visible    ${youtube.campo}
    ${texto}    Get Text    ${youtube.campo}
