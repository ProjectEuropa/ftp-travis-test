#!/bin/bash

lftp -c "set ftps:initial-prot ''; set ftp:ssl-force true; set ftp:ssl-protect-data true; set ssl:verify-certificate false; open ftp://$FTP_USER:$FTP_PASSWORD@$FTP_HOST:21; mirror -Rev dist/. /$FTP_REMOTE_ROOT/.; quit;"
