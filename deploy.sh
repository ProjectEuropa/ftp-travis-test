#!/bin/bash

lftp -u $FTP_USER,$FTP_PASSWORD -e "mirror -Rev -X dist/. $FTP_REMOTE_ROOT." $FTP_HOST

