*** Settings ***
Library           AppiumLibrary
Resource          ../resources/controls_page.robot

*** Variables ***
${APPIUM_SERVER}         http://localhost:4723
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      8.1.0
${DEVICE_NAME}           emulator-5554
${APP_PATH}              ${EXECDIR}/apk/ApiDemos-debug.apk
${AUTOMATION_NAME}       UiAutomator2

*** Keywords ***
Abrir Aplicativo
    Open Application    ${APPIUM_SERVER}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP_PATH}
    ...    automationName=${AUTOMATION_NAME}
    ...    autoGrantPermissions=true

Fechar Aplicativo
    Close Application

*** Test Cases ***
Validar Preenchimento na Tela Controls
    [Setup]    Abrir Aplicativo
    [Teardown]    Fechar Aplicativo
    Abrir Tela Controls Light Theme
    Preencher Formulario
