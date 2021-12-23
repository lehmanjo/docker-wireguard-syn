ARG VERSION=3.15
FROM alpine:${VERSION}

ENV LOCAL_SUBNET=10.1.2.3/24

LABEL maintainer="Jonas Lehmann"

RUN		apk update && apk upgrade --update-cache && \
		apk add --no-cache bash vim curl wget findutils openresolv && \
		apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing wireguard-go 
	
ADD		https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64-installer /tmp/
RUN		/bin/chmod +x /tmp/s6-overlay-amd64-installer && /tmp/s6-overlay-amd64-installer / && /bin/rm -f /tmp/s6-overlay-amd64-installer

COPY	files/ /

ENTRYPOINT ["/init"]

