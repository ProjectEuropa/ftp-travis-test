#!/bin/bash

find . -type d \( -path "./.*" -o -path "./node_modules" \) -prune -o -name "*" -print -exec curl --ftp-create-dirs -T {} ftp://$FTP_HOST$FTP_REMOTE_ROOT/ --user ${FTP_USER}:${FTP_PASSWORD} \;

