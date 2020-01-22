*** Settings ***
Documentation    Testing Mercury Tours Website Keywords
Library         Selenium2Library


*** Keywords ***
Open Mercury Website and Maxmize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Close the Browser
    Close Browser

Verify Home Webpage Title
    Title Should be  ${HomeTitle}

Login Mercury Website
    Input Text  name:userName  mercury
    Input Text  name:password  mercury
    Click Element  name:login

Verify Login Webpage Title
    Title Should be  ${LoginTitle}
