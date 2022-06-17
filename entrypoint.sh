#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
curl -X PUT -u "$USER_NAME":"$PASSWORD" -T "$FILE" $REGISTRY
