*** Settings ***
Library                           AppiumLibrary
Resource                          ${EXECDIR}${/}Resources${/}base.robot    

*** Test Cases ***

CT01 - Criação do link de pagamento com a lista vazia
    [Tags]    ListaVazia
    Dado que estou logado com um usuario pessoa física seller
    E abro o Link de Pagamento com a lista vazia 
    Quando insiro o valor >R$10,00 
    E clico no botão criar link 
    E descrevo a cobrança e continuo 
    E informo o meio de pagamento - Boleto 
    E informo o meio de pagmamento - Cartão de crédito - A vista
    Então crio o link de pagamento 
    E valido as informações do link 
    E volto para o menu principal
    
CT02 - Criação de um link de pagamento com lista 
    [Tags]    link
    Dado que estou logado com um usuario pessoa física seller
    E abro o Link de Pagamento 
    Quando insiro o valor >R$10,00
    E crio o link de pagamento com lista      ##Levanta ponto de duvida se isso está correto!  
    E clico no botão criar link 
    E descrevo a cobrança e continuo
    E informo o meio de pagamento - Boleto 
    E informo o meio de pagmamento - Cartão de crédito - A vista
    Então crio o link de pagamento 
    E valido as informações do link 
    E volto para o menu principal

CT03 - Encerramento do link de pagamento 
    [Tags]    cancelamento
    Dado que estou logado com um usuario pessoa física seller
    E Listo os links de pagamento    
    E escolho um link com o status ativo 
    Quando clico em encerrar o link 
    E confirmo que desejo encerrar o link 
    Então o link é Cancelado
    
#CT04 - Tratativas de erro 
#CT05 - Link pelo catalogo