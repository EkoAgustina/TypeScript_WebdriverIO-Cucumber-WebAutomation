import { Given, When, Then } from '@wdio/cucumber-framework';
import { expect, $ } from '@wdio/globals'
import { baseOpenBrowser, takeScreenshot } from '../../helpers/baseScreen.ts';
import { actionClick } from '../../helpers/baseClick.ts'
import { elementDisplayed, equalData, titleEqual, urlEqual } from '../../helpers/baseExpect.ts';
import { swipeUpElDisplayed, swipeUpwithTime } from "../../helpers/baseSwipe.ts"

/**
 * Step definition for the Cucumber step: Given User open "<page>".
 * Opens the specified page in the browser.
 * @param {string} page - The page to be opened.
 * @returns {Promise<void>} - A Promise that resolves after the page is opened.
 */
Given(/^User open "(.*)"$/, async (page) => {
    try {
        await baseOpenBrowser(page);
    }
    catch (err:any) {
        throw err.message;
    }
    
});

/**
 * Step definition for the Cucumber step: When User click "<locator>".
 * Performs a click action on the specified locator.
 * @param {string} locator - The locator to be clicked.
 * @returns {Promise<void>} - A Promise that resolves after the click action is performed.
 */
When(/^User click "(.*)"$/, async (locator) => {
    await actionClick(locator);
});

/**
 * Step definition for the Cucumber step: Then Element "<locator>" (is displayed|not displayed).
 * Checks whether the specified element is displayed or not based on the condition.
 * @param {string} locator - The locator of the element to be checked.
 * @param {string} condition - The condition to check, either "is displayed" or "not displayed".
 * @returns {Promise<void>} - A Promise that resolves after checking the element's visibility.
 */
Then(/^Element "(.*)" (is displayed|not displayed)$/, async (locator, condition) => {
    await elementDisplayed(locator, condition);
});

/**
 * Step definition for the Cucumber step: Then Element "<locator>" is (equal|not equal) with data "<testData>".
 * Checks whether the text of the element specified by the locator matches the provided test data based on the specified condition.
 * @param {string} locator - The locator of the element to check its text.
 * @param {string} condition - The condition to check, either 'equal' or 'not equal'.
 * @param {string} testData - The test data to compare with the element's text.
 * @returns {Promise<void>} - A Promise that resolves after the comparison is done.
 */
Then(/^Element \"(.*)\" is (equal|not equal) with data \"(.*)\"$/, async (locator, condition, testData) => {
    await equalData(condition, locator, testData);
  }
);


/**
 * Step definition for the Cucumber step: Then User swipe up until he finds element "<locator>".
 * Scrolls up the screen until the specified element becomes displayed.
 * @param {string} locator - The locator of the element to find while scrolling up.
 * @returns {Promise<void>} - A Promise that resolves after the element is found or if it's already displayed.
 */
When(/^User swipe up until he finds element "(.*)"$/, async (locator) => {
    // await swipeUpElDisplayed(locator)
    console.log(locator)
    await swipeUpwithTime(1)
});

/**
 * Step definition for the Cucumber step: Then User swipe up until <duration> seconds".
 * Simulates a swipe up action on the screen for the specified duration.
 * @param {string} duration - The duration of the swipe action, specified in seconds.
 * @returns {Promise<void>} - A Promise that resolves after the swipe action is completed.
 */
When(/^User swipe up until (.*) seconds$/, async (duration) => {
    // await swipeUpElDisplayed(locator)
    await swipeUpwithTime(duration)
});

/**
 * Step definition for check if the title of the currently opened website matches the expected title.
 * @param {string} condition - The condition to be checked. It can be either 'equal' or 'not equal'.
 * @param {string} testData - The expected title to be compared with the title of the currently opened website.
 */
Then(/^Title currently opened website is (equal|not equal) with \"(.*)\"$/, async (condition, testData) => {
    await titleEqual(condition, testData);
  }
);

/**
 * Step definition for to check if the URL of the currently opened website matches the expected URL.
 * @param {string} condition - The condition to be checked. It can be either 'equal' or 'not equal'.
 * @param {string} testData - The expected URL to be compared with the URL of the currently opened website.
 */
Then(/^Currently opened website URL is (equal|not equal) with \"(.*)\"$/, async (condition, testData) => {
    await urlEqual(condition, testData);
  }
);

/**
 * Step definition for Cucumber scenario to take a screenshot with a specified file name.
 * @param {string} name - The file name for the screenshot.
 */
Then(/^User take screenshot with file name "(.*)"$/, async (name) => {
    await takeScreenshot(name);
});