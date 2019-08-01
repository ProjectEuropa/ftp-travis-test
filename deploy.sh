#!/bin/bash

lftp -f "
set ssl:verify-certificate no
set ftp:ssl-allow no
set dns:order 'inet'
open $FTP_USER:$FTP_PASSWORD@$FTP_HOST
mirror -v -e -R dist/ /$FTP_REMOTE_ROOT
"
