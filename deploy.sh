#!/bin/bash

lftp -u $FTP_USER,$FTP_PASSWORD -e "set ftp:ssl-allow no; mirror -Rev dist/. $FTP_REMOTE_ROOT/. $FTP_HOST; quit"

