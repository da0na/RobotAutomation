*** Settings ***
Documentation   Testing automationpractice.com Website
Library         Selenium2Library
Variables       ../Variable/Variable_Automationpractice.com.py



*** Variables ***
${URL}                      http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation
${Browser}                  Firefox
${HomePageTitle}            My Store
${LoginPageTitle}           Login - My Store
${MyAccountPageTitle}       My account - My Store
${SearchText}               Printed Chiffon Dress
${ContactusTitle}           Contact us - My Store



*** Test Cases ***
TestCase1: Open Browser Mercury Website & make registration and close the browser
    [Documentation]  This is verify Sign Up www.automationpractice.com website
    [Tags]  TC1
    [Setup]
    Open Automationpractice.com Website and Maxmize
    #Verify Home Webpage Title
    #Click on Sign IN menu
    #Verify Login webpage opens successfully#
    Enter email id under create an account section
    Click on Create an account button
    Enter Personal Information with required field
    Click on Register button
    Verify Register successfully completed
    [Teardown]  Close the Browser


TestCase2: Open Browser automationpractice.com Website and login with register user
    [Documentation]  This is verify Login In with registered email www.automationpractice.com website
    [Tags]  TC2
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Verify Login successfully
    [Teardown]  Close the Browser

TestCase3: Open Browser automationpractice.com Website and Login & Order Place -> Woman
    [Documentation]  This is verify Login & Order Place -> Woman
    [Tags]  Order_Place_Woman
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Click on WOMEN menu and Open any product
    ##Verify Product page is successfully opened
    Enter quantity and Size and select color
    click on "Add to Cart" button
    #Verify message displayed "Product successfully added to your shopping cart"
    click on "Proceed to checkout" button
    update the quantity on shopping cart screen
    click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page
    click on Proceed to checkout on Address Section under SHOPPING-CART Page
    Select Term of service checkbox on Shipping Section under SHOPPING-CART Page
    Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page
    Choose payment method and Proceed to checkout
    Click on "I confirm my order"
    Verify order placed message "Your order on My Store is complete"
    [Teardown]  Close the Browser

TestCase4: Order_Place_Dresses - Open Browser automationpractice.com Website and Login & Order_Place_Dresses
    [Documentation]  This is verify Login & Order_Place_Dresses
    [Tags]  Order_Place_Dresses
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Click on DRESESS menu and Open any product
    # Verify Product page is successfully opened
    Enter Dressess quantity and Size and select color
    click on "Add to Cart" button
    # Verify message displayed "Product successfully added to your shopping cart"
    click on "Proceed to checkout" button
    update the quantity on shopping cart screen
    click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page
    click on Proceed to checkout on Address Section under SHOPPING-CART Page
    Select Term of service checkbox on Shipping Section under SHOPPING-CART Page
    Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page
    Choose payment method and Proceed to checkout
    Click on "I confirm my order"
    Verify order placed message "Your order on My Store is complete"
    [Teardown]  Close the Browser

TestCase5: Order_Place_Tshirt - Open Browser automationpractice.com Website and Login & Order_Place_Tshirt
    [Documentation]  This is verify Login & Order_Place_Tshirt
    [Tags]  Order_Place_Tshirt
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Click on TSHIRT menu and Open any product
    # Verify Product page is successfully opened
    Enter TSHIRT quantity and Size and select color
    click on "Add to Cart" button
    # Verify message displayed "Product successfully added to your shopping cart"
    click on "Proceed to checkout" button
    update the quantity on shopping cart screen
    click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page
    click on Proceed to checkout on Address Section under SHOPPING-CART Page
    Select Term of service checkbox on Shipping Section under SHOPPING-CART Page
    Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page
    Choose payment method and Proceed to checkout
    Click on "I confirm my order"
    Verify order placed message "Your order on My Store is complete"
    [Teardown]  Close the Browser

TestCase6: Order_Place_Tshirt - Open Browser automationpractice.com Website and Login & Order_Place_Tshirt
    [Documentation]  This is verify Login & Quick View
    [Tags]  Quick_View
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Click on TSHIRT menu
    #Move Hover on the product image
    #Verify Quick View is enabled
    click on Quick View link
    Click on close button
    #Verify product tab is successfully closed


TestCase6: Search Tshirt Product on automationpractice.com Website
    [Documentation]  This is verify Search Tshirt Product
    [Tags]  Search_Tshirt
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Enter search text and click on search button
    Verify searched product is correctly matched with search text


TestCase7: Follow us -> fb, Twitter, YouTube & Google on automationpractice.com Website
    [Documentation]  This is verify Follow us -> fb, Twitter, YouTube & Google
    [Tags]  Follow_us
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on facebook icon
    Verify Facebook page is opened
    Click on twitter icon
    #Verify twitter page is opened
    Click on YouTube icon
    #Verify YouTube page is opened
    Click on Google icon
    #Verify google page is opened


TestCase7: Contact us on automationpractice.com Website
    [Documentation]  This is verify Contact us WebPage
    [Tags]  Contact_us
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Contact us menu
    #Verify contact us page is opened
    Enter all the information and click on send button
    Verify information has been send

TestCase8: "Terms and conditions of use" WebPage on automationpractice.com Website
    [Documentation]  This is verify Terms and conditions of use WebPage
    [Tags]  Terms_Condition
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on TERMS AND CONDITIONS OF USE link
    Verify TERMS AND CONDITIONS correct page is opened

TestCase9: "About_us" WebPage on automationpractice.com Website
    [Documentation]  This is verify About_us WebPage
    [Tags]  About_us
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on ABOUT US link
    Verify About us correct page is opened


TestCase10: "SITEMAP" WebPage on automationpractice.com Website
    [Documentation]  This is verify SITEMAP WebPage
    [Tags]  SITEMAP
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on SITEMAP link
    Verify SITEMAP correct page is opened

TestCase11: "NEWSLETTER" WebPage on automationpractice.com Website
    [Documentation]  This is verify NEWSLETTER WebPage
    [Tags]  NEWSLETTER
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on NEWSLETTER link
    Verify NEWSLETTER correct page is opened


TestCase12: "Order Place -> Woman Login LATER" WebPage on automationpractice.com Website
    [Documentation]  This is verify Order Place -> Woman Login lATER on WebPage
    [Tags]   Order_Place_Login_later
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on WOMEN menu and Open any product
    ##Verify Product page is successfully opened
    Enter quantity and Size and select color
    click on "Add to Cart" button
    #Verify message displayed "Product successfully added to your shopping cart"
    click on "Proceed to checkout" button
    update the quantity on shopping cart screen
    click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page
    Login with Already Registered
    click on Proceed to checkout on Address Section under SHOPPING-CART Page
    Select Term of service checkbox on Shipping Section under SHOPPING-CART Page
    Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page
    Choose payment method and Proceed to checkout
    Click on "I confirm my order"
    Verify order placed message "Your order on My Store is complete"

*** Keywords ***
Open Automationpractice.com Website and Maxmize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    log to console  Message: Browser Open successfully with website www.automationpractice.com and Maximize Browser

Verify Home Webpage Title
    Title Should be  ${HomePageTitle}
    log to console  Home Page Correctly opened with title name ${HomePageTitle}

Click on Sign IN menu
    Click Element  xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a

Verify Login webpage opens successfully
    Title Should be  ${LoginPageTitle}
    log to console  Home Page Correctly opened with title name ${LoginPageTitle}

Enter email id under create an account section
    input text  id:email_create  XYZTEST@gmail.com

Click on Create an account button
    Click Element  xpath=//*[@id="SubmitCreate"]/span

Enter Personal Information with required field
    wait until page contains element  xpath=//*[@id='customer_firstname']

    input Text  xpath=//*[@id='customer_firstname']             Vikas
    input Text  xpath=//*[@id='customer_lastname']              Gaur
    input Text  xpath=//*[@id='passwd']                         123456
    Input Text  xpath=//*[@id='firstname']                      Vikas
    Input Text  xpath=//*[@id='lastname']                       Gaur
    Input Text  xpath=//*[@id='address1']                        Gaur City
    Input Text  xpath=//*[@id='city']                           Gr. Noida

    wait until page contains element  xpath=//*[@id = 'id_state']
    Select from List by Value  //select[@name = 'id_state']  5
    Input Text  xpath=//*[@id='postcode']                       20130
    Select from List by Value  xpath=//*[@id = 'id_country']   21
    Input Text  xpath=//*[@id='phone_mobile']                   9350725728
    Input Text  xpath=//*[@id='alias']                          Gaur City

Click on Register button
    Click Element  xpath=//*[@id="submitAccount"]

Verify Register successfully completed
    Title Should be  ${MyAccountPageTitle}
    log to console  Page Title are coming - ${MyAccountPageTitle}

Close the Browser
    Close Browser

Login with Already Registered
    wait until page contains element  xpath=//*[@id='email']
    Input Text  xpath=//*[@id='email']      XYZTEST@gmail.com
    Input Text  xpath=//*[@id='passwd']     123456
    Click element  xpath=//*[@id='SubmitLogin']

Verify Login successfully
    Title should be  ${MyAccountPageTitle}
    log to console  Login successfully - Page Title "${MyAccountPageTitle}" are coming

Click on WOMEN menu and Open any product
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[1]/ul
    Click Element  xpath=//a[contains(text(), 'Women')]
    log to console  Click on WOMEN menu
    Click Element  xpath=//*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img

Enter quantity and Size and select color
    input text  xpath=//input[@id='quantity_wanted']  3
    select from list by value  xpath=//select[@id='group_1']  3
    click element  xpath=//a[@id='color_14']
    log to console  enter qty, size, color

click on "Add to Cart" button
    Click Element  xpath=//button[@name='Submit']

Verify message displayed "Product successfully added to your shopping cart"
    wait until page contains element  xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2/text()
    ${AddToCart}   Get Text   xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2/text()
    log to console  ${AddToCart}
    log to console  Product successfully added to your shopping cart

click on "Proceed to checkout" button
    sleep  9s
    Click Element  xpath=//*[@class='layer_cart_cart col-xs-12 col-md-6']//following::div[4]/a[1]
    log to console  trying to clicking Processed to checkbout button

update the quantity on shopping cart screen
    sleep  9s
    Click Element  xpath=//a[@class='cart_quantity_up btn btn-default button-plus']
    log to console  update the quantity on shopping cart screen

click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page
    sleep  59s
    Click Element  xpath=//*[@class='button btn btn-default standard-checkout button-medium']//following::span[1]
    log to console  click on Proceed to checkout on SUMMARY Section under SHOPPING-CART Page

click on Proceed to checkout on Address Section under SHOPPING-CART Page
    sleep  15s
    Click Element  xpath=//button[@class='button btn btn-default button-medium']
    log to console  click on Proceed to checkout on Address Section under SHOPPING-CART Page


Select Term of service checkbox on Shipping Section under SHOPPING-CART Page
    sleep  15s
    Click Element  xpath=//input[@id='cgv']
    log to console  Select Term of service checkbox on Shipping Section under SHOPPING-CART Page


Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page
    sleep  9s
    Click Element  xpath=//button[@class='button btn btn-default standard-checkout button-medium']
    log to console  Click on Proceed to checkout on Shipping Section under SHOPPING-CART Page


Choose payment method and Proceed to checkout
    sleep  9s
    Click Element  xpath=//a[@class='bankwire']
    log to console  Choose payment method and Proceed to checkout



Click on "I confirm my order"
    sleep  9s
    Click Element  xpath=//button[@class='button btn btn-default button-medium']
    log to console  Click on "I confirm my order"

Verify order placed message "Your order on My Store is complete"
    sleep  9s
    ${orderplacedmessage}   Get Text  //*[contains(text(), 'Your order on My Store is complete.')]
    log to console  Verify order placed message "Your order on My Store is complete"    ${orderplacedmessage}

Click on DRESESS menu and Open any product
    sleep  60s
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[2]/a

    Click Element  xpath=//*[@id="block_top_menu"]/ul/li[2]/a
    log to console  Click on DRESSES menu
    wait until page contains element  xpath=//*[@id="center_column"]/ul/li[4]/div/div[1]/div/a[1]/img
    Click Element  xpath=//*[@id="center_column"]/ul/li[4]/div/div[1]/div/a[1]/img

Enter Dressess quantity and Size and select color
    wait until page contains element  xpath=//*[@id="color_16"]
    input text  xpath=//input[@id='quantity_wanted']  3
    select from list by value  xpath=//select[@id='group_1']  3
    click element  xpath=//*[@id="color_16"]
    log to console  enter qty, size, color

Click on TSHIRT menu and Open any product
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    Click Element  xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    log to console  Click on TSHIRT menu
    wait until page contains element  xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    Click Element  xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    log to console  Open TSHIRT product

Enter TSHIRT quantity and Size and select color
    wait until page contains element  xpath=//input[@id='quantity_wanted']
    input text  xpath=//input[@id='quantity_wanted']  3
    select from list by value  xpath=//select[@id='group_1']  3
    click element  xpath=//*[@id="color_14"]
    log to console  enter qty, size, color

Click on TSHIRT menu
    wait until page contains element  xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    Click Element  xpath=//*[@id="block_top_menu"]/ul/li[3]/a
    log to console  Click on TSHIRT menu

Move Hover on the product image


#Verify Quick View is enabled
click on Quick View link
    Click Element  xpath=//*[@href='http://automationpractice.com/index.php?id_product=1&controller=product']/span

Click on close button
    Click Element  xpath=/html/body/div[2]/div/div/a

#Verify product tab is successfully closed

Enter search text and click on search button
    Input Text  xpath=//*[@id="search_query_top"]  ${SearchText}
    Click Element  xpath=//*[@id="searchbox"]/button
    log to console  Enter search text and click on search button

Verify searched product is correctly matched with search text
    log to console  Verify searched product is correctly matched with search text

Click on facebook icon
    Click Element  xpath=//*[@id="social_block"]/ul/li[1]/a

Verify Facebook page is opened
    #Select Window    NEW
    ${tempB}=    Get Title
    Log To Console    New window is : \ ${tempB}

Click on twitter icon
    Click Element  xpath=//*[@id="social_block"]/ul/li[2]/a

Verify twitter page is opened

Click on YouTube icon
    Click Element  xpath=//*[@id="social_block"]/ul/li[3]/a

Verify YouTube page is opened

Click on Google icon
    Click Element  xpath=//*[@id="social_block"]/ul/li[4]/a

Verify google page is opened


Click on Contact us menu
    Click Element  xpath=//*[@id="contact-link"]/a

Verify contact us page is opened
    sleep  19s
    Title should be ${ContactusTitle}
    log to console  Contact us Page Title "${ContactusTitle}" are coming

Enter all the information and click on send button
    Select from List by Value   xpath=//*[@id="id_contact"]   2
    log to console  subject selected
    Input Text  xpath=//*[@id="email"]   xyztest@test.com
    log to console  Email entered
    Input Text   xpath=//*[@id="id_order"]   Order No 123
    log to console  Order entered
    Input Text  xpath=//*[@id="message"]   Test Message
    Click Element  xpath=//*[@id="submitMessage"]/span

Verify information has been send
    ${MessageSentSuccess}    Get Text   xpath=/html/body/div/div[2]/div/div[3]/div/p
    Should Be Equal As Strings    ${MessageSentSuccess}    Your message has been successfully sent to our team.
    log to console  ${MessageSentSuccess}

Click on TERMS AND CONDITIONS OF USE link
    Click Element  xpath=/html/body/div/div[3]/footer/div/section[3]/ul/li[6]/a

Verify TERMS AND CONDITIONS correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   xpath=//*[@id="center_column"]/div/h1
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}    TERMS AND CONDITIONS OF USE

Click on ABOUT US link
    Click Element  xpath=//*[@id="block_various_links_footer"]/ul/li[7]/a

Verify About us correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   xpath=//*[@id="center_column"]/div/h1
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}    ABOUT US

Click on SITEMAP link
    Click Element  xpath=//*[@id="block_various_links_footer"]/ul/li[8]/a

Verify SITEMAP correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   xpath=//*[@id="center_column"]/h1
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}    SITEMAP

Click on NEWSLETTER link
    Input Text  xpath=//*[@id="newsletter-input"]   xyz@xyz.com
    Click Element  xpath=//*[@id="newsletter_block_left"]/div/form/div/button

Verify NEWSLETTER correct page is opened
    sleep  19s
    ${MessageHeader}   Get Text   xpath=//*[@id="columns"]/p
    log to console  ${MessageHeader}
    Should Be Equal As Strings    ${MessageHeader}   Newsletter : You have successfully subscribed to this newsletter.

Login Authentication with Already Registered
    wait until page contains element  xpath=//*[@id='email']
    Input Text  xpath=//*[@id='email']      XYZTEST@gmail.com
    Input Text  xpath=//*[@id='passwd']     123456
    Click element  xpath=//*[@id='SubmitLogin']
