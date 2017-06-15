#!/usr/bin/env bash

/opt/phing/vendor/bin/phing/orocrm init-webserver \
    -f /opt/phing/orocrm/build.xml \
    -Dsymfony.env=${SYMFONY_ENV} \
    -Dapp.dir=${APP_ROOT} \
&& /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
