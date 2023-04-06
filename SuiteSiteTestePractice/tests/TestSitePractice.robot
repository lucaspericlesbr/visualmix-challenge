*** Settings ***
Resource             ../resource/Resource.robot
Suite Setup          
Test Setup           Abrir navegador
Suite Teardown       
Test Teardown        Fechar navegador

*** Test Case ***
006 : Fluxo Básico - Gerar novo token de acesso
    Login no sistema
    Usuário clica no botão “New Access Token”
    Usuário é redirecionado para página de “Generate Access Token”
    Usuário preenche os campos obrigatórios e clica em “Submit”
    Sistema redireciona o usuário para página de “Access Tokens”
    Sistema exibe token criado

