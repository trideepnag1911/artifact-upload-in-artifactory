FROM alpine/curl:latest
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "sh -x entrypoint.sh" ]
