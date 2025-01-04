import {log, sleep} from "./baseScreen.ts"
import { browser} from '@wdio/globals'
import { findElement } from "./baseScreen.ts"
import { keyElement } from "../mappings/mapper.ts";


/**
 * Scrolls up the screen until the element specified by the locator is displayed.
 * @param {string} locator - The locator of the element to check its display status.
 * @returns {Promise<void>} - A Promise that resolves after the element is displayed or if it's already displayed.
 */
async function swipeUpElDisplayed (locator:string) {
    try {
        const windowSize = await browser.getWindowSize();
        const coordinateX = Math.round(windowSize.width * 0.2) 
        const coordinateY = Math.round(windowSize.height * 0.70)
        let attempts = 0;
        const maxAttempts = 3;

        while (!await (await findElement(locator)).isDisplayed() ) {
            await browser.scroll(coordinateX,coordinateY)
            log("INFO", `Swipe attempts: ${attempts}`);
            attempts++

            if (attempts >= maxAttempts) {
                throw new Error(`${keyElement(locator)} not found, swipe up exceeded`)
            }
        }

        log("INFO", `${keyElement(locator)} found after ${attempts} swipes`);
    } catch (err:any) {
        log("ERROR", err.message)
        throw err
    }
}

/**
 * Simulates a swipe up action on the screen for a given duration.
 * @param {number} time - The duration of the swipe action, specified in the number of repetitions.
 */
async function swipeUpwithTime (duration:number) {
    const windowSize = await browser.getWindowSize();
    const coordinateX = Math.round (windowSize.width * 0.1)
    const coordinateY = Math.round(windowSize.height * 0.25)

    for (let i = 0; i < duration; i++) {
        await browser.scroll(coordinateX, coordinateY);
        sleep(1)
    }
}

export { swipeUpElDisplayed, swipeUpwithTime };