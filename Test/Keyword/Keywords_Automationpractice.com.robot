*** Settings ***
Documentation   Testing automationpractice.com Website
Library         Selenium2Library
Variables       ../Variable/Variable_Automationpractice.py
Resource        ../Keyword/Keywords_Automationpractice.com.robot
Resource        ../Keyword/Common_Automationpractice.com.robot
Variables        ../Locators/Element_Automationpractice.py

*** Keywords ***
Click on Sign IN menu
    Click Element  ${SignIN}

Verify Login webpage opens successfully
    Title Should be  ${LoginPageTitle}
    log to console  Home Page Correctly opened with title name ${LoginPageTitle}

Enter email id under create an account section
    input text              ${txtEmailID}         ${U_EmailId}

Click on Create an account button
    Click Element           ${btnCreateAccount}

Enter Personal Information with required field
    wait until page contains element  ${btnSubmitAccount}
    input Text  ${txtCustomerFirstName}                 ${U_customer_firstname}
    input Text  ${txtCustomerLastName}                  ${U_customer_lastname}
    input Text  ${txtPassword}                          ${U_password}
    Input Text  ${txtFirstName}                         ${U_firstname}
    Input Text  ${txtLastName}                          ${U_lastname}
    Input Text  ${txtAddress}                           ${U_address1}
    Input Text  ${txtCity}                               ${U_city}

    wait until page contains element  ${btnSubmitAccount}

    Select from List by Value   ${selectIDState}         ${U_id_state}
    Input Text                  ${txtPostCode}           ${U_postcode}
    Select from List by Value   ${selectCountryID}       ${U_id_country}
    Input Text                  ${txtPhone}              ${U_phone_mobile}
    Input Text                  ${txtAlias}              ${U_alias}

Click on Register button
    Click Element               ${btnSubmitAccount}

Verify Register successfully completed
    Title Should be  ${MyAccountPageTitle}
    log to console  Page Title are coming - ${MyAccountPageTitle}

Login with Already Registered
    wait until page contains element  xpath=//*[@id='email']
    Input Text              ${txtEmailID_Xpath}                 ${U_EmailId}
    Input Text              ${txtPassword_Xpath}                ${U_password}
    Click element           ${btnSubmitLogin_Xpath}

Verify Login successfully
    Title should be         ${MyAccountPageTitle}
    log to console  Login successfully - Page Title "${MyAccountPageTitle}" are coming

Click on WOMEN menu and Open any product
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[1]/ul
    Click Element           ${menuWomen_Xpath}
    log to console  Click on WOMEN menu
    Click Element           ${clickWomenCtgImg_Xpath}

Enter quantity and Size and select color
    input text                  ${txtQty_Xpath}             ${U_quantity_wanted}
    select from list by value   ${selectSize_Xpath}         ${U_group1}
    click element               ${clickColor14_Xpath}
    log to console  Entered qty, size, color on Product Detail page

click on "Add to Cart" button
    Click Element               ${btnAddToCard_Xpath}

Verify message displayed "Product successfully added to your shopping cart"
    wait until page contains element  xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2/text()
    ${AddToCart}   Get Text   ${mgsProductAddedCart_Xpath}
    log to console            ${AddToCart}
    log to console  Product successfully added to your shopping cart

click on "Proceed to checkout" button
    sleep  9s
    Click Element               ${btnProceedToCheckout_Xpath}
    log to console  trying to clicking Processed to checkbout button

update the quantity on shopping cart screen
    sleep  9s
    Click Element               ${btnUpdateQty_Xpath}
    log to console  update the quantity on shopping cart screen

click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page
    sleep  59s
    Click Element               ${btnProceedToChkoutSummaryCart_Xpath}
    log to console  click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page

click on Proceed to checkout on Address Section under SHOPPING-CART Page
    sleep  15s
    Click Element               ${btnProceedToChkoutAddressCart_Xpath}
    log to console  click on Proceed to checkout on Address Section under SHOPPING-CART Page


Select Term of service checkbox on Shipping Section under SHOPPING-CART Page
    sleep  15s
    Click Element               ${chkTermServiceProceedShippingCart_Xpath}
    log to console  Select Term of service checkbox on Shipping Section under SHOPPING-CART Page


Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page
    sleep  9s
    Click Element               ${btnProceedChkoutShippingCart_Xpath}
    log to console  Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page


Choose payment method and Proceed to checkout
    sleep  9s
    Click Element               ${btnPaymentMethod_Xpath}
    log to console  Choose payment method and Proceed to checkout

Click on "I confirm my order"
    sleep  9s
    Click Element               ${chkConfirmOrder_Xpath}
    log to console  Click on "I confirm my order"

Verify order placed message "Your order on My Store is complete"
    sleep  9s
    ${orderplacedmessage}   Get Text  ${msgOrderComplete}
    log to console  Verify order placed message "Your order on My Store is complete"    ${orderplacedmessage}

Click on DRESESS menu and Open any product
    sleep  60s
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[2]/a

    Click Element               ${menuDresses_Xpath}
    log to console  Click on DRESSES menu
    wait until page contains element  xpath=//*[@id="center_column"]/ul/li[4]/div/div[1]/div/a[1]/img
    Click Element               ${clickDressCtgImg_Xpath}

Enter Dressess quantity and Size and select color
    wait until page contains element  xpath=//*[@id="color_16"]
    input text                  ${txtQty_Xpath}                ${U_quantity_wanted}
    select from list by value   ${selectSize_Xpath}            ${U_group1}
    click element               ${clickColor16_Xpath}
    log to console  enter qty, size, color

Click on TSHIRT menu and Open any product
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    Click Element               ${menuTshirt_Xpath}
    log to console  Click on TSHIRT menu
    wait until page contains element  xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Click Element               ${clickTshirtCtgImg_Xpath}
    log to console  Open TSHIRT product

Enter TSHIRT quantity and Size and select color
    wait until page contains element  xpath=//input[@id='quantity_wanted']
    input text                  ${txtQty_Xpath}                ${U_quantity_wanted}
    Select From List By Value  xpath=//select[@id='group_1']        ${U_group1}
    click element               ${clickColor14_Xpath}
    log to console  enter qty, size, color

Click on TSHIRT menu
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    Click Element               ${menuTshirt_Xpath}
    log to console  Click on TSHIRT menu

Move Hover on the product image


#Verify Quick View is enabled
click on Quick View link
    Click Element  xpath=//*[@href='http://automationpractice.com/index.php?id_product=1&controller=product']/span

Click on close button
    Click Element  xpath=/html/body/div[2]/div/div/a

#Verify product tab is successfully closed

Enter search text and click on search button
    Input Text      ${txtSearchTop_Xpath}          ${SearchText}
    Click Element   ${btnSearchTop_Xpath}
    log to console  Enter search text and click on search button

Verify searched product is correctly matched with search text
    log to console  Verify searched product is correctly matched with search text

Click on facebook icon
    Click Element  ${imgFacebook_Xpath}

Verify Facebook page is opened
    #Select Window    NEW
    ${tempB}=    Get Title
    Log To Console    New window is : \ ${tempB}

Click on twitter icon
    Click Element   ${imgTweeter_Xpath}

Verify twitter page is opened

Click on YouTube icon
    Click Element  ${imgYouTube_Xpath}

Verify YouTube page is opened

Click on Google icon
    Click Element  ${imgGoogle_Xpath}

Verify google page is opened


Click on Contact us menu
    Click Element  ${linkContactus_Xpath}

Verify contact us page is opened
    sleep  19s
    Title should be ${ContactusTitle}
    log to console  Contact us Page Title "${ContactusTitle}" are coming

Enter all the information and click on send button
    Select from List by Value       ${drpdwnIdContact_Xpath}            ${U_id_contact}
    log to console  subject selected
    Input Text                      ${txtEmailID_Xpath}                 ${U_EmailId}
    log to console  Email entered
    Input Text                      ${txtOrderID_Xpath}                 ${U_id_order}
    log to console  Order entered
    Input Text                      ${txtSendMessage_Xpath}             ${U_message}
    Click Element                   ${txtSubmitMessage_Xpath}

Verify information has been send
    ${MessageSentSuccess}    Get Text   ${msgMessageSentSuccess_Xpath}
    Should Be Equal As Strings    ${MessageSentSuccess}    Your message has been successfully sent to our team.
    log to console  ${MessageSentSuccess}

Click on TERMS AND CONDITIONS OF USE link
    Click Element  ${linkTermCondition_Xpath}

Verify TERMS AND CONDITIONS correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   ${msgTermCondition_Xpath}
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}    TERMS AND CONDITIONS OF USE

Click on ABOUT US link
    Click Element  ${txtAboutUs_Xpath}

Verify About us correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   ${msgAboutus_Xpath}
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}    ABOUT US

Click on SITEMAP link
    Click Element  ${linkSiteMap_Xpath}

Verify SITEMAP correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   ${msgSiteMap_Xpath}
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}    SITEMAP

Click on NEWSLETTER link
    Input Text      ${txtNewsLetter_Xpath}              ${U_Emailid}
    Click Element  ${imgNewsLetter_Xpath}

Verify NEWSLETTER correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   ${msgNewsLetter_Xapth}
    log to console                ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}   Newsletter : You have successfully subscribed to this newsletter.

Login Authentication with Already Registered
    wait until page contains element  xpath=//*[@id='email']
    Input Text      ${txtEmailID_Xpath}                 ${U_EmailId}
    Input Text      ${txtPassword_Xpath}                ${U_password}
    Click element  ${btnSubmitLogin_Xpath}