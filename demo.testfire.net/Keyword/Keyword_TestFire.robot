*** Settings ***
Documentation   Testing demo.testfire.net Website
Library         Selenium2Library
Variables        ../Variable/Variable_TestFire.py
Variables        ../PageObject/HomePagePO.py
Resource        ../Keyword/Keyword_TestFire.robot
Library           DateTime
Library           String
Library           BuiltIn




*** Keywords ***
Open demo.testfire.net website and Maxmize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    log to console  Verified Message: Browser Open successfully with website www.demo.testfire.com and Maximize Browser

Close the Browser
    Close Browser

Verify Home Webpage Title
    #Title should be ${HomePageTitle}
    Should Be Equal As Strings    ${HomePageTitle}   Altoro Mutual
    log to console  Verified Home Page Title Matched

Verify AltoroMutual logo image is correctly displayed on top
    #Assert an image is visible  xpath=//*[@id="HyperLink1"]/img

Verify ONLINE BANKING LOGIN link is available
    ${linkOnlineBankingLogin}   Get Text   ${linkOnlineBankingLoginTab}
    Run Keyword If    '${linkOnlineBankingLogin}'=='ONLINE BANKING LOGIN'    Log To Console   Verified Online Banking Login Link available
    ...  ELSE  Log To Console   Verified Online Banking Login Link is NOT available

Click on ONLINE BANKING LOGIN link
    Click Element     ${linkOnlineBankingLoginTab}
    log to console  Verified Clicked on Link

Verify ONLINE BANKING LOGIN Tab is correctly opening
    ${txtmsgOnlineBankingLogin}    Get Text   ${linkOnlineBankingLoginTab}
    Run Keyword If    '${txtmsgOnlineBankingLogin}'=='ONLINE BANKING LOGIN'    Log To Console   Verified Online Banking Login Link available
    ...  ELSE  Log To Console   Verified Online Banking Login Link is NOT available
    log to console  tab open correctly

Verify PERSONAL link is available
    ${linkPersonal}    Get Text   ${linkPersonalTab}
    Run Keyword If    '${linkPersonal}'=='PERSONAL'    Log To Console   Verified PERSONAL Link available
    ...  ELSE  Log To Console   Verified PERSONAL Link is NOT available

Click on PERSONAL link
    Click Element   ${linkPersonalTab}
    log to console  Verified Clicked on PERSONAL Tab Link

Verify PERSONAL Tab is correctly opening
    ${txtmsgPersonal}    Get Text   ${linktxtPersonal}
    Run Keyword If    '${txtmsgPersonal}'=='Personal'    Log To Console    Verified PERSONAL Tab is opening
    ...  ELSE  Log To Console    Verified PERSONAL Tab is NOT opening

Verify SMALL BUSINESS link is available
    ${linkSmallBusiness}   Get Text  ${linkSmallBusinessTab}
    Run Keyword If  '${linkSmallBusiness}'=='SMALL BUSINESS'       log to console  Verified SMALL BUSINESS link is available
    ...  ELSE  log to console    Verified SMALL BUSINESS Link is NOT opening

Click on SMALL BUSINESS link
    Click Element  ${linkSmallBusinessTab}
    log to console  Verified Clicked on Small Business Tab Link

Verify SMALL BUSINESS Tab is correctly opening
    ${txtmsgSmallBusiness}   Get Text  ${linktxtSmallBusiness}
    Run Keyword If  '${txtmsgSmallBusiness}'=='Small Business'         log to console  Verified SMALL BUSINESS link is available
    ...  ELSE  log to console    Verified SMALL BUSINESS Link is NOT opening

Verify INSIDE ALTORO MUTUAL link is available
    ${linkInsideAltoroMutual}   Get Text  ${linkInsideAltoroMutualTab}
    Run Keyword If  '${linkInsideAltoroMutual}'=='INSIDE ALTORO MUTUAL'       log to console  Verified INSIDE ALTORO MUTUAL link is available
    ...  ELSE  log to console    Verified INSIDE ALTORO MUTUAL Link is NOT opening

Click on INSIDE ALTORO MUTUAL link
    Click Element  ${linkInsideAltoroMutualTab}
    log to console  Clicked on INSIDE ALTORO MUTUAL Tab Link

Verify INSIDE ALTORO MUTUAL Tab is correctly opening
    ${txtmsgInsideAltoroMutual}   Get Text  ${linktxtInsideAltoroMutual}
    Run Keyword If  '${txtmsgInsideAltoroMutual}'=='Inside Altoro'       log to console  Verified INSIDE ALTORO MUTUAL link is available
    ...  ELSE  log to console    Verified INSIDE ALTORO MUTUAL Link is NOT opening

Login Test with Invalid Credential
    Input Text   ${txtuserName_Xapth}     ${u_InvalidUserName}
    Input Text   ${txtpassword_Xpath}     ${u_InvalidPassword}
    Click Element   ${btnLogin_Xpath}
    log to console  Verified Login Test with Invalid Credential

Verify validation Message for Login with inValid Credential
    ${txtmsgInvalidLoginMessage}   Get Text  ${txtInvalidLoginMessage}
    log to console  ${txtmsgInvalidLoginMessage}
    Run Keyword If  '${txtmsgInvalidLoginMessage}'=='You must enter a valid username'   log to console  Verified validation Message for invalid Login
    ...  ELSE  log to console    Verified validation Message for invalid Login failed
    log to console  Verified validation Message for Login with inValid Credential

Login Test with Valid Credential
    Input Text   ${txtuserName_Xapth}     ${u_ValidUserName}
    Input Text   ${txtpassword_Xpath}     ${u_ValidPassword}
    Click Element   ${btnLogin_Xpath}
    log to console  Verified Login Test with Valid Credential

Verify Login Test with Valid Credential and opens next page successfully
    ${txtmsgHelloJohnSmith}   Get Text  ${txtHelloJohnSmith}
    Run Keyword If  '${txtmsgHelloJohnSmith}'=='Hello John Smith'       log to console  Verified Login Successfully and Hello John Smith header text is available
    ...  ELSE  log to console    Verified Login Not Successfully and Hello John Smith header text is NOT available
    log to console  Verified Login Test with Valid Credential and opens next page successfully


Select Bank Account in Dropdown
    Select From List   xpath=//*[@id="listAccounts"]/option[2]    800003 Checking

Click on Go button
    Click Element   ${btnGO_Xpath}

Verify Account Information Page is opening correctly
    ${txtmsgACHistory_Xpath}   Get Text  ${txtACHistory_Xpath}
    Run Keyword If  '${txtmsgACHistory_Xpath}'=='Account History - 4539082039396288 Credit Card'       log to console  Verified Credit Card AC Details are coming correctly
    ...  ELSE  log to console    Verified Credit Card AC Details are coming correctly
    log to console  Verified Account Information Page is opening correctly

Verify three Account section Balance & Transactions & Credits are coming correctly
    ${txtmsgACBalance_Xpath}   Get Text  ${txtACBalance_Xpath}
    Run Keyword If  '${txtmsgACBalance_Xpath}'=='Balance Detail'       log to console  Verified AC Details Balance Details Section are coming correctly
    ...  ELSE  log to console    Verified AC Details Balance Details Section are NOT coming correctly

    ${txtmsgACTransactions_Xpath}   Get Text  ${txtACTransactions_Xpath}
    Run Keyword If  '${txtmsgACTransactions_Xpath}'=='10 Most Recent Transactions'       log to console  Verified AC Details TRANSACTIONS Details Section are coming correctly
    ...  ELSE  log to console    Verified AC Details TRANSACTIONS Details Section are NOT coming correctly

    ${txtmsgACCredit_Xpath}   Get Text  ${txtACCredit_Xpath}
    Run Keyword If  '${txtmsgACCredit_Xpath}'=='Credits'       log to console  Verified AC Details CREDIT Details Section are coming correctly
    ...  ELSE  log to console    Verified AC Details CREDIT Details Section are NOT coming correctly
    log to console  Test Case 4 - Verify three Account section Balance & Transactions & Credits are coming correctly

Verify that current date is displayed in Balance Detail table
    ${CurrentDate}      Get Current Date   result_format=%m/%d/%y
    log to console  ${CurrentDate}
    ${txtmsgACCurrentBalanceDate_Xpath}   Get Text  ${txtACCurrentBalanceDate_Xpath}

    ${getDateFromString}  Get Substring    ${txtmsgACCurrentBalanceDate_Xpath}    21    28
    ${CorrectDateFromString}  Catenate    SEPARATOR= 0     ${getDateFromString}
    log to console  ${CorrectDateFromString}

    Run Keyword If  '${getDateFromString}'=='${CurrentDate}'    log to console  Verified current date is displayed in Balance Detail table
    ...  ELSE  log to console    Verified current date is NOT displayed same in Balance Detail table

Click on Transfer Fund Link in left hand navigation
    Click Element   ${linkTransferFund_Xpath}

Verify Transfer Fund page is opened
    ${txtmsgTransferFund_Xpath}   Get Text  ${txtTransferFund_Xpath}
    Run Keyword If  '${txtmsgTransferFund_Xpath}'=='Transfer Funds'       log to console  Verified Transfer Fund page is opened
    ...  ELSE  log to console    Verified Transfer Fund page is openedy

Select From Account & To Account & Amount to Transfer
    #Select from List by Value       ${selectFromAccount_Xpath}
    #Select from List by Value       ${selectToAccount_Xpath}
    Input Text  ${txtFundAmount_Xpath}   3000

Click on Transfer Money button
    Click Element   ${btnTransferMoney_Xpath}

Verify that a message is displayed with correct amount and from/to account details
    ${txtmsgSuccessFundTransfer_Xapth}     Get Text    ${txtSuccessFundTransfer_Xapth}
    Run Keyword If  '${txtmsgSuccessFundTransfer_Xapth}'=='Transfer Funds'       log to console  Verified Fund Transfer successfully transfered
    ...  ELSE  log to console    Verified Fund Transfer is NOT transfered

