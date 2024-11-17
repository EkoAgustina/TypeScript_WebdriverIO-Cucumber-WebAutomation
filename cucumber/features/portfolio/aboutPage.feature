Feature: Portfolio - About Page

@portfolio @aboutPage @aboutPage_googleSearchEngine
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page via google search engine
    Given User open "https://www.google.com"
    And User fill "google:google_main_search_field" with data "testData:testData_validWebTitle"
    And User press enter
    And User take screenshot with file name "1.GoogleSearchEngine"
    And User click "google:google_url_portfolio"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "2.aboutePage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContent" is equal with data "testData:testData_aboutContent"
    And User take screenshot with file name "3.about"

@portfolio @aboutPage @aboutPage_googleSearchEngine_two
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page via google search engine - two
    Given User open "https://www.google.com"
    And User fill "google:google_main_search_field" with data "testData:testData_validWebTitle"
    And User press enter
    And User take screenshot with file name "1.GoogleSearchEngine"
    And User click "google:google_url_portfolio"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "2.aboutePage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    And User take screenshot with file name "3.about"

@portfolio @aboutPage @aboutPage_googleSearchEngine_three
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page via google search engine - three
    Given User open "https://www.google.com"
    And User fill "google:google_main_search_field" with data "testData:testData_validWebTitle"
    And User press enter
    And User take screenshot with file name "1.GoogleSearchEngine"
    And User click "google:google_url_portfolio"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "2.aboutePage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    And User take screenshot with file name "3.about"

@portfolio @aboutPage @aboutPage_googleSearchEngine_four
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page via google search engine - four
    Given User open "https://www.google.com"
    And User fill "google:google_main_search_field" with data "testData:testData_validWebTitle"
    And User press enter
    And User take screenshot with file name "1.GoogleSearchEngine"
    And User click "google:google_url_portfolio"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "2.aboutePage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    And User take screenshot with file name "3.about"

@portfolio @aboutPage @aboutPage_googleSearchEngine_five
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page via google search engine - five
    Given User open "https://www.google.com"
    And User fill "google:google_main_search_field" with data "testData:testData_validWebTitle"
    And User press enter
    And User take screenshot with file name "1.GoogleSearchEngine"
    And User click "google:google_url_portfolio"
    Then Title currently opened website is equal with "testData:testData_validWebTitle"
    Then Currently opened website URL is equal with "testData:testData_homePageUrl"
    Then Element "navbar:navAboutIcon" is displayed
    And User take screenshot with file name "2.aboutePage_homePage"
    When User click "navbar:navAboutIcon"
    Then Title currently opened website is equal with "testData:testData_aboutTitle"
    Then Currently opened website URL is equal with "testData:testData_aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    And User take screenshot with file name "3.about"


