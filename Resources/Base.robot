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

Dado que eu abro o aplicativo e realizo o login seller - CPF
    Open session     
    Wait Until Element Is Visible            ${BTN_PERMISSAO}        20
    Click Element                            ${BTN_PERMISSAO}
    Wait Until Element Is Visible            ${BTN_ENTRAR}           20
    Element Should Be Visible                ${BTN_ENTRAR}
    Click Element                            ${BTN_ENTRAR}
    Wait Until Element Is Visible            ${INPUT_EMAIL} 
    Input Text                               ${INPUT_EMAIL}             ${EMAIL}
    Input Password                           ${INPUT_SENHA}             ${SENHA}             
