import globalVariables from "../resources/globalVariable.ts";
import { config } from "./wdio.conf.ts"
import { env } from 'process';

if (globalVariables.os === 'linux') {
    config.hostname = env.hostName!.split(':')[0];
    config.port = parseInt(env.hostName!.split(':')[1]);
    config.capabilities = [
        {
          maxInstances: 5,
          browserName: 'chrome',
          'goog:chromeOptions': {
            args: ['--headless', '--no-sandbox', '--disable-gpu', 'disable-dev-shm-usage', '--disable-cache', `--user-agent=${env.CUSTOM_USER_AGENT_CHROME_HEADLESS}`]
          },
          acceptInsecureCerts: true
        }
      ];
    config.services = [];
} else {
    const browserName = env.browserName;
    switch (browserName) {
        case 'headless':
            config.capabilities = [
                {
                    maxInstances: 5,
                    browserName: 'chrome',
                    'goog:chromeOptions': {
                    args: ['headless', '--no-sandbox','disable-gpu', '--disable-cache', `--user-agent=${env.CUSTOM_USER_AGENT_CHROME_HEADLESS}`]
                    },
                    acceptInsecureCerts: true  
                }
            ];
        break;
        case 'chrome':
            config.capabilities = [
                {
                    browserName: 'chrome',
                    'goog:chromeOptions': {
                        args: ['--disable-cache',]},
                    maxInstances: 5,
                    acceptInsecureCerts: true
                }
            ];
        break;
        default:
            throw new Error (`Condition ${browserName}, condition not recognized!`);
    }
}

export default {config};