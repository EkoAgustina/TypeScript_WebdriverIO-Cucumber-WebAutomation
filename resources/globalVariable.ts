import { platform } from 'node:process';


/**
 * Class representing global variables and settings.
 */
export default class globalVariables {
    /**
     * Operating system information.
     * @type {string}
     */
    static os: string = platform;
  
    /**
     * Services configuration.
     * @type {any}
     */
    static services: any;
  
    /**
     * URL before the step execution.
     * @type {any}
     */
    static urlBeforeStep: any;
  
    /**
     * URL after the step execution.
     * @type {any}
     */
    static urlAfterStep: any;

    /**
     * Feature name before the step execution.
     * @type {any}
     */
    static featureNameBefore: any;

    /**
     * Feature name after the step execution.
     * @type {any}
     */
    static featureNameAfter: any;
  
    /**
     * Path to the Allure environment properties file.
     * @type {string}
     */
    static allureProperties: string = './reporter/allure-results/environment.properties';
  }
