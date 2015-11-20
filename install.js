var cp = require('child_process');
var packages = require('./packages.json');

var stdout = cp.execSync('apm ls -j', {encoding: 'utf8'});
var installed = JSON.parse(stdout);
installed = installed.user.map(p => p.name);
console.log(installed);

packages.forEach(pkg => {
    if (installed.indexOf(pkg) >= 0) {
        console.log(pkg + " already installed");
    } else {
        console.log('installing ' + pkg);
        var result = cp.execSync('apm install ' + pkg, {encoding: 'utf8'});
        console.log(result);
    }
});
