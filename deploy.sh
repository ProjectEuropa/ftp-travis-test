#!/bin/bash

#!/bin/bash

set -e
set dns:order "inet"
set ssl:verify-certificate no
set ftp:ssl-allow no

lftp -f "
open ftp://$FTP_HOST
user $FTP_USER $FTP_PASSWORD
mirror --continue --reverse --delete dist/. /$FTP_REMOTE_ROOT/
bye
"
