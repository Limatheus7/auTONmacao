*** Settings ***
Resource                          ${EXECDIR}${/}Resources${/}Base.robot                        
Test Setup                        Open sessions
Test Teardown                     Close Application

*** Test Cases ***
CT01 - Abrir a feature do minha loja 
    Dado que eu abro o aplicativo e realizo o login seller - CPF
CT02 - A





