#!/bin/sh
USER=cst
HOST=188.166.49.106            
DIR=/var/www/soother.systems   # the directory where your web site files should go

hugo && rsync -avz --delete public/ ${USER}@${HOST}:${DIR}

exit 0
