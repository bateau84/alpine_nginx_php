#!/bin/bash
set -e
set -x

## Install nginx pkg
apk --no-cache add nginx

## Copy default nginx config
cp /build/services/nginx/nginx.conf /etc/nginx/nginx.conf

## Create web dir
mkdir -p /usr/share/nginx/www

# Copy runit script
mkdir -p /etc/service/nginx
cp /build/services/nginx/nginx.runit /etc/service/nginx/run
