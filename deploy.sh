#!/bin/bash

lftp -u $FTP_USER,$FTP_PASSWORD -e "mirror -Rev dist/. $FTP_REMOTE_ROOT/." $FTP_HOST

