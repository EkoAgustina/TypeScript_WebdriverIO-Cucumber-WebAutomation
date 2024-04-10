import {FindElement} from "./baseScreen.ts"

/**
 * Perform a click action on an element identified by the provided locator.
 * @param {string} locator - The locator string to identify the element to click.
 * @returns {Promise<void>} A promise that resolves when the click action is completed.
 */
async function actionClick (locator:string): Promise<void> {
    await (await FindElement(locator)).click()
}

export { actionClick };