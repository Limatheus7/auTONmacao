*** Settings ***
Library                           AppiumLibrary
Resource                          ${EXECDIR}${/}Resources${/}base.robot                        
##Test Setup                      Open session
##Test Teardown                   Close Application

*** Test Cases ***
CT01 - Cadastro de novo produto sem foto no minha loja 
    Dado que estou logado com um usuario pessoa física seller 
    E abro o minha loja
    E valido a tela Cadastre seu produto
    E ao começar 
    Quando adiciono um novo produto sem foto
    E adiciono o nome do produto 
    E adiciono o valor do produto 
    E adiciono a descrição do produto 
    E clico em adicionar novo produto 
    ##Então visualizo o produto cadastrado na tela catalogo

##CT02 - Cadastro de produto com foto 
##CT03 - Editar produto 
##CT04 - Excluir produto 
    





