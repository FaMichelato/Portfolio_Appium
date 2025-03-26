*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Abrir Menu Accessibility
    Wait Until Page Contains Element    //android.widget.TextView[@text="Accessibility"]    10s
    Click Element                       //android.widget.TextView[@text="Accessibility"]

Validar Tela Accessibility Aberta
    Wait Until Page Contains Element    //android.widget.TextView[@text="Accessibility Node Provider"]    10s
    Page Should Contain Element         //android.widget.TextView[@text="Accessibility Node Provider"]
