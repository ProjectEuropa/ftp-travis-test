#!/bin/bash

lftp -c "set ftp:ssl-allow no; open -u $FTP_USER,$FTP_PASSWORD $FTP_HOST; mirror -R -X dist/nuxt dist/. /$FTP_REMOTE_ROOT/ --parallel=10"
