import {FindElement, sleep} from "./baseScreen.ts"
import { browser} from '@wdio/globals'



/**
 * Scrolls up the screen until the element specified by the locator is displayed.
 * @param {any} locator - The locator of the element to check its display status.
 * @returns {Promise<void>} - A Promise that resolves after the element is displayed or if it's already displayed.
 */
async function swipeUpElDisplayed (locator:any) {
    const windowSize = await browser.getWindowSize();
    const coordinateX = windowSize.width * 0.5
    const coordinateY = windowSize.height * 0.5
    const endCoordinate = windowSize.height * 0.25
    console.log(locator)
    await browser.scroll(coordinateX,coordinateY)
  
    // while (!await (await FindElement(locator)).isDisplayed()) {
    // await browser.scroll(coordinateX,coordinateY)
    // }
}

/**
 * Simulates a swipe up action on the screen for a given duration.
 * @param {any} time - The duration of the swipe action, specified in the number of repetitions.
 * @returns {Promise<void>} - A Promise that resolves after the swipe action is completed.
 */
async function swipeUpwithTime (time:any) {
    const windowSize = await browser.getWindowSize();
    const coordinateX = windowSize.width * 0.1
    const coordinateY = windowSize.height * 0.25

    for (let i = 0; i < time; i++) {
        await browser.scroll(coordinateX, coordinateY);
        sleep(1)
    }
}

export { swipeUpElDisplayed, swipeUpwithTime };