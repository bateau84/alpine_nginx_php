#!/bin/bash
set -e
set -x

## Install nginx
/build/services/nginx/nginx.sh

## Install php
/build/services/php/php.sh
