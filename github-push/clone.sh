#!/bin/bash

set -e

_TEMP='.temp.github-actions-push'

if [ -n "${INPUT_BRANCH}" ]
then
  _BRANCH_OPTION="-b ${INPUT_BRANCH}"
else
  _BRANCH_OPTION=''
fi

_REMOTE_REPO="https://${GITHUB_ACTOR}:${INPUT_TOKEN}@github.com/${INPUT_REPOSITORY}.git"

git clone --depth 1 ${_BRANCH_OPTION} ${_REMOTE_REPO} ${_TEMP}
