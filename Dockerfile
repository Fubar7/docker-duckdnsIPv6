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

# environment settings
# s6-overlay is need for serveral useage. In this docker it is used for:
#      - the s6-setuidgid to run as root
#      - tasks for initialization are in etc/cont-init.d
 ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2


# add local files
COPY root/ /
