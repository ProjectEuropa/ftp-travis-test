#!/bin/bash

lftp -c "set ftp:ssl-allow no; open -u $FTP_USER,$FTP_PASSWORD $FTP_HOST; mirror -Rev dist/. --ignore-time --parallel=10"
