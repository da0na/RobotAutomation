*** Settings ***
Documentation   Testing Mercury Tours Website
Library         Selenium2Library
Resource        ../Keyword/MercuryKeywords.robot

*** Variables ***
${URL}                    http://newtours.demoaut.com
${Browser}                Firefox
${HomeTitle}              Welcome: Mercury Tours
${SignOnTitle}            Sign-on: Mercury Tours
${FindFlightTitle}        Find a Flight: Mercury Tours:
${FlightSelectionTitle}   Select a Flight: Mercury Tours
${BookFlightTitle}        Book a Flight: Mercury Tours
${FlightTicketComfirmTitle}  Flight Confirmation: Mercury Tours
${timeout}                30s



*** Test Cases ***
TestCase1: Open Browser Mercury Website and close it
    Open Mercury Website and Maxmize
    Verify Home Webpage Title
    Close the Browser

TestCase2: Mercury Valid Login Credential
    [Documentation]  This is verify valid login Mercury Tour Page
    [Tags]
    [Setup]
        Open Mercury Website and Maxmize
        Verify Home Page Title
        Click on Sign On Link
        Verify Sign On Page Title
        Enter Valid UserName Password
        Click on Submit
        sleep  ${timeout}
        Verify Flight Finder Page Title
        Click on Sign Off Link
        Verify Sign On Page Title
    [Teardown]  Close the Browser


TestCase3: Mercury Invalid Login Credential
    [Documentation]  This is verify valid login Mercury Tour Page
    [Tags]
    [Setup]
        Open Mercury Website and Maxmize
        Verify Home Page Title
        Click on Sign On Link
        Verify Sign On Page Title
        Enter Invalid UserName Password
        Click on Submit
        Verify Sign On Page Title
        [Teardown]  Close the Browser

TestCase4: Mercury Login & One Way flight Booking
    [Documentation]  This is to Mercury Login & One Way flight Booking
    [Tags]  TC4
    [Setup]
        Open Mercury Website and Maxmize
        Verify Home Page Title
        Click on Sign On Link
        Verify Sign On Page Title
        Enter Valid UserName Password
        Click on Submit
        sleep  ${timeout}
        Verify Flight Finder Page Title
        Select One Way Option
        Select No of Passengers
        Select the Departing From
        Select the On Date
        Select Arriving In
        Select the Returning Date
        Select Service Class Option
        Select Airline Preference
        Click on Continue Button
        sleep  ${timeout}
        Verify Flight Selection Page

        Select the Departure Location Option
        Select the Return Location Option

        Click Continue Button on Select Flight Page


        Verify Book Flight Page

        Enter Pessenger mandatory details
        Click on Purchase Button

        Verify Flight Booked Page

        Click on Logout button





*** Keywords ***
Open Mercury Website and Maxmize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    log to console  Message: Browser Open and Maximize

Close the Browser
    Close Browser

Verify Home Page Title
    Title Should be  ${HomeTitle}
    log to console  Home Page Opened

Click on Sign On Link
    Click Element  link:SIGN-ON

Verify Sign On Page Title
    Title Should be     ${SignOnTitle}
    log to console      Sign On Page Opened

Enter Valid UserName Password
    Input Text  name:userName  mercury
    Input Text  name:password  mercury

Enter Invalid UserName Password
    Input Text  name:userName  mercury1
    Input Text  name:password  mercury1

Click on Submit
    Click Element  name:login

Verify Flight Finder Page Title
    Title Should be  ${FindFlightTitle}
    log to console  Flight Finder Page Opened

Click on Sign Off Link
    Click Element  link:SIGN-OFF

Select One Way Option
    Click Element  xpath=//input[@value = 'oneway']
    Log to console  One Way radio button selected

Select No of Passengers
    Log to console  Select No of Passengers 1
    Select from List by Value  xpath=//select[@name = 'passCount']   2
    Log to console  Select No of Passengers 2

Select the Departing From
    Select from List by Value  xpath=//select[@name = 'fromPort']   Frankfurt

Select the On Date
    Select from List by Value  xpath=//select[@name = 'fromMonth']   3
    Select from List by Value   xpath=//select[@name = 'fromDay']   5

Select Arriving In
    Select from List by Value  xpath=//select[@name = 'toPort']   London

Select the Returning Date
    Select from List by Value  xpath=//select[@name = 'toMonth']   3
    Select from List by Value  xpath=//select[@name = 'toDay']   5

Select Service Class Option
    log to console  business class selecting
    Select Radio Button  servClass  First
    log to console  business class selected

Select Airline Preference
    Select from List  xpath=//select[@name = 'airline']   Unified Airlines

Click on Continue Button
    Click Element  xpath=//input[@name='findFlights']

Verify Flight Selection Page
    Title Should be  ${FlightSelectionTitle}
    log to console  Flight Selection Page Opened

Select the Departure Location Option
    Click Element  xpath=//input[@value = 'Blue Skies Airlines$361$271$7:10']

Select the Return Location Option
    Click Element  xpath=//input[@value = 'Blue Skies Airlines$631$273$14:30']

Click Continue Button on Select Flight Page
    Click Element  xpath=//input[@name = 'reserveFlights']


Verify Book Flight Page
    Title Should be  ${BookFlightTitle}
    log to console  Book a Flight Page Opened

Enter Pessenger mandatory details
    Input Text  name:passFirst0  mercuryTest1
    Input Text  name:passLast0  mercuryTest2
    Input Text  name:creditnumber  123456789

Click on Purchase Button
    Click Element  xpath=//input[@name='buyFlights']

Verify Flight Booked Page
    Title Should be  ${FlightTicketComfirmTitle}
    log to console  Book a Flight Page Opened

Click on Logout button
    Click Element  xpath=//a[href='mercurysignoff.php']
