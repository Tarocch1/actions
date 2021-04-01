set -e

_TEMP='.temp.github-actions-push'
_BRANCH_OPTION=''

if [ -n ${INPUT_BRANCH} ]
then
  _BRANCH_OPTION="-b ${INPUT_BRANCH}"
fi

REMOTE_REPO="https://${GITHUB_ACTOR}:${INPUT_TOKEN}@github.com/${INPUT_REPOSITORY}.git"

git clone --depth 1 ${_BRANCH_OPTION} ${REMOTE_REPO} ${_TEMP}
