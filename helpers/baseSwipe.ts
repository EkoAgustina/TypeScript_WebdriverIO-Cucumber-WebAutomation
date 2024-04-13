import {sleep} from "./baseScreen.ts"
import { browser} from '@wdio/globals'



/**
 * Scrolls up the screen until the element specified by the locator is displayed.
 * @param {string} locator - The locator of the element to check its display status.
 * @returns {Promise<void>} - A Promise that resolves after the element is displayed or if it's already displayed.
 */
async function swipeUpElDisplayed (locator:string) {
    const windowSize = await browser.getWindowSize();
    const coordinateX = windowSize.width * 0.5
    const coordinateY = windowSize.height * 0.5
    // const endCoordinate = windowSize.height * 0.25
    console.log(locator)
    await browser.scroll(coordinateX,coordinateY)
  
    // while (!await (await FindElement(locator)).isDisplayed()) {
    // await browser.scroll(coordinateX,coordinateY)
    // }
}

/**
 * Simulates a swipe up action on the screen for a given duration.
 * @param {number} time - The duration of the swipe action, specified in the number of repetitions.
 */
async function swipeUpwithTime (duration:number) {
    const windowSize = await browser.getWindowSize();
    const coordinateX = windowSize.width * 0.1
    const coordinateY = windowSize.height * 0.25

    for (let i = 0; i < duration; i++) {
        await browser.scroll(coordinateX, coordinateY);
        sleep(1)
    }
}

export { swipeUpElDisplayed, swipeUpwithTime };