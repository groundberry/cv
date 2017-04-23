const cp = require('child_process');
const fs = require('fs');
const path = require('path');
const url = require('url');
const cri = require('chrome-remote-interface');

const port = 9222;

const source = url.format({
  pathname: path.resolve(__dirname, process.argv[2]),
  protocol: 'file:',
  slashes: true
});
const target = path.resolve(__dirname, process.argv[3]);

const chrome = startChrome();
setTimeout(() => printToPDF(chrome), 1000);

function startChrome () {
  const chromePath = '/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary';
  return cp.spawn(chromePath,[
    '--headless',
    '--disable-gpu',
  	`--remote-debugging-port=${port}`
  ]);
}

function printToPDF (chrome) {
  cri(async (client) => {
    const {Page} = client;
    try {
      await Page.enable();
      await Page.navigate({url: source});
      await Page.loadEventFired();
      const {data} = await Page.printToPDF();
      fs.writeFileSync(target, Buffer.from(data, 'base64'));
    } catch (err) {
      console.error(err);
    }
    await client.close();
    chrome.kill();
  }).on('error', (err) => {
    console.error(err);
  });
}
