#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
curl -X PUT "$REGISTRY" -T "$FILE"
#curl -H "X-JFrog-Art-Api:$PASSWORD" -X PUT "${REGISTRY}" -T "${FILE}"
