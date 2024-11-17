browserName='headless'
cucumberTags='@aboutPage_googleSearchEngine_three'
hostName='localhost'

export cucumberTagExpression=${cucumberTags}
export browserName=${browserName}
export hostName=${hostName}

yarn test

# allure generate reporter/allure-results --clean && allure open