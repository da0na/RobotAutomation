*** Settings ***
Documentation   Testing demo.testfire.net Website
Library         Selenium2Library
Variables        ../Variable/Variable_TestFire.py
Variables        ../PageObject/HomePagePO.py
Resource        ../Keyword/Keyword_TestFire.robot



*** Test Cases ***
TestCase1: Verify that AltoroMutual logo image at Home Page
    [Documentation]  This is Verify that AltoroMutual logo image on 'http://demo.testfire.net/login' website
    [Tags]  AltoroMutual_logo
    [Setup]
    Open demo.testfire.net website and Maxmize
    Verify Home Webpage Title
    #Verify AltoroMutual logo image is correctly displayed on top
    [Teardown]  Close the Browser

TestCase2: Verify that All 4 Tabs available ONLINE BANKING LOGIN, PERSONAL, SMALL BUSINESS and INSIDE ALTORO MUTUAL at Home Page
    [Documentation]  This is Verify that All 4 Tabs on Top available  on 'http://demo.testfire.net/login' website
    [Tags]  All_4_Tabs_on_Top
    [Setup]
    Open demo.testfire.net website and Maxmize
    Verify Home Webpage Title
    Verify ONLINE BANKING LOGIN link is available
    Click on ONLINE BANKING LOGIN link
    Verify ONLINE BANKING LOGIN Tab is correctly opening
    Verify PERSONAL link is available
    Click on PERSONAL link
    Verify PERSONAL Tab is correctly opening
    Verify SMALL BUSINESS link is available
    Click on SMALL BUSINESS link
    Verify SMALL BUSINESS Tab is correctly opening
    Verify INSIDE ALTORO MUTUAL link is available
    Click on INSIDE ALTORO MUTUAL link
    Verify INSIDE ALTORO MUTUAL Tab is correctly opening
    [Teardown]  Close the Browser


TestCase3: Verify that Login on testfire.net website
    [Documentation]  This is Verify that Login on 'http://demo.testfire.net/login' website
    [Tags]  Login_Test_Valid_Invalid_Credential
    [Setup]
    Open demo.testfire.net website and Maxmize
    Click on ONLINE BANKING LOGIN link
    Login Test with Invalid Credential
    #Verify validation Message for Login with inValid Credential
    Login Test with Valid Credential
    Verify Login Test with Valid Credential and opens next page successfully
    [Teardown]  Close the Browser

TestCase4: Verify Account History Page is correctly opening with below account information on testfire.net website
    [Documentation]  This is Verify Account History Page is correctly opening with below account information on 'http://demo.testfire.net/login' website
    [Tags]  Account_History_Information
    [Setup]
    Open demo.testfire.net website and Maxmize
    Click on ONLINE BANKING LOGIN link
    Login Test with Valid Credential
    #Select Bank Account in Dropdown
    Click on Go button
    Verify Account Information Page is opening correctly
    Verify three Account section Balance & Transactions & Credits are coming correctly
    #Verify Account No is coming correct as selected on dropdown on Page
    Verify that current date is displayed in Balance Detail table
    [Teardown]  Close the Browser


TestCase5: Verfiy Fund Transfer from Account to Account and successful message received correctly on testfire.net website
    [Documentation]  This is Verify Verfiy Fund Transfer from Account to Account and successful message received correctly
    [Tags]  Fund_Transfer
    [Setup]
    Open demo.testfire.net website and Maxmize
    Click on ONLINE BANKING LOGIN link
    Login Test with Valid Credential
    Click on Transfer Fund Link in left hand navigation
    Verify Transfer Fund page is opened
    Select From Account & To Account & Amount to Transfer
    Click on Transfer Money button
    Verify that a message is displayed with correct amount and from/to account details