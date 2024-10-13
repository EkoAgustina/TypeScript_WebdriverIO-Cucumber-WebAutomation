browserName='headless'
cucumberTags='@aboutPage'
hostName='103.175.221.85:4444'

export cucumberTagExpression=${cucumberTags}
export browserName=${browserName}
export hostName=${hostName}

yarn test

# allure generate reporter/allure-results --clean && allure open