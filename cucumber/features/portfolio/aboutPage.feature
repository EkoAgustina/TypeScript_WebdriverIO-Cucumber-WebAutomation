Feature: Portfolio - About Page

@portfolio @aboutPage @aboutPage_viaHomePage
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "1.aboutePage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContent" is equal with data "testData:testData_aboutContent"
    And User take screenshot with file name "2.about"


@portfolio @aboutPage @aboutPage_viaPathUrl
Scenario: Verify the user successfully redirected to About page when adding URL path `about` to base URL
    Given User open "https://ekoagustina.my.id/about"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContent" is equal with data "testData:testData_aboutContent"
    And User take screenshot with file name "aboutPage"

@portfolio @aboutPage @aboutPage_navbarComponent
Scenario: Verify users can see Navbar component on About page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "1.aboutPage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContent" is equal with data "testData:testData_aboutContent"
    Then Element "navbar:navHomeIcon" is displayed
    Then Element "navbar:navAboutIcon" is displayed
    Then Element "navbar:navProjectIcon" is displayed 
    And User take screenshot with file name "2.aboutPage_homePage"

@portfolio @aboutPage @aboutPage_footerComponent
Scenario: Verify users can see Footer component on About page
    Given User open "https://ekoagustina.my.id/about"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContent" is equal with data "testData:testData_aboutContent"
    Then Element "footer:footerCopyRight" is equal with data "testData:testData_footerCopyRight"
    Then Element "footer:footerLinkedinIcon" is displayed
    Then Element "footer:footerGithubIcon" is displayed
    And User take screenshot with file name "aboutPage"


