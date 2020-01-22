*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  https://www.thetestingworld.com/testings/

*** Test Cases ***
Test Registration Page
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  Test_User
    Input Text  name:fld_email  Test_Email
    Input Text  name:fld_password  password
    Input Text  name:fld_cpassword  password
    Input Text  name:phone  1234567
    Input Text  name:address  Gaur City
    Select Radio Button  add_type  office
    Select from List by Value  xpath=//select[@name="sex"]  1
    Select from List by Value  xpath=//select[@id="countryId"]  1
    Select from List by Value  xpath=//select[@id="stateId"]  1
    Select from List by Value  xpath=//select[@id="cityId"]  1
    Input Text  name:zip 201301
    Select Checkbox  name:terms
    Click Link  xpath://*[@id="tab-content1"]/form/div/em/a

    Click Button Close
