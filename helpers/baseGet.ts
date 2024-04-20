import { findElement } from "./baseScreen.ts";
import { keyElement } from "../mappings/mapper.ts"


/**
 * Retrieve the text content of an element identified by the provided locator.
 * @param {string} locator - The locator string to identify the element.
 * @returns {Promise<string>} A promise that resolves with the text content of the element.
 * @throws {Error} If the text content is empty or null.
 */
async function actionGetText (locator:string): Promise<string> {
    const textValue = await (await findElement(locator)).getText()
  
    if (textValue === '' || textValue === null) {
      throw new Error(`Cannot get text on element '${keyElement(locator)}'`);
    } else {
      console.log('Its value: ', textValue);
      return textValue;
    }
}
  
  export { actionGetText };