Feature: Portfolio - Project Page

@smokeTest @projectPage @projectPage_viaHomePage
Scenario: Verify user successfully redirects to Project page when clicking Project on navbar on Home page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:homePageUrl"
    And User take screenshot with file name "1.projectPage_homePage"
    Then Element "navbar:navbarProject_title" is displayed
    When User click "navbar:navbarProject_title"
    Then Currently opened website URL is equal with "testData:projectPageUrl"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    And User take screenshot with file name "2.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectFour_titleComponent" is equal with data "testData:projectCardFour_title"
    Then Element "projectPage:projectFour_contentComponent" is equal with data "testData:projectCardFour_contentCard"
    Then Element "projectPage:projectFive_titleComponent" is equal with data "testData:projectCardFive_title"
    Then Element "projectPage:projectFive_contentComponent" is equal with data "testData:projectCardFive_contentCard"
    Then Element "projectPage:projectSix_titleComponent" is equal with data "testData:projectCardSix_title"
    Then Element "projectPage:projectSix_contentComponent" is equal with data "testData:projectCardSix_contentCard"
    And User take screenshot with file name "3.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectSeven_titleComponent" is equal with data "testData:projectCardSeven_title"
    Then Element "projectPage:projectSeven_contentComponent" is equal with data "testData:projectCardSeven_contentCard"
    And User take screenshot with file name "4.projectPageLastPart"

@smokeTest @projectPage @projectPage_viaPathUrl
Scenario: Verify the user successfully redirected to Project page when adding URL path `project` to base URL
    Given User open "https://ekoagustina.my.id/project"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:projectPageUrl"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    And User take screenshot with file name "1.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectFour_titleComponent" is equal with data "testData:projectCardFour_title"
    Then Element "projectPage:projectFour_contentComponent" is equal with data "testData:projectCardFour_contentCard"
    Then Element "projectPage:projectFive_titleComponent" is equal with data "testData:projectCardFive_title"
    Then Element "projectPage:projectFive_contentComponent" is equal with data "testData:projectCardFive_contentCard"
    Then Element "projectPage:projectSix_titleComponent" is equal with data "testData:projectCardSix_title"
    Then Element "projectPage:projectSix_contentComponent" is equal with data "testData:projectCardSix_contentCard"
    And User take screenshot with file name "2.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectSeven_titleComponent" is equal with data "testData:projectCardSeven_title"
    Then Element "projectPage:projectSeven_contentComponent" is equal with data "testData:projectCardSeven_contentCard"
    And User take screenshot with file name "3.projectPageLastPart"

@smokeTest @projectPage @projecttPage_navbarComponent
Scenario: Verify users can see Navbar component on Project page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:homePageUrl"
    Then Element "navbar:navbarProject_title" is displayed
    And User take screenshot with file name "1.projectPage_homePage"
    When User click "navbar:navbarProject_title"
    Then Currently opened website URL is equal with "testData:projectPageUrl"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "navbar:navbarHome_title" is displayed
    Then Element "navbar:navbarAbout_title" is displayed
    Then Element "navbar:navbarProject_title" is displayed
    Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    And User take screenshot with file name "2.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectFour_titleComponent" is equal with data "testData:projectCardFour_title"
    Then Element "projectPage:projectFour_contentComponent" is equal with data "testData:projectCardFour_contentCard"
    Then Element "projectPage:projectFive_titleComponent" is equal with data "testData:projectCardFive_title"
    Then Element "projectPage:projectFive_contentComponent" is equal with data "testData:projectCardFive_contentCard"
    Then Element "projectPage:projectSix_titleComponent" is equal with data "testData:projectCardSix_title"
    Then Element "projectPage:projectSix_contentComponent" is equal with data "testData:projectCardSix_contentCard"
    And User take screenshot with file name "3.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectSeven_titleComponent" is equal with data "testData:projectCardSeven_title"
    Then Element "projectPage:projectSeven_contentComponent" is equal with data "testData:projectCardSeven_contentCard"
    And User take screenshot with file name "4.projectPageLastPart"

@smokeTest @projectPage @projectPage_footerComponent
Scenario: Verify users can see Footer component on Project page
    Given User open "https://ekoagustina.my.id/project"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:projectPageUrl"
    Then Element "projectPage:projectPageTitle" is displayed
    Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    And User take screenshot with file name "1.projectPageFirstPart"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectFour_titleComponent" is equal with data "testData:projectCardFour_title"
    Then Element "projectPage:projectFour_contentComponent" is equal with data "testData:projectCardFour_contentCard"
    Then Element "projectPage:projectFive_titleComponent" is equal with data "testData:projectCardFive_title"
    Then Element "projectPage:projectFive_contentComponent" is equal with data "testData:projectCardFive_contentCard"
    Then Element "projectPage:projectSix_titleComponent" is equal with data "testData:projectCardSix_title"
    Then Element "projectPage:projectSix_contentComponent" is equal with data "testData:projectCardSix_contentCard"
    And User take screenshot with file name "2.projectPageMiddle"
    When User swipe up until 3 seconds
    Then Element "projectPage:projectSeven_titleComponent" is equal with data "testData:projectCardSeven_title"
    Then Element "projectPage:projectSeven_contentComponent" is equal with data "testData:projectCardSeven_contentCard"
    And User take screenshot with file name "3.projectPageLastPart"
    When User swipe up until 1 seconds
    Then Element "footer:footerCopyRight_title" is equal with data "testData:footer_CopyRight_title"
    Then Element "footer:footerLinkedin_icon" is displayed
    Then Element "footer:footerGithub_icon" is displayed
    And User take screenshot with file name "4.projectPageFooter"