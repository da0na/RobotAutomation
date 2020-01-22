*** Settings ***
Documentation   Testing automationpractice.com Website
Library         Selenium2Library
Variables       ../Variable/Variable_Automationpractice.py
Resource        ../Keyword/Keywords_Automationpractice.com.robot
Resource        ../Keyword/Common_Automationpractice.com.robot
Variables        ../Locators/Element_Automationpractice.com.py


*** Test Cases ***
TestCase1: Open Browser Mercury Website & make registration and close the browser
    [Documentation]  This is verify Sign Up www.automationpractice.com website
    [Tags]  SignUp
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Verify Home Webpage Title
    Click on Sign IN menu
    #Verify Login webpage opens successfully
    Enter email id under create an account section
    Click on Create an account button
    Enter Personal Information with required field
    Click on Register button
    Verify Register successfully completed
    #[Teardown]  Close the Browser


TestCase2: Open Browser automationpractice.com Website and login with register user
    [Documentation]  This is verify Login In with registered email www.automationpractice.com website
    [Tags]  Login_In_With_Registered
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
    [Teardown]  Close the Browser

TestCase6: Search Tshirt Product on automationpractice.com Website
    [Documentation]  This is verify Search Tshirt Product
    [Tags]  Search_Tshirt
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Sign IN menu
    Login with Already Registered
    Enter search text and click on search button
    Verify searched product is correctly matched with search text
    [Teardown]  Close the Browser

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
    [Teardown]  Close the Browser

TestCase7: Contact us on automationpractice.com Website
    [Documentation]  This is verify Contact us WebPage
    [Tags]  Contact_us
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on Contact us menu
    #Verify contact us page is opened
    Enter all the information and click on send button
    Verify information has been send
    [Teardown]  Close the Browser

TestCase8: "Terms and conditions of use" WebPage on automationpractice.com Website
    [Documentation]  This is verify Terms and conditions of use WebPage
    [Tags]  Terms_Condition
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on TERMS AND CONDITIONS OF USE link
    Verify TERMS AND CONDITIONS correct page is opened
    [Teardown]  Close the Browser

TestCase9: "About_us" WebPage on automationpractice.com Website
    [Documentation]  This is verify About_us WebPage
    [Tags]  About_us
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on ABOUT US link
    Verify About us correct page is opened
    [Teardown]  Close the Browser

TestCase10: "SITEMAP" WebPage on automationpractice.com Website
    [Documentation]  This is verify SITEMAP WebPage
    [Tags]  SITEMAP
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on SITEMAP link
    Verify SITEMAP correct page is opened
    [Teardown]  Close the Browser

TestCase11: "NEWSLETTER" WebPage on automationpractice.com Website
    [Documentation]  This is verify NEWSLETTER WebPage
    [Tags]  NEWSLETTER
    [Setup]
    Open Automationpractice.com Website and Maxmize
    Click on NEWSLETTER link
    Verify NEWSLETTER correct page is opened
    [Teardown]  Close the Browser

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
    [Teardown]  Close the Browser