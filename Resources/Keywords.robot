*** Settings ***
Library                 AppiumLibrary 


*** Variables ***
${EMAIL}                  matheus.lperes+preprd+920+giga@stone.com.br
${SENHA}                  ton@1234
${BTN_PERMISSAO}          id=com.android.permissioncontroller:id/permission_allow_foreground_only_button

*** Keywords ***

Dado que eu abro o aplicativo e realizo o login seller - CPF
    Open session         
E