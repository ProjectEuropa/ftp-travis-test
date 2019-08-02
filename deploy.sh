#!/bin/bash

lftp -d -c "set ftp:use-mdtm off;set ftp:ssl-allow no; open -u $FTP_USER,$FTP_PASSWORD $FTP_HOST; mirror --ignore-time -R dist /$FTP_REMOTE_ROOT/ --parallel=20"
