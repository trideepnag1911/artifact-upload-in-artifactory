#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
curl -X PUT -H "Content-Type: application/json" -u $USER_NAME:$PASSWORD -T "$FILE" "$REGISTRY"
#curl -H "X-JFrog-Art-Api:$PASSWORD" -X PUT "${REGISTRY}" -T "${FILE}"
