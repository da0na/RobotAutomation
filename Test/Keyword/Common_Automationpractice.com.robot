*** Settings ***
Documentation   Testing automationpractice.com Website
Library         Selenium2Library
Variables       ../Variable/Variable_Automationpractice.py
Resource        ../Keyword/Keywords_Automationpractice.com.robot


*** Keywords ***

Open Automationpractice.com Website and Maxmize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    log to console  Message: Browser Open successfully with website www.automationpractice.com and Maximize Browser

Verify Home Webpage Title
    Title Should be  ${HomePageTitle}
    log to console  Home Page Correctly opened with title name ${HomePageTitle}

Close the Browser
    Close Browser

