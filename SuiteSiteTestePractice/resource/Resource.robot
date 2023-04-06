*** Settings ***
Library              SeleniumLibrary
*** Variables ***
${URL}          https://gorest.co.in/
${BROWSER}      chrome

*** Keywords ***
Abrir navegador
    Open Browser    https://gorest.co.in/    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser    

Login no sistema
    Wait Until Element Is Visible    //a[text()="Login"]
    Click Element                    //a[text()="Login"]    

    Wait Until Element Is Visible    //a[text()=" Google"]
    Click Element                    //a[text()=" Google"]

    Wait Until Element Is Visible    //input[@name="identifier"]
    Sleep  2s
    Double Click Element             //input[@name="identifier"]
    Input Text                       //input[@id="identifierId"]    practiceautomationmix@gmail.com
    Click Element                    //span[text()="Próxima"]            

    Wait Until Element Is Visible    //input[@name="password"]
    Sleep  2s
    Double Click Element             //input[@name="password"]
    Input Text                       //input[@name="password"]      practicemix123
    Click Element                    //span[text()="Próxima"]

Usuário clica no botão “New Access Token”
    Wait Until Element Is Visible    //a[text()="New Acess Token"]
    Click Element                    //a[text()="New Acess Token"]
    
Usuário é redirecionado para página de “Generate Access Token”
    Wait Until Element Is Visible    //h1[text()="Generate Access Token"]

Usuário preenche os campos obrigatórios e clica em “Submit”
    Wait Until Element Is Visible    //input[@name="access_token[label]"]
    Double Click Element             //input[@name="access_token[label]"]
    Input Text                       //input[@name="access_token[label]"]         tokenteste

    Double Click Element             //input[@name="access_token[rate_limit]"]            
    Input Text                       //input[@name="access_token[rate_limit]"]    2

    Click Element                    //input[@name="commit"]

Sistema redireciona o usuário para página de “Access Tokens”
    Wait Until Location Is           https://gorest.co.in/my-account/access-tokens

Sistema exibe token criado
    Wait Until Element Is Visible    //a[text()="tokenteste"]
    
