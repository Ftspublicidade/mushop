#
# Copyright (c) 2019-2022 Oracle and/or its affiliates. All rights reserved.
# The Universal Permissive License (UPL), Version 1.0
#
ARG version

### Move

###############################
# Webserver container (nginx) #
###############################
FROM --platform=${TARGETPLATFORM:-linux/amd64} docker.io/nginxinc/nginx-unprivileged:1.20-alpine

USER root
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY ./build/ /usr/share/nginx/html


EXPOSE 8080
EXPOSE 8888
