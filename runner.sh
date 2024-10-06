browserName='headless'
cucumberTags='@projectPage_viaHomePage'
hostName='localhost:8080'

export cucumberTagExpression=${cucumberTags}
export browserName=${browserName}
export hostName=${hostName}

yarn test

# allure generate reporter/allure-results --clean && allure open