*** Settings ***
Library                    AppiumLibrary            run_on_failure=Capture Page Screenshot
Resource                   keywords.robot


*** Keywords ***
Open session
    Open application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Android Emulator
    ...                     appPackage=br.com.stone.ton.preprd
    ...                     appActivity=br.com.stone.ton.MainActivity
    ...                     udid=emulator-5554
Close session
    Close application 

Dado que estou logado com um usuario pessoa física seller
    Open session     
    Wait Until Element Is Visible            ${BTN_PERMISSAO}        30
    Click Element                            ${BTN_PERMISSAO}
    Wait Until Element Is Visible            ${BTN_ENTRAR}           10
    Element Should Be Visible                ${BTN_ENTRAR}
    Click Element                            ${BTN_ENTRAR}
    Wait Until Element Is Visible            ${INPUT_EMAIL} 
    Input Text                               ${INPUT_EMAIL}             ${EMAIL}
    Input Password                           ${INPUT_SENHA}             ${SENHA}  
    Click Element                            ${BTN_LOGIN} 
 
E abro o minha loja
    Sleep    10s
    Wait Until Element Is Visible            ${ICON_CATALOG}     7s      
    Element Should Be Visible                ${ICON_CATALOG}  
    Click Element                            ${ICON_CATALOG} 
E valido a tela Cadastre seu produto
    Wait Until Element Is Visible            ${CADASTRE_TITLE}        
    Element Should Be Visible                ${CADASTRE_TITLE} 
    Element Should Be Visible                ${HEADER_MINHALOJA}
    Element Should Be Visible                ${TXT_CADASTRE} 
    Click Element                            ${BTN_PROXIMO}
    ##lement Should Be Visible                ${VENDARAPIDO_TITLE}
    ##Element Should Be Visible               ${TXT_VENDARAPIDO}
E ao começar 
    Element Should Be Visible                ${BTN_COMECAR} 
    Click Element                            ${BTN_COMECAR}
Quando adiciono um novo produto sem foto
    ##Element Should Be Visible              ${ADICIONE_TITLE}
    ##Page Should Contain Text               ${ADICIONE_TITLE}
    Wait Until Element Is Visible            ${BTN_ADD_PRODUTO_NOVO}
    Element Should Be Visible                ${BTN_ADD_PRODUTO_NOVO}    
    Click Element                            ${BTN_ADD_PRODUTO_NOVO} 
 E adiciono o nome do produto    
    Wait Until Element Is Visible            ${ADD_FOTO}                 5s
    Element Should Be Visible                ${ADD_FOTO}
    Input Text                               ${INPUT_PRODUT_NAME}        Pudim    
E adiciono o valor do produto 
    Element Should Be Visible                ${INPUT_VALUE} 
    Input Text                               ${INPUT_VALUE}              20000
E adiciono a descrição do produto   
    Input Text                               ${INPUT_DESC}               O Melhor Pudim do Brasil é aqui                                       
E clico em adicionar novo produto
    Element Should Be Visible                ${CRIAR_PRODUTO} 
    Click Element                            ${CRIAR_PRODUTO} 
            
##----------------------------------------------LINK DE PAGAMENTO ------------------------------#

E abro o Link de Pagamento com a lista vazia 
    Wait Until Element Is Visible            ${ICON_LINK}    25s
    Element Should Be Visible                ${ICON_LINK}
    Click Element                            ${ICON_LINK}
    Wait Until Page Contains                 Você ainda não gerou nenhum link de pagamento    15s
    Page Should Contain Text                 Você ainda não gerou nenhum link de pagamento
    Click Element                            ${CREAT_LINK_EMPTY}
Quando insiro o valor >R$10,00
    Wait Until Element Is Visible            ${VALOR}        15s 
    Element Should Be Visible                ${VALOR}
    Click Element                            ${VALOR_1}
    Click Element                            ${VALOR_2}
    Click Element                            ${VALOR_3}
    Click Element                            ${VALOR_1}   
E clico no botão criar link 
    Wait Until Element Is Visible            ${BTN_CRIARLINK}          15s 
    Element Should Be Visible                ${BTN_CRIARLINK}
    Click Element                            ${BTN_CRIARLINK}           
E descrevo a cobrança e continuo 
    Wait Until Page Contains                 Descreva sua cobrança     15s
    Page Should Contain Text                 Descreva sua cobrança
    Page Should Contain Text                 A descrição aparecerá para seus clientes no pagamento.
    Input Text                               ${INPUT_DESC}         Cobrança Teste
    Click Element                            ${BTN_DESC_CONTINUAR}
E informo o meio de pagamento - Boleto 
    Wait Until Page Contains                 Formas de pagamento        15s        
    Page Should Contain Text                 Formas de pagamento
    Page Should Contain Text                 Selecione de que forma esse link poderá ser pago    
    Click Element                            ${TOGLLE_BOLETO} 
    Wait Until Element Is Visible            ${BTN_3DIAS}
    Element Should Be Visible                ${BTN_3DIAS}
    Click Element                            ${BTN_3DIAS} 
    Wait Until Page Contains                 Boletos podem levar até 3 dias úteis para serem compensados, logo isso pode impactar no prazo do saldo do aplicativo.
    Page Should Contain Text                 Boletos podem levar até 3 dias úteis para serem compensados, logo isso pode impactar no prazo do saldo do aplicativo.
    Page Should Contain Text                 Prazo de recebimento
    Wait Until Element Is Visible            ${CLOSE_MODAL} 
    Element Should Be Visible                ${CLOSE_MODAL}  
    Click Element                            ${CLOSE_MODAL}            
E informo o meio de pagmamento - Cartão de crédito - A vista
    Wait Until Page Contains                 Formas de pagamento        15s        
    Page Should Contain Text                 Formas de pagamento
    Page Should Contain Text                 Selecione de que forma esse link poderá ser pago 
    Click Element                            ${TOGGLE_CREDIT_CARD} 
    Wait Until Element Is Visible            ${TIPO_PARCELAMENTO}       5s
    Click Element                            ${TIPO_PARCELAMENTO}
    Wait Until Element Is Visible            ${A_VISTA}                 5s
    Click Element                            ${A_VISTA} 
    Click Element                            ${SALVAR_TIPO_PARC} 
    Wait Until Element Is Visible            ${TAXA_LINK}
    Element Should Be Visible                ${TAXA_LINK}
E abro o Link de Pagamento 
    Wait Until Element Is Visible            ${ICON_LINK}               30s
    Element Should Be Visible                ${ICON_LINK}
    Click Element                            ${ICON_LINK}
    Wait Until Element Is Visible            ${BTN_CREAT_LNK}            15s
    Element Should Be Visible                ${BTN_CREAT_LNK}
    Click Element                            ${BTN_CREAT_LNK}
E crio o link de pagamento com lista
    Wait Until Element Is Visible            ${BTN_CRIARLINK}           10s   
    Element Should Be Visible                ${BTN_CRIARLINK}    
    Click Element                            ${BTN_CRIARLINK}  
Então crio o link de pagamento 
    Element Should Be Visible                ${BTN_CREAT_LNK}
    Click Element                            ${BTN_CREAT_LNK}
E valido as informações do link
    Wait Until Element Is Visible            ${ICON_ZAP}            15s
    Element Should Be Visible                ${ICON_ZAP}
    Element Should Be Visible                ${ICON_FACE} 
    Element Should Be Visible                ${MORE} 
    Click Element                            ${COPY_LINK}
    Capture Page Screenshot              
E volto para o menu principal 
    Element Should Be Visible                ${BOTAO_VOLTAR} 
    Click Element                            ${BOTAO_VOLTAR} 
    Wait Until Element Is Visible            ${ICON_LINK}     15S         
    Element Should Be Visible                ${ICON_LINK} 
Quando clico em encerrar o link 
    Wait Until Element Is Visible            ${BTNC_ENCERRAR_LINK}    15s
    Element Should Be Visible                ${BTNC_ENCERRAR_LINK}
    Click Element                            ${BTNC_ENCERRAR_LINK}
E escolho um link com o status ativo
    Wait Until Page Contains                Aguardando pagamento        10s
    Page Should Contain Text                Aguardando pagamento
    Click Text                              Aguardando pagamento
E confirmo que desejo encerrar o link 
    Wait Until Page Contains                Deseja encerrar esse link?    15s
    Page Should Contain Text                Deseja encerrar esse link?
    Click Element                           ${CONFIRMACAO}
Então o link é Cancelado
    Wait Until Page Contains                Link cancelado                 15s
    Page Should Contain Text                Link cancelado
    Page Should Contain Text                Este link de pagamento está com o status de cancelado e não poderá receber novos pagamentos
    Capture Page Screenshot
    ##STATUS LABEL = LINK CANCELADO
E Listo os links de pagamento     
    Wait Until Element Is Visible            ${ICON_LINK}                 30s
    Element Should Be Visible                ${ICON_LINK}
    Click Element                            ${ICON_LINK}
    Wait Until Element Is Visible            ${FILTRO_LINK}               30s
    Element Should Be Visible                ${FILTRO_LINK}




    