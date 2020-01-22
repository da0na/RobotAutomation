*** Settings ***
Documentation   Testing Mercury Tours Website
Library         Selenium2Library
Resource        ../Keyword/MercuryKeywords.robot

*** Variables ***
${URL}          http://newtours.demoaut.com
${Browser}      Firefox
${HomeTitle}    Welcome: Mercury Tours
${LoginTitle}   Find a Flight: Mercury Tours:
${timeout}      120s


*** Test Cases ***
TestCase1: Open Browser Mercury Website
        Open Mercury Website and Maxmize
        Verify Home Webpage Title
        Close the Browser

TestCase2: Mercury Valid Login Credential
    Open Mercury Website and Maxmize
    Verify Home Webpage Title
    Login Mercury Website
    sleep  ${timeout}
    Verify Login Webpage Title

TestCase3: Mercury Invalid Login Credential


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



