
// import cucumberJson from 'wdio-cucumberjs-json-reporter';
import logger from '@wdio/logger';
import * as fs from 'node:fs/promises';
import { existsSync, readdirSync, mkdirSync } from 'node:fs';
import { keyElement } from "../mappings/mapper.ts";
import globalVariables from "../resources/globalVariable.ts"
import { env } from 'process';



/**
 * Logs a message with the specified log level.
 * @param {string} level - The log level. Should be one of 'WARNING', 'INFO', or 'ERROR'.
 * @param {string} message - The message to be logged.
 * @throws {Error} Throws an error if the specified log level is not recognized.
 */
const log = (level:string, message:string) => {
  switch (level) {
    case 'WARNING':
      logger('WARNING').warn(message)
      break;
    case 'INFO':
      logger('INFO').info(message)
      break;
    case 'ERROR':
      logger('ERROR').info(message)
      break;
    default:
      throw new Error('Unknown conditions')
  }
}

/**
 * Pause the execution for a specified duration.
 * @param {number} duration - The duration to sleep in seconds.
 */
function sleep (duration:number) {
    const date = Date.now();
    let currentDate = null;
    do {
      currentDate = Date.now();
    } while (currentDate - date < duration * 1000);
}

async function customGeolocation(customLatitude:any, customLongitude:any) {
//   await browser.emulate('geolocation', {
//     latitude: customLatitude,
//     longitude: customLongitude,
//     accuracy: 100
// })

  await browser.sendCommand('Emulation.setGeolocationOverride', {
    latitude: customLatitude,
    longitude: customLongitude,
    accuracy: 100
});
}

/**
 * Opens the browser and navigates to the specified URL.
 * @param {string} url - The URL to navigate to.
 * @returns {Promise<void>} A promise that resolves when the browser is opened and the URL is loaded.
 */
async function baseOpenBrowser(url: string): Promise<void> {
  const browserName = env.browserName;
  await browser.url(url);

  if (globalVariables.os === 'linux') {
      await browser.setWindowSize(1470, 860);
  } else {
      switch (browserName) {
          case 'headless':
              await browser.setWindowSize(1470, 920);
              break;
          case 'chrome':
              await browser.fullscreenWindow();
              break;
          default:
              throw new Error('Unknown condition!');
      }
  }

  const windowSizeString = `Width: ${(await browser.getWindowSize()).width}, Height: ${(await browser.getWindowSize()).height}`;
  log('INFO', windowSizeString);
  await browser.pause(3000);
}

/**
 * Waits for the element specified by the locator to exist on the page.
 * If the element exists within the timeout period, it resolves; otherwise, it logs a warning and continues.
 * @param {string} locator - The locator of the element to wait for.
 * @returns {Promise<void>} - A Promise that resolves after the element exists or after the timeout.
 */
async function elWaitForExist (locator:string) {
  try {
    await $(keyElement(locator)).waitForExist({ timeout: 6500 })
  } catch (err) {
    log('WARNING', (err as Error).message)
    sleep(2)
  }
}

/**
 * Find an element based on the provided locator.
 * @param {string} locator - The locator string to identify the element.
 * @returns {WebdriverIO.Element} The found element.
 */
const findElement = async (locator: string): Promise<WebdriverIO.Element> => {
  return new Promise((resolve, reject) => {
    Promise.all([
      elWaitForExist(locator),
      $(keyElement(locator))
    ])
      .then((element) => {
        resolve(element[1])
      })
      .catch((err) => {
        reject(err)
      })
  })
}

/**
 * Wait until the page is fully loaded.
 * @param {number} duration - The maximum duration to wait for page load, in seconds.
 * @throws {Error} If the page fails to load within the specified duration.
 */
async function pageLoad (duration:number) {
    await browser.waitUntil(() => browser.execute(() => document.readyState === 'complete'), {
      timeout: duration * 1000,
      timeoutMsg: 'Page failed to load'
    });
}

/**
 * Take a screenshot of the current browser view.
 * @param {string} name - The name of the screenshot file.
 * @returns {Promise<void>} A promise that resolves when the screenshot is captured.
 */
async function takeScreenshot (name:string) {
  const checkDirectories = './screenshot'
  if (existsSync(checkDirectories) === false) {
    mkdirSync(checkDirectories)
  }
  await browser.saveScreenshot('./screenshot/' + name + '.png');
    // cucumberJson.attach(await browser.takeScreenshot(), 'image/png');
}


/**
 * Get the current date in the format "dd-mm-yyyy".
 * @returns {string} The current date.
 */
function getCurrentDate () {
    const today = new Date();
    const date = today.getDate() + '-' + (today.getMonth() + 1) + '-' + today.getFullYear();
    return date;
}

/**
 * Apply ANSI color to a message and return it.
 * @param {string} color - The color to apply ('red' or 'yellow').
 * @param {string} message - The message to colorize.
 * @returns {string} The colorized message with ANSI escape codes.
 */
const stdoutAnsiColor = (color:string, message:string) => {
    if (color === 'red') {
      return '\x1b[31m' + message + '\x1b[0m';
    } else if (color === 'yellow') {
      return '\x1b[33m' + message + '\x1b[0m';
    }
};


/**
 * Clean a directory by removing all files and subdirectories inside it.
 * @param {string} directoryPath - The path to the directory to be cleaned.
 */
function cleanDirectory (directoryPath:string) {
    for (let i = 0; i < directoryPath.length; i++) {
      if (existsSync(directoryPath[i])) {
        for (let a = 0; a < readdirSync(directoryPath[i]).length; a++) {
          const filePath = directoryPath[i] + readdirSync(directoryPath[i])[a];
          fs.rm(filePath, { recursive: true });
        }
      } else {
        console.log(stdoutAnsiColor('red', `Warning: your path report "${directoryPath[i]}" does not exist!`));
      }
    }
}

export {baseOpenBrowser, findElement, takeScreenshot, sleep, pageLoad, stdoutAnsiColor, getCurrentDate, cleanDirectory, log, customGeolocation}