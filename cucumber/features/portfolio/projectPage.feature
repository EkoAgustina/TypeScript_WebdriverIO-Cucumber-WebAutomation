Feature: Portfolio - Project Page

@smokeTest @projectPage @projectPage_viaHomePage
Scenario: Verify user successfully redirects to Project page when clicking Project on navbar on Home page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    # Then Currently opened website URL is equal with "testData:homePageUrl"
    # Then User take screenshot with file name "1.projectPage_homePage"
    # Then Element "navbar:navbarProject_title" is displayed
    # Then User click "navbar:navbarProject_title"
    # Then Currently opened website URL is equal with "testData:projectPageUrl"
    # Then Element "projectPage:projectPageTitle" is displayed
    # Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    # Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    # Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    # Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    # Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    # Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    # Then User take screenshot with file name "2.projectPage"

@smokeTest @projectPage @projectPage_viaPathUrl
Scenario: Verify the user successfully redirected to Project page when adding URL path `project` to base URL
    Given User open "https://ekoagustina.my.id/project"
    Then Title currently opened website is equal with "testData:validWebTitle"
    # Then Currently opened website URL is equal with "testData:projectPageUrl"
    # Then Element "projectPage:projectPageTitle" is displayed
    # Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    # Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    # Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    # Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    # Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    # Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    # Then User take screenshot with file name "projectPage"

@smokeTest @projectPage @projecttPage_navbarComponent
Scenario: Verify users can see Navbar component on Project page
    Given User open "https://ekoagustina.my.id"
    Then Title currently opened website is equal with "testData:validWebTitle"
    # Then Currently opened website URL is equal with "testData:homePageUrl"
    # Then Element "navbar:navbarProject_title" is displayed
    # Then User take screenshot with file name "1.projectPage_homePage"
    # Then User click "navbar:navbarProject_title"
    # Then Currently opened website URL is equal with "testData:projectPageUrl"
    # Then Element "projectPage:projectPageTitle" is displayed
    # Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    # Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    # Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    # Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    # Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    # Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    # Then Element "navbar:navbarHome_title" is displayed
    # Then Element "navbar:navbarAbout_title" is displayed
    # Then Element "navbar:navbarProject_title" is displayed
    # Then User take screenshot with file name "2.projectPage" 

@smokeTest @projectPage @projectPage_footerComponent
Scenario: Verify users can see Footer component on Project page
    Given User open "https://ekoagustina.my.id/project"
    Then Title currently opened website is equal with "testData:validWebTitle"
    Then Currently opened website URL is equal with "testData:projectPageUrl"
    # Then Element "projectPage:projectPageTitle" is displayed
    # Then Element "projectPage:projectOne_titleComponent" is equal with data "testData:projectCardOne_title"
    # Then Element "projectPage:projectOne_contentComponent" is equal with data "testData:projectCardOne_contentCard"
    # Then Element "projectPage:projectTwo_titleComponent" is equal with data "testData:projectCardTwo_title"
    # Then Element "projectPage:projectTwo_contentComponent" is equal with data "testData:projectCardTwo_contentCard"
    # Then Element "projectPage:projectThree_titleComponent" is equal with data "testData:projectCardThree_title"
    # Then Element "projectPage:projectThree_contentComponent" is equal with data "testData:projectCardThree_contentCard"
    # And User swipe up until 2 seconds
    # Then Element "footer:footerCopyRight_title" is equal with data "testData:footer_CopyRight_title"
    # Then Element "footer:footerLinkedin_icon" is displayed
    # Then Element "footer:footerGithub_icon" is displayed
    # Then User take screenshot with file name "2.projectPage"