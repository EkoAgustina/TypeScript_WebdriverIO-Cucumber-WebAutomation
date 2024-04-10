browserName='chrome'
cucumberTags='@homePage_Navbar'
hostName='localhost:8080'

export cucumberTagExpression=${cucumberTags}
export browserName=${browserName}
export hostName=${hostName}

yarn wdio

# allure generate reporter/allure-results --clean && allure open