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
    Wait Until Element Is Visible            ${BTN_PERMISSAO}        10
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
            
