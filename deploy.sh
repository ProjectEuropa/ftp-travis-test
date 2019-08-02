#!/bin/bash

lftp -d -c "set ftp:ssl-allow no; open -u $FTP_USER,$FTP_PASSWORD $FTP_HOST; mirror -X dist/nuxt -R dist /$FTP_REMOTE_ROOT/ --parallel=10"
