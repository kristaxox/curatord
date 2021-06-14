FROM alpine:latest

RUN apk add --no-cache curl \
	inotify-tools \
	unzip

COPY ./entrypoint /entrypoint
RUN curl -L --output /uplink.zip https://github.com/storj/storj/releases/download/v1.31.2/uplink_linux_amd64.zip
RUN unzip -d / /uplink.zip
ENTRYPOINT /entrypoint
