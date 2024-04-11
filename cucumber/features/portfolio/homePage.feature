Feature: Portfolio - Home Page

@smokeTest @homePage_Navbar @homePage
Scenario: Verify users can see Navbar component on Home page 
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    # Then Currently opened website URL is equal with "testData:homePageUrl"
    # Then Element "homePage:homePage_texLeft" is equal with data "testData:homePage_textLeft_title"
    # Then Element "navbar:navbarHome_title" is displayed
    # Then Element "navbar:navbarAbout_title" is displayed
    # Then Element "navbar:navbarProject_title" is displayed
    # Then User take screenshot with file name "homePage" 

@smokeTest @homePage_Footer @homePage
Scenario: Verify users can see Footer component on Home page 
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    # Then Element "homePage:homePage_texLeft" is equal with data "testData:homePage_textLeft_title"
    # And User swipe up until 5 seconds
    # Then Element "footer:footerCopyRight_title" is equal with data "testData:footer_CopyRight_title"
    # Then Element "footer:footerLinkedin_icon" is displayed
    # Then Element "footer:footerGithub_icon" is displayed
    # Then User take screenshot with file name "homePage" 
    
