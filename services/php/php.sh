#!/bin/bash
set -e
set -x

apk --no-cache add php5 php5-common php5-fpm php5-json php5-mysqli

## Copy runit file
mkdir -p /etc/service/php
cp /build/services/php/php.runit /etc/service/php/run

## Copy php-fpm.conf
cp /build/services/php/php-fpm.conf /etc/php5/php-fpm.conf

## Copy php.ini
cp /build/services/php/php.ini /etc/php5/php.ini
