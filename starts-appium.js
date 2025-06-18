const { spawn } = require('child_process');

const appiumProcess = spawn('appium', [], { stdio: 'inherit' });

process.on('exit', () => {
  appiumProcess.kill();
});

process.on('SIGINT', () => {
  appiumProcess.kill();
  process.exit();
});

console.log('Appium server started...');

module.exports = appiumProcess;
