#!/bin/sh
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
curl -X PUT -u "$USER_NAME":"$PASSWORD" "$REGISTRY" -T "$FILE"
#curl -H "X-JFrog-Art-Api:$PASSWORD" -X PUT "${REGISTRY}" -T "${FILE}"
if [ $? -eq 0 ]
then
echo "Completed"
exit 0
else
echo "Failed"
exit 1
fi
