var fs = require("fs");
var FtpClient = require("ftp-deploy");

console.log("Inside ftpUpload.js");
if (process === null) {
  console.log("process is null");
} else {
  uploadToFTP();
}
function getFiles(dir, files_) {
  files_ = files_ || [];
  var files = fs.readdirSync(dir);
  for (var i in files) {
    var name = dir + "/" + files[i];
    if (fs.statSync(name).isDirectory()) {
      getFiles(name, files_);
    } else {
      files_.push({ full_path: name, rel_path: files[i] });
    }
  }
  return files_;
}

function uploadToFTP(files) {
  var ftp = new FtpClient();
  var ftpConfig = getConfiguration();

  ftp.deploy(ftpConfig, function(err, fileName) {
    if (err) {
      console.log("error " + err);
    } else {
      console.log("Completed uploading");
    }
  });
}
function getConfiguration() {
  return {
    host: process.env.FTP_HOST,
    username: process.env.FTP_USER,
    password: process.env.FTP_PASSWORD,
    localRoot: "dist",
    remoteRoot: process.env.FTP_REMOTE_ROOT
  };
}
