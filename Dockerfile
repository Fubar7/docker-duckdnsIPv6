#select base image
#FROM alpine:latest
FROM ghcr.io/linuxserver/baseimage-alpine:3.13

#
LABEL Name=dockerduckdnsipv6 Version=1.0
LABEL maintainer="fubar7 <mail.fub@yahoo.com>"



#Install updates für alpine
# --no cache to keep the image small
RUN \
  echo "**** install packages for alpine image ****" && \
  apk add --no-cache \
  curl

# environment settings
# S6-overlay is included in the image from linuxserver/Baseimage

 ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2


# add local files
COPY root/ /
