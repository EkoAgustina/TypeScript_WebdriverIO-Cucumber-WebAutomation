import { customGeolocation } from "../helpers/baseScreen.ts";
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
            acceptInsecureCerts: true,
            webSocketUrl: true
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
                        args: ['headless', '--no-sandbox', 'disable-gpu', '--disable-cache', `--user-agent=${env.CUSTOM_USER_AGENT_CHROME_HEADLESS}`]
                    },
                    acceptInsecureCerts: true,
                    webSocketUrl: true
                }
            ];
            break;
        case 'chrome':
            config.capabilities = [
                {
                    browserName: 'chrome',
                    'goog:chromeOptions': {
                        args: ['--disable-cache',]
                    },
                    maxInstances: 5,
                    acceptInsecureCerts: true,
                    webSocketUrl: true
                }
            ];
            break;
        default:
            throw new Error(`Condition ${browserName}, condition not recognized!`);
    }
}

config.before = async () => {

    const locations = [
        { latitude: -6.902516, longitude: 107.618782 }, // Bandung
        { latitude: -6.3597485502896545, longitude: 106.8272343 }, // Depok
        { latitude: 3.562682562085971, longitude: 98.65840223634574 }, // Medan
        { latitude: -7.770860000118525, longitude: 110.3780433227243 }, // UGM
        { latitude: -7.932413460573722, longitude: 112.60569427952304 } // Malang
    ];

    const randomLocation = locations[Math.floor(Math.random() * locations.length)];
    const setLatitude = randomLocation.latitude
    const setLongtitude = randomLocation.longitude

    customGeolocation(setLatitude, setLongtitude)

};

export default { config };