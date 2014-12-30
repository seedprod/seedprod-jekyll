#!/usr/bin/env bash
rsync -avz --delete --size-only _site/ root@104.236.30.213:/var/www/html
