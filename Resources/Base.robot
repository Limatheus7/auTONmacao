*** Settings ***
Library                    AppiumLibrary            run_on_failure=Capture Page Screenshot
Resource                   Keywords.robot

*** Keywords ***
Open sessions
    Open application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2
    ...                     platformName=Android
    ...                     deviceName=Android Emulator
    ...                     appPackage=br.com.stone.ton.preprd
    ...                     appActivity=br.com.stone.ton.MainActivity
    ...                     udid=emulator-5554

Close session
    Close application 

