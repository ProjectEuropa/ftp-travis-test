var FtpDeploy = require("ftp-deploy");
var ftpDeploy = new FtpDeploy();

var config = {
  user: process.env.FTP_USER,
  password: process.env.FTP_PASSWORD,
  host: process.env.FTP_HOST,
  localRoot: "dist/",
  remoteRoot: process.env.FTP_REMOTE_ROOT,
  include: ["*"],
  deleteRemote: true,
  forcePasv: false
};

ftpDeploy.deploy(config)
    .then(res => console.log('finished:', res))
    .catch(err => console.log(err))
