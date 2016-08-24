#!/usr/bin/env bash
rsync -rtzhv --delete --size-only _site/ root@104.236.30.213:/var/www/html
ssh root@104.236.30.213 'chown -R www-data:www-data /var/www/html/'
