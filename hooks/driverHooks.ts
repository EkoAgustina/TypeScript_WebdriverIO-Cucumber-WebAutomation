import { pageLoad, sleep, takeScreenshot, log } from "../helpers/baseScreen.ts";
import globalVariables from "../resources/globalVariable.ts";
// import * as propertiesReader from 'properties-reader';
import PropertiesReader from 'properties-reader';
import { env } from 'process'; 
import { browser} from '@wdio/globals'
import { ITestCaseHookParameter } from "@cucumber/cucumber";
/**
 * Executes before a Cucumber scenario.
 * @param {ITestCaseHookParameter} world - The Cucumber World object containing information about the scenario.
 * 
 */
async function hookBeforeScenario(world: ITestCaseHookParameter) {
  globalVariables.featureNameBefore = world.gherkinDocument.feature!.name
}

/**
 * Executes before a step in a Cucumber scenario starts.
 * @param {object} step - An object containing information about the step.
 * @param {string} step.text - The description of the step.
 * @returns {Promise<string | void>} - A Promise that resolves with the URL before the step starts, if the step is not 'User open'.
 */
async function hookBeforeStep(step: { text: string }): Promise<string | void> {
    if (!step.text.includes('User open')) {
      return (globalVariables.urlBeforeStep = await browser.getUrl());
    }
}

/**
 * Executes after a step in a Cucumber scenario completes.
 * @param {object} scenario - An object containing information about the scenario.
 * @param {string} scenario.name - The name of the scenario.
 * @param {object} step - An object containing information about the step.
 * @param {string} step.text - The description of the step.
 * @param {object} result results object containing scenario results
 * @param {boolean} result.passed true if scenario has passed
 * @param {string} result.error error stack if scenario failed
 * @param {number} result.duration duration of scenario in milliseconds
 * @returns {Promise<void>} - A Promise that resolves after the function finishes executing.
 */
async function hookAfterStep (scenario:{name:string}, step:{text:string}, result:{passed:boolean}): Promise<void> {
    globalVariables.urlAfterStep = await browser.getUrl();
    if (result.passed) {
      if (globalVariables.os === 'linux') {
        log("INFO", `${scenario.name}`)
        log("INFO", `✓ ${step.text} is passed`)
      }
      else {
      log("INFO", `\x1b[33m ${scenario.name} \x1b[0m`)
      log("INFO", `\x1b[33m ✓ ${step.text} is passed \x1b[0m`)
      }
      sleep(1);
      if (step.text.includes('User open') !== true) {
        if (globalVariables.urlBeforeStep !== globalVariables.urlAfterStep) {
          await pageLoad(5);
          sleep(3);
        }
      }
      sleep(1);
    }
}

/**
 * Executes after a Cucumber scenario completes.
 * Updates properties in the Allure report and saves screenshots in case of failure.
 * @param {any} world - The Cucumber World object containing information about the scenario.
 * @param {any} result results object containing scenario results
 * @returns {Promise<void>} - A Promise that resolves after updating properties and saving screenshots.
 */
async function hooksAfterScenario(world: any, result:any): Promise<void> {
    const propertiesPath = globalVariables.allureProperties;
    const properties = PropertiesReader(propertiesPath);
    const allureHostUrl = () => {
      if (env.hostName === 'localhost:8080') {
        return 'localhost:8080'
      } else if (env.hostName === 'localhost:4444') {
        return 'selenium/standalone-chrome'
      }
    }
    globalVariables.featureNameAfter = world.gherkinDocument.feature.name

    // if (globalVariables.featureNameBefore !== globalVariables.featureNameAfter) {
    //   await browser.reloadSession()
    // }

    // properties.set('Services', globalVariables.services);
    properties.set('Host', allureHostUrl() || 'Unknown');
    properties.save(propertiesPath);

    if (result.error) {
      await takeScreenshot(`failed_${world.pickle.name}`)
        // cucumberJson.attach(await browser.takeScreenshot(), 'image/png');
    }
}

export { hookAfterStep, hooksAfterScenario, hookBeforeStep, hookBeforeScenario };