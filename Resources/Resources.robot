*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Browser and Maximaze
    Open Browser https://www.thetestingworld.com/testings/  Firefox
    Maximize Browser Window

Close Browser Window
    Close Browser