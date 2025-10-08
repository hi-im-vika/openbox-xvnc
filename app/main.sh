#!/bin/ash -e
OPENBOX_ENABLED=${OPENBOX_ENABLED:-1}
cd /app
if [ "$OPENBOX_ENABLED" = "1" ]; then
   supervisord -c /etc/supervisor/conf.d/supervisord.conf
else
    exec ./xvnc.sh
fi
