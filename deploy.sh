#!/bin/bash

files=./dist/*
for f in $files
  do
    f="$(basename -- $files)"
    echo "Uploading $f";
    curl -u $FTP_USER:$FTP_PASSWORD --ftp-create-dirs -T $f ftp://$FTP_HOST$FTP_REMOTE_ROOT/$f \;
  done
