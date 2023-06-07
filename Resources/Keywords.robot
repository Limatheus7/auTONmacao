*** Settings ***
Library                 AppiumLibrary 
Resource                keywords.robot

*** Variables ***
${EMAIL}                  matheus.lperes+autonmacao3@stone.com.br
${SENHA}                  ton@1234
${BTN_PERMISSAO}          id=com.android.permissioncontroller:id/permission_allow_foreground_only_button
${BTN_ENTRAR}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
${INPUT_EMAIL}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.EditText
${INPUT_SENHA}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.EditText
${BTN_LOGIN}              accessibility_id=btn-login
${ICON_CATALOG}           accessibility_id=btn-product-catalog
${CADASTRE_TITLE}         xpath=//android.widget.FrameLayout[@content-desc="pager-onboarding"]/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[1]
${TXT_CADASTRE}           Adicione os seus produtos ou serviços na Minha Loja.\n\nAssim, você tem um catálogo da sua loja sempre à mão para mostrar aos seus clientes!
${HEADER_MINHALOJA}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.widget.TextView
${BTN_PROXIMO}            accessibility_id=btn-onboarding-next
${VENDARAPIDO_TITLE}      xpath=//android.widget.FrameLayout[@content-desc="pager-onboarding"]/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[1]
${TXT_VENDARAPIDO}        xpath=//android.widget.FrameLayout[@content-desc="pager-onboarding"]/androidx.viewpager.widget.ViewPager/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout/android.view.ViewGroup/android.widget.TextView[2]
${ADICIONE_TITLE}         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView[1]
##${TEXT_ADICIONE}        Adicione o seu primeiro produto
${BTN_COMECAR}            accessibility_id=btn-onboarding-next
${INPUT_PRODUT_NAME}      accessibility_id=input-name
${INPUT_VALUE}            accessibility_id=input-amount
${INPUT_DESC}             accessibility_id=input-description
${ADD_FOTO}               accessibility_id=btn-choose-product-photo
${BTN_ADD_PRODUTO_NOVO}   accessibility_id=btn-add-new-product
${CRIAR_PRODUTO}          accessibility_id=btn-add-product

## LINK DE PAGAMENTO #=========================

${ICON_LINK}              accessibility_id=btn-payment-link
${CREAT_LINK_EMPTY}       accessibility_id=btn-create-link-list-empty
${VALOR_1}                accessibility_id=btn-keyboard-1
${VALOR_2}                accessibility_id=btn-keyboard-2   
${VALOR_3}                accessibility_id=btn-keyboard-3
${BTN_BACKSPACE}          accessibility_id=btn-keyboard-backspace
${BTN_ADD}                accessibility_id=btn-keyboard-add   
${VALOR}                  accessibility_id=tab-amount    
${BTN_CRIARLINK}          accessibility_id=btn-charge-amount-tab                
${INPUT_DESC}             accessibility_id=input-description
${BTN_DESC_CONTINUAR}     accessibility_id=btn-description-continue
${TOGLLE_BOLETO}          accessibility_id=accordion-toggle-boleto
${BTN_3DIAS}              accessibility_id=btn-boleto-hint-anticipation-delay
${CLOSE_MODAL}            accessibility_id=btn-close-dialog   
${TOGGLE_CREDIT_CARD}     accessibility_id=accordion-toggle-credit_card
${TIPO_PARCELAMENTO}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.TextView    
${A_VISTA}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView
${SALVAR_TIPO_PARC}       xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]
${TAXA_LINK}              accessibility_id=btn-hint-fee
${BTN_CREAT_LNK}          accessibility_id=btn-create-link
${ICON_ZAP}               accessibility_id=btn-whatsapp-sharing
${ICON_FACE}              accessibility_id=btn-facebook-sharing
${MORE}                   accessibility_id=btn-more-sharing-options
${COPY_LINK}              accessibility_id=btn-copy-to-clipboard
${BOTAO_VOLTAR}           accessibility_id=btn-header-back
${FILTRO_LINK}            accessibility_id=btn-all-payment-links-filter
${LINK_ITEM}              accessibility_id=payment-link-item
${BTNC_ENCERRAR_LINK}      accessibility_id=btn-cancel-link
${CONFIRMACAO}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]
${STATUS_LABEL}           id=statusLabel