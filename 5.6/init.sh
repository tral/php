#!/bin/sh

test -z "$PUID" && PUID=50 || test "$PUID" -eq "$PUID" || exit 2
PUSER=$(getent passwd $PUID | cut -d: -f1)
test -n "$PUSER" || PUSER=$(getent passwd 50 | cut -d: -f1) || usermod --uid $PUID "$PUSER" || exit 2

test -z "$PGID" && PGID=$(id -g "$PUSER") || test "$PGID" -eq "$PGID" || exit 2
PGROUP=$(getent group $PGID | cut -d: -f1)
if [ -z "$PGROUP" ]; then
    PGROUP=$(id -gn "$PUSER")
    groupmod --gid $PGID "$PGROUP" || exit 2
else
    test $(id -g "$PUSER") -eq $PGID || usermod --gid $PGID "$PUSER" || exit 2
fi

test -z "${PCHOWN+1}" || chown $PUID:$PGID -R /var/lib/php/sessions /var/www || exit 2

php-fpm -F