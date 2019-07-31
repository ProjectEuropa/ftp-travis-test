#!/bin/bash

files=*
for f in $files
  do
    echo "Uploading $f";
    curl -u $FTP_USER:$FTP_PASSWORD --ftp-create-dirs -T $f sftp://$FTP_HOST$FTP_REMOTE_ROOT/$f \;
  done
