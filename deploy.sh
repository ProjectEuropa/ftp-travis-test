#!/bin/bash

- lftp -c "set ftp:ssl-allow no; open -u $FTP_USER,$FTP_PASSWORD $FTP_HOST; mirror -R dist/index.html /$FTP_REMOTE_ROOT/ --parallel=10"
