#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
echo $USER_NAME $PASSWORD
curl -X PUT -H -u $USER_NAME:$PASSWORD -T "$FILE" "$REGISTRY"
#curl -H "X-JFrog-Art-Api:$PASSWORD" -X PUT "${REGISTRY}" -T "${FILE}"
