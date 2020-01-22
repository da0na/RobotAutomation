*** Settings ***
Documentation   Testing demo.testfire.net Website
Library         Selenium2Library
Variables        ../Variable/Variable_TestFire.py
Resource        ../Keyword/Keyword_TestFire.robot
Library          DataDriver      ../TestData/LoginDataExcel1.xlsx   sheet_name=Sheet1

Test Template    Validate Login with Differnt Valid Credentials

*** Test Cases ***
TestCase3: Verify that Login on testfire.net website
    [Documentation]  This is Verify that Login on 'http://demo.testfire.net/login' website
    [Tags]  Login_Test_with_Excel
    [Setup]
    Open demo.testfire.net website and Maxmize
    Click on ONLINE BANKING LOGIN link
    Validate Login with Differnt Valid Credentials  ${UserName}   ${Password}
    #LoginTestwithCSV using ${UserName} and ${Password}


*** Keywords ***
Validate Login with Differnt Valid Credentials
    [Arguments]   ${UserName}   ${Password}
    log to console  Login test excel
    Input Element  ${UserName}
    Input Element  ${Password}
    Click Element  xpath=//*[@id="login"]/table/tbody/tr[3]/td[2]/input
    log to console  Login test excel successfully