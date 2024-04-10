import { FindElement } from "./baseScreen.ts";


/**
 * Retrieve the text content of an element identified by the provided locator.
 * @param {string} locator - The locator string to identify the element.
 * @returns {Promise<string>} A promise that resolves with the text content of the element.
 * @throws {Error} If the text content is empty or null.
 */
async function actionGetText (locator:string): Promise<string> {
    const textValue = await (await FindElement(locator)).getText()
  
    if (textValue === '' || textValue === null) {
      throw new Error('Text Not Found');
    } else {
      console.log('Its value: ', textValue);
      return textValue;
    }
}
  
  export { actionGetText };