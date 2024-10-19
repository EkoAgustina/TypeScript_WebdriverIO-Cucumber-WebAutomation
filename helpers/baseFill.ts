import {findElement} from "./baseScreen.ts"
import { parseTestData } from "../mappings/mapper.ts"

/**
 * Fill an input element identified by the provided locator with the specified data.
 * @param {string} locator - The locator string to identify the element to fill.
 * @param {string} test_data - The data to input into the element.
 * @returns {Promise<void>} A promise that resolves when the fill action is completed.
 */
async function actionFill(locator: string, test_data: string): Promise<void> {
    await (await findElement(locator)).setValue(parseTestData(test_data));
}

export {actionFill}