#!/bin/bash

set -e

_TEMP='.temp.github-actions-push'

if [ -z "${INPUT_DIRECTORY}" ]
then
  echo 'Missing input "directory".'
  exit 1;
fi

cp -r ${_TEMP}/.git ${INPUT_DIRECTORY}/
cd ${INPUT_DIRECTORY}

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

_STATUS=$(git status -s)

if [ -n "${_STATUS}" ]
then
  git add -A

  _DATE=$(date -u)

  if ${INPUT_SHA}
  then
    _SHA=" ${GITHUB_SHA}"
  else
    _SHA=''
  fi

  echo 'Start to commit and push.'
  git commit -m "deploy: 🤖 ${_DATE}${_SHA}"
  git push
else
  echo 'There are no change, exit.'
fi
