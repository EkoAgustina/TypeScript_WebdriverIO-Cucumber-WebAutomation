Feature: Portfolio - Project Page

@portfolio @projectPage @projectPage_viaHomePage
Scenario: Verify user successfully redirects to Project page when clicking Project on navbar on Home page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    And User take screenshot with file name "1.projectPage_homePage"
    When User click "navbar:navProjectIcon"
    Then Currently opened website URL is equal with "testData:testData_projectPageUrl"
    Then Title currently opened website is equal with "testData:testData_projectTitle"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "projectPage:projectContentTitleOne" is equal with data "testData:testData_projectContentTitleOne"
    Then Element "projectPage:projectContentOne" is equal with data "testData:testData_projectContentOne"
    Then Element "projectPage:projectContentTitleTwo" is equal with data "testData:testData_projectContentTitleTwo"
    Then Element "projectPage:projectContentTwo" is equal with data "testData:testData_projectContentTwo"
    Then Element "projectPage:projectContentTitleThree" is equal with data "testData:testData_projectContentTitleThree"
    Then Element "projectPage:projectContentThree" is equal with data "testData:testData_projectContentThree"
    And User take screenshot with file name "2.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleFour" is equal with data "testData:testData_projectContentTitleFour"
    Then Element "projectPage:projectContentFour" is equal with data "testData:testData_projectContentFour"
    Then Element "projectPage:projectContentTitleFive" is equal with data "testData:testData_projectContentTitleFive"
    Then Element "projectPage:projectContentFive" is equal with data "testData:testData_projectContentFive"
    Then Element "projectPage:projectContentTitleSix" is equal with data "testData:testData_projectContentTitleSix"
    Then Element "projectPage:projectContentSix" is equal with data "testData:testData_projectContentSix"
    And User take screenshot with file name "3.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleSeven" is equal with data "testData:testData_projectContentTitleSeven"
    Then Element "projectPage:projectContentSeven" is equal with data "testData:testData_projectContentSeven"
    And User take screenshot with file name "4.projectPageLastPart"

@portfolio @projectPage @projectPage_viaPathUrl
Scenario: Verify the user successfully redirected to Project page when adding URL path `project` to base URL
    Given User open "https://ekoagustina.my.id/project"
    Then Title currently opened website is equal with "testData:testData_projectTitle"
    Then Currently opened website URL is equal with "testData:testData_projectPageUrl"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "projectPage:projectContentTitleOne" is equal with data "testData:testData_projectContentTitleOne"
    Then Element "projectPage:projectContentOne" is equal with data "testData:testData_projectContentOne"
    Then Element "projectPage:projectContentTitleTwo" is equal with data "testData:testData_projectContentTitleTwo"
    Then Element "projectPage:projectContentTwo" is equal with data "testData:testData_projectContentTwo"
    Then Element "projectPage:projectContentTitleThree" is equal with data "testData:testData_projectContentTitleThree"
    Then Element "projectPage:projectContentThree" is equal with data "testData:testData_projectContentThree"
    And User take screenshot with file name "1.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleFour" is equal with data "testData:testData_projectContentTitleFour"
    Then Element "projectPage:projectContentFour" is equal with data "testData:testData_projectContentFour"
    Then Element "projectPage:projectContentTitleFive" is equal with data "testData:testData_projectContentTitleFive"
    Then Element "projectPage:projectContentFive" is equal with data "testData:testData_projectContentFive"
    Then Element "projectPage:projectContentTitleSix" is equal with data "testData:testData_projectContentTitleSix"
    Then Element "projectPage:projectContentSix" is equal with data "testData:testData_projectContentSix"
    And User take screenshot with file name "2.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleSeven" is equal with data "testData:testData_projectContentTitleSeven"
    Then Element "projectPage:projectContentSeven" is equal with data "testData:testData_projectContentSeven"
    And User take screenshot with file name "3.projectPageLastPart"

@portfolio @projectPage @projecttPage_navbarComponent
Scenario: Verify users can see Navbar component on Project page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    And User take screenshot with file name "1.projectPage_homePage"
    When User click "navbar:navProjectIcon"
    Then Currently opened website URL is equal with "testData:testData_projectPageUrl"
    Then Title currently opened website is equal with "testData:testData_projectTitle"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "navbar:navHomeIcon" is displayed
    Then Element "navbar:navAboutIcon" is displayed
    Then Element "navbar:navProjectIcon" is displayed
    Then Element "projectPage:projectContentTitleOne" is equal with data "testData:testData_projectContentTitleOne"
    Then Element "projectPage:projectContentOne" is equal with data "testData:testData_projectContentOne"
    Then Element "projectPage:projectContentTitleTwo" is equal with data "testData:testData_projectContentTitleTwo"
    Then Element "projectPage:projectContentTwo" is equal with data "testData:testData_projectContentTwo"
    Then Element "projectPage:projectContentTitleThree" is equal with data "testData:testData_projectContentTitleThree"
    Then Element "projectPage:projectContentThree" is equal with data "testData:testData_projectContentThree"
    And User take screenshot with file name "2.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleFour" is equal with data "testData:testData_projectContentTitleFour"
    Then Element "projectPage:projectContentFour" is equal with data "testData:testData_projectContentFour"
    Then Element "projectPage:projectContentTitleFive" is equal with data "testData:testData_projectContentTitleFive"
    Then Element "projectPage:projectContentFive" is equal with data "testData:testData_projectContentFive"
    Then Element "projectPage:projectContentTitleSix" is equal with data "testData:testData_projectContentTitleSix"
    Then Element "projectPage:projectContentSix" is equal with data "testData:testData_projectContentSix"
    And User take screenshot with file name "3.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleSeven" is equal with data "testData:testData_projectContentTitleSeven"
    Then Element "projectPage:projectContentSeven" is equal with data "testData:testData_projectContentSeven"
    And User take screenshot with file name "4.projectPageLastPart"

@portfolio @projectPage @projectPage_footerComponent
Scenario: Verify users can see Footer component on Project page
    Given User open "https://ekoagustina.my.id/project"
    Then Title currently opened website is equal with "testData:testData_projectTitle"
    Then Currently opened website URL is equal with "testData:testData_projectPageUrl"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "projectPage:projectContentTitleOne" is equal with data "testData:testData_projectContentTitleOne"
    Then Element "projectPage:projectContentOne" is equal with data "testData:testData_projectContentOne"
    Then Element "projectPage:projectContentTitleTwo" is equal with data "testData:testData_projectContentTitleTwo"
    Then Element "projectPage:projectContentTwo" is equal with data "testData:testData_projectContentTwo"
    Then Element "projectPage:projectContentTitleThree" is equal with data "testData:testData_projectContentTitleThree"
    Then Element "projectPage:projectContentThree" is equal with data "testData:testData_projectContentThree"
    And User take screenshot with file name "1.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleFour" is equal with data "testData:testData_projectContentTitleFour"
    Then Element "projectPage:projectContentFour" is equal with data "testData:testData_projectContentFour"
    Then Element "projectPage:projectContentTitleFive" is equal with data "testData:testData_projectContentTitleFive"
    Then Element "projectPage:projectContentFive" is equal with data "testData:testData_projectContentFive"
    Then Element "projectPage:projectContentTitleSix" is equal with data "testData:testData_projectContentTitleSix"
    Then Element "projectPage:projectContentSix" is equal with data "testData:testData_projectContentSix"
    And User take screenshot with file name "2.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectContentTitleSeven" is equal with data "testData:testData_projectContentTitleSeven"
    Then Element "projectPage:projectContentSeven" is equal with data "testData:testData_projectContentSeven"
    And User take screenshot with file name "3.projectPageLastPart"
    When User swipe up until 1 seconds
    Then Element "footer:footerCopyRight" is equal with data "testData:testData_footerCopyRight"
    Then Element "footer:footerLinkedinIcon" is displayed
    Then Element "footer:footerGithubIcon" is displayed
    And User take screenshot with file name "4.projectPageFooter"