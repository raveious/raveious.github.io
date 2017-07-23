#!/bin/bash
set -e

#cd /site

git clone --depth 1 https://github.com/raveious/raveious.github.io.git /site

bundle install

exec "$@"
