*** Settings ***
Library                           AppiumLibrary
Resource                          ${EXECDIR}${/}Resources${/}base.robot                        
##Test Setup                      Open session
##Test Teardown                     Close Application

*** Test Cases ***
CT01 - Realizar login e abrir o minha loja 
    Dado que eu abro o aplicativo e realizo o login seller - CPF
    ##E estou na tela principal
    ##Então abro o minha loja
##CT02 - Validar texto  
    





