#!/bin/bash

files=./dist/*
for f in $files
  do
	  echo "Uploading $f";
	  curl --ftp-create-dirs -T $f ftp://$FTP_USER:$FTP_PASSWORD@$FTP_HOST$FTP_REMOTE_ROOT/$f
  done
