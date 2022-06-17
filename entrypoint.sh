#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
curl -X PUT -H -u $USER_NAME:$PASSWORD -T "$FILE" "http://34.122.63.81:8082/artifactory/gradle-dev-local/app1.jar"
#curl -H "X-JFrog-Art-Api:$PASSWORD" -X PUT "${REGISTRY}" -T "${FILE}"
