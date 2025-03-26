*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Abrir Tela Controls Light Theme
    Wait Until Page Contains Element    //android.widget.TextView[@text="Views"]    10s
    Click Element                       //android.widget.TextView[@text="Views"]
    Wait Until Page Contains Element    //android.widget.TextView[@text="Controls"]    10s
    Click Element                       //android.widget.TextView[@text="Controls"]
    Wait Until Page Contains Element    //android.widget.TextView[@text="1. Light Theme"]    10s
    Click Element                       //android.widget.TextView[@text="1. Light Theme"]

Preencher Formulario
    Input Text    //android.widget.EditText[@resource-id="io.appium.android.apis:id/edit"]    Teste Appium
    Hide Keyboard
    Click Element    //android.widget.CheckBox[@text="Checkbox 1"]
    Click Element    //android.widget.RadioButton[@text="RadioButton 1"]
    Swipe    500    1500    500    500
    Sleep    1s
    Click Element    //android.widget.Spinner
    Wait Until Page Contains Element    //android.widget.CheckedTextView[@text="Mars"]    5s
    Click Element    //android.widget.CheckedTextView[@text="Mars"]
