Feature: Portfolio - Home Page

@portfolio @homePage_Navbar @homePage
Scenario: Verify users can see Navbar component on Home page 
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "homePage:home_sayTitle" is equal with data "testData:testData_homeContent_sayHi"
    Then Element "homePage:home_nameTitile" is equal with data "testData:testData_homeContent_mame"
    Then Element "homePage:home_buttonContactMe" is displayed
    Then Element "navbar:navHomeIcon" is displayed
    Then Element "navbar:navAboutIcon" is displayed
    Then Element "navbar:navProjectIcon" is displayed
    And User take screenshot with file name "homePage" 

@portfolio @homePage_Footer @homePage
Scenario: Verify users can see Footer component on Home page 
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Element "homePage:home_sayTitle" is equal with data "testData:testData_homeContent_sayHi"
    Then Element "homePage:home_nameTitile" is equal with data "testData:testData_homeContent_mame"
    Then Element "homePage:home_buttonContactMe" is displayed
    When User swipe up until 5 seconds
    Then Element "footer:footerCopyRight" is equal with data "testData:testData_footerCopyRight"
    Then Element "footer:footerLinkedinIcon" is displayed
    Then Element "footer:footerGithubIcon" is displayed
    And User take screenshot with file name "homePage" 

@portfolio @homePage_googleSearchEngine @homePage
Scenario: Verify users can see Footer component on Home page via google search engine 
    Given User open "https://www.google.com"
    And User fill "google:google_main_search_field" with data "testData:testData_validWebTitle"
    And User press enter
    And User take screenshot with file name "1.GoogleSearchEngine"
    And User click "google:google_url_portfolio"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "homePage:home_sayTitle" is equal with data "testData:testData_homeContent_sayHi"
    Then Element "homePage:home_nameTitile" is equal with data "testData:testData_homeContent_mame"
    Then Element "homePage:home_buttonContactMe" is displayed
    Then Element "navbar:navHomeIcon" is displayed
    Then Element "navbar:navAboutIcon" is displayed
    Then Element "navbar:navProjectIcon" is displayed
    And User take screenshot with file name "2.homePage" 
    
