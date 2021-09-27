#!/usr/bin/env bash

export SERVER_NAME="dadovic"
export WORLD_NAME="dadworld"
export SERVER_PASS="hammer"
export SERVER_PUBLIC=false
export UPDATE_CRON="7 */2 * * *"
export BACKUPS_CRON="30 */3 * * *"
export BACKUPS_MAX_AGE=1
export VALHEIM_PLUS=false

if [ ! -f "/config/adminlist.txt" ]; then
    echo -e "first time setup"

    echo -e "copying default settings"
    cp -r default/. /config
fi

cd /
/usr/local/sbin/bootstrap
