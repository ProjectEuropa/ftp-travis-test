#!/bin/bash

files=./dist/*
for f in $files
  do
	  echo "Uploading ";
	  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASSWORD ftp://$FTP_HOST$FTP_REMOTE_ROOT/$f
  done
