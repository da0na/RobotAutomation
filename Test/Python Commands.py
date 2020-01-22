

Run the program with tag
    robot - d Result - -include  TC4 C:\Users\vikgaur\PycharmProjects\RobotAutomation\Test\TestSuite\Mercury.robot

    robot - d Result - -include TC2 C:\Users\vikgaur\PycharmProjects\RobotAutomation\Test\TestSuite\automationpractice.com.
    robot

robot -d Result C:\Users\vikgaur\PycharmProjects\RobotAutomation\demo.testfire.net\TestSuite\TestFire.robot




Verify Departure Date printed correctly on Page
    ${Depart_date} =  Get Text  xpath=//*[contains(text(), '9/1/2019')]
    log to console  Departure ${Depart_date} is correctly printed on webpage

Verify Departure Date printed correctly on Page
    ${Depart_date} =  Get Text  xpath=//td[@class='title'][1]/parent::tr/following-sibling::tr/td[2]
    log to console  Departure ${Depart_date} is correctly printed on webpage

Verify Return Date printed correctly on Page
    ${Return_date}=  Get Text  xpath = /html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table[2]/tbody/tr[1]/td/table/tbody/tr[2]/td[2]/b/font
    log to console  Departure ${Return_date} is correctly printed on webpage


    //td[@class='title'][1]/parent::tr/following-sibling::tr/td[2]

