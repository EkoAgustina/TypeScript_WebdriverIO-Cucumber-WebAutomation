import { FindElement } from "./baseScreen.ts"
import { parseTestData, keyElement } from "../mappings/mapper.ts"
import { actionGetText } from "./baseGet.ts"
import { expect, $ } from '@wdio/globals'


/**
 * Check if an element identified by the provided locator is displayed or not displayed.
 * @param {string} locator - The locator string to identify the element.
 * @param {string} condition - The condition to check ('is displayed' or 'not displayed').
 * @returns {Promise<boolean>} A promise that resolves with a boolean indicating whether the element meets the condition.
 * @throws {Error} If the element's display state does not match the expected condition.
 */
async function elementDisplayed (locator:any, condition:any) {
  const elDisplayed = await (await FindElement(locator)).isDisplayed()
  switch (condition) {
    case 'is displayed':
      if (!elDisplayed) {
        throw new Error(`Element '${keyElement(locator)}' is not displayed!`)
      }
      break;
    case 'not displayed':
      if (elDisplayed) {
        throw new Error(`Element '${keyElement(locator)}' is displayed, not as expected!`)
      }
      break;
    default:
      throw new Error('Unknown conditions')
  }
}

/**
 * Compares the text of an element specified by the locator with the provided test data,
 * based on the specified condition ('equal' or 'not equal').
 * @param {any} condition - The condition to check, either 'equal' or 'not equal'.
 * @param {any} locator - The locator of the element to compare its text.
 * @param {any} testData - The test data to compare with the element's text.
 * @returns {Promise<void>} - A Promise that resolves after the comparison is done.
 * @throws {Error} - If the condition is not recognized.
 */
async function equalData (condition:any, locator:any, testData:any) {
  switch (condition) {
    case 'equal':
      await $(keyElement(locator)).waitUntil(
        async function (this: WebdriverIO.Element) {
          return (await this.getText()) === parseTestData(testData);
        },
        {
          timeout: 10000,
          timeoutMsg:
            "Your element '" + (await actionGetText(locator)) + "' not equal with data '" + parseTestData(testData) + "'"
        }
      );
      break;
    case 'not equal':
      await $(keyElement(locator)).waitUntil(
        async function (this: WebdriverIO.Element) {
          return (await this.getText()) !== parseTestData(testData);
        },
        {
          timeout: 10000,
          timeoutMsg:
            "Your element '" + (await actionGetText(locator)) + "' is equal with data '" + parseTestData(testData) + "'"
        }
      );
      break;
    default:
      throw new Error('Unknown conditions!');
  }
}

/**
 * Checks if the title of the currently opened website matches the expected title.
 * @param {any} condition - The condition to be checked. Currently supports only 'equal' and 'not equal'.
 * @param {any} title - The expected title of the currently opened website.
 * @returns {Promise<string>} A promise that resolves if the title matches the expected title, 
 *   or rejects with an error message if the title does not match or if the condition is invalid.
 */
async function titleEqual (condition:any, title:any): Promise<string> {
  return new Promise (async(resolve,reject) => {
    const getTitle = await browser.getTitle()
    switch(condition){
      case 'equal': 
        if (getTitle === parseTestData(title)) {
          setTimeout(() => {
            resolve(`Title of the currently opened website '${getTitle}' is equal with '${parseTestData(title)}' as expected`)
          },3000)
        }
        else if (getTitle !== parseTestData(title)) {
          setTimeout(() => {
            reject(`Currently opened website title '${getTitle}' is not equal with '${parseTestData(title)}' not as expected!`)
          },3000)
        }
        break;
      case 'not equal':
        if (getTitle === parseTestData(title)) {
          setTimeout(() => {
            reject(`Title of the currently opened website '${getTitle}' is equal with '${parseTestData(title)}' not as expected!`)
          },3000)
        }
        else if (getTitle !== parseTestData(title)) {
          setTimeout(() => {
            resolve(`Currently opened website title '${getTitle}' is not equal with '${parseTestData(title)}' as expected`)
          },3000)
        }
        break;
      default:
        reject(`Unknown conditions!`);
    }
  })
  
}

/**
 * Checks if the URL of the currently opened website matches the expected URL.
 * @param {string} condition - The condition to be checked. It can be either 'equal' or 'not equal'.
 * @param {string} url - The expected URL of the currently opened website.
 * @returns {Promise<string>} A promise that resolves if the URL matches the expected URL and condition, 
 *   or rejects with an error message if the URL does not match or if the condition is invalid.
 */
async function urlEqual(condition:any, url:any): Promise<string> {
  return new Promise (async(resolve,reject) => {
    const getUrl = await browser.getUrl();
    switch(condition){
      case 'equal':
        if (getUrl === parseTestData(url)) {
          setTimeout (() =>{
            resolve (`Currently opened website URL '${getUrl}' is equal with '${parseTestData(url)}' as expected`)
          },3000)
        }
        else if (getUrl !== parseTestData(url)) {
          reject (`Currently opened website URL '${getUrl}' is not equal with '${parseTestData(url)}' not as expected!`)
        }
      break;
      case 'not equal':
        if (getUrl === parseTestData(url)) {
          setTimeout (() =>{
            reject (`Currently opened website URL '${getUrl}' is equal with '${parseTestData(url)}' not as expected!`)
          },3000)
        }
        else if (getUrl !== parseTestData(url)) {
          resolve (`Currently opened website URL '${getUrl}' is not equal with '${parseTestData(url)}' as expected`)
        }
      break;
      default:
        reject (`Unknown conditions!`)
    }
  })
}

export { elementDisplayed, equalData, titleEqual, urlEqual };