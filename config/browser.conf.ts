import axios from "axios";
import { customGeolocation } from "../helpers/baseScreen.ts";
import globalVariables from "../resources/globalVariable.ts";
import { config } from "./wdio.conf.ts"
import { env } from 'process';

if (globalVariables.os === 'linux') {
    config.hostname = env.HOST_NAME!.split(':')[0];
    config.port = parseInt(env.HOST_NAME!.split(':')[1]);
    config.capabilities = [
        {
            maxInstances: 6,
            browserName: 'chrome',
            'goog:chromeOptions': {
                        args: ['--headless', 
                            '--no-sandbox', 
                            '--disable-gpu',
                            '--disable-gpu-compositing', 
                            '--disable-extensions',
                            '--disable-dev-shm-usage',
                            '--disable-cache', 
                            `--user-agent=${globalVariables.getRandomUserAgent()}`]
            },
            acceptInsecureCerts: true,
            // webSocketUrl: true
        }
    ];
    config.services = [];
} else {
    const browserName = env.BROWSER_NAME;
    switch (browserName) {
        case 'headless':
            config.capabilities = [
                {
                    maxInstances: 5,
                    browserName: 'chrome',
                    'goog:chromeOptions': {
                        args: ['--headless', 
                            '--no-sandbox', 
                            '--disable-gpu',
                            '--disable-gpu-compositing', 
                            '--disable-dev-shm-usage',
                            '--disable-extensions',
                            '--disable-cache', 
                            `--user-agent=${globalVariables.getRandomUserAgent()}`]
                    },
                    acceptInsecureCerts: true,
                    // webSocketUrl: true
                }
            ];
            break;
        case 'chrome':
            config.capabilities = [
                {
                    browserName: 'chrome',
                    'goog:chromeOptions': {
                        args: ['--disable-cache','--incognito']
                    },
                    maxInstances: 5,
                    acceptInsecureCerts: true,
                    // webSocketUrl: true
                }
            ];
            break;
        case 'docker':
            config.hostname = env.HOST_NAME!.split(':')[0];
            config.port = parseInt(env.HOST_NAME!.split(':')[1]);
            // config.path = "/wd/hub"
            config.capabilities = [
                {
                    maxInstances: 6,
                    browserName: 'chrome',
                    'goog:chromeOptions': {
                        args: ['--headless', 
                            '--no-sandbox', 
                            '--disable-gpu',
                            '--disable-gpu-compositing', 
                            '--disable-dev-shm-usage',
                            '--disable-extensions',
                            '--disable-cache', 
                            `--user-agent=${globalVariables.getRandomUserAgent()}`]
                    },
                    acceptInsecureCerts: true,
                    // webSocketUrl: true
                }
            ];
            config.services = [];
            break;
        default:
            throw new Error(`browserName "${browserName}" not recognized!`);
    }

}

config.before = async () => {
    await browser.deleteCookies();
    await browser.execute(() => {
        if ('caches' in window) {
          caches.keys().then(keys => {
            keys.forEach(key => {
              caches.delete(key);
            });
          });
        }
      });

    customGeolocation(globalVariables.setLatitude, globalVariables.setLongitude)

};

config.after = async () => {
    const response = await axios.get('https://ipinfo.io/json');
    console.log(response.data)
}
export default { config };