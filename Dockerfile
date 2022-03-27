#select base image
FROM alpine:latest

#
LABEL Name=dockerduckdnsipv6 Version=0.0.1
LABEL maintainer="fubar7 <mail.fub@yahoo.com>"


#Install updates für alpine
# --no cache to keep the image small
RUN \
  echo "**** install packages for alpine image ****" && \
  apk add --no-cache \
  curl

# environment settings - optional
 ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2


# add local files
COPY root/ /
