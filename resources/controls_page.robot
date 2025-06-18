*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Abrir Tela Controls Light Theme
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Views"]    10s
    Click Element                       //android.widget.TextView[@text="Views"]
    Wait Until Page Contains Element    //android.widget.TextView[@text="Controls"]    10s
    Click Element                       //android.widget.TextView[@text="Controls"]
    Wait Until Page Contains Element    //android.widget.TextView[@text="1. Light Theme"]    10s
    Click Element                       //android.widget.TextView[@text="1. Light Theme"]

Preencher Formulario
    Input Text    xpath=//android.widget.EditText[@resource-id="io.appium.android.apis:id/edit"]    Teste Appium
    Hide Keyboard
    Sleep    1s
    

