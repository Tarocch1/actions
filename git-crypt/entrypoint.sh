#!/usr/bin/env sh

set -e

git config --global --add safe.directory /github/workspace

echo "$GIT_CRYPT_KEY" | base64 -d > ./git-crypt-key

git-crypt unlock ./git-crypt-key

rm ./git-crypt-key
