Feature: Portfolio - About Page

@smokeTest @aboutPage @aboutPage_viaHomePage
Scenario: Verify user successfully redirects to About page when clicking About on navbar on Home page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:homePageUrl"
    Then Element "navbar:navbarAbout_title" is displayed
    Then User take screenshot with file name "1.aboutePage_homePage"
    Then User click "navbar:navbarAbout_title"
    Then Currently opened website URL is equal with "testData:aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContentTitle" is equal with data "testData:aboutPage_contentTitle"
    Then User take screenshot with file name "2.about"


@smokeTest @aboutPage @aboutPage_viaPathUrl
Scenario: Verify the user successfully redirected to About page when adding URL path `about` to base URL
    Given User open "https://ekoagustina.my.id/about"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContentTitle" is equal with data "testData:aboutPage_contentTitle"
    Then User take screenshot with file name "aboutPage"

@smokeTest @aboutPage @aboutPage_navbarComponent
Scenario: Verify users can see Navbar component on About page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:homePageUrl"
    Then Element "navbar:navbarAbout_title" is displayed
    Then User take screenshot with file name "1.aboutPage_homePage"
    Then User click "navbar:navbarAbout_title"
    Then Currently opened website URL is equal with "testData:aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContentTitle" is equal with data "testData:aboutPage_contentTitle"
    Then Element "navbar:navbarHome_title" is displayed
    Then Element "navbar:navbarAbout_title" is displayed
    Then Element "navbar:navbarProject_title" is displayed 
    Then User take screenshot with file name "2.aboutPage_homePage"

@smokeTest @aboutPage @aboutPage_footerComponent
Scenario: Verify users can see Footer component on About page
    Given User open "https://ekoagustina.my.id/about"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:aboutPageUrl"
    Then Element "aboutPage:aboutPageTitle" is displayed
    Then Element "aboutPage:aboutContentTitle" is equal with data "testData:aboutPage_contentTitle"
    Then Element "footer:footerCopyRight_title" is equal with data "testData:footer_CopyRight_title"
    Then Element "footer:footerLinkedin_icon" is displayed
    Then Element "footer:footerGithub_icon" is displayed
    Then User take screenshot with file name "aboutPage"


