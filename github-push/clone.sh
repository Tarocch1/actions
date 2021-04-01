set -e

_TEMP='.temp.github-actions-push'
_BRANCH_OPTION=''
REPOSITORY=${INPUT_REPOSITORY:-$GITHUB_REPOSITORY}

if [ -z "${INPUT_GITHUB_TOKEN}" ]
then
  echo 'Missing input "github_token".'
  exit 1;
fi

if [ -n ${INPUT_BRANCH} ]
then
  _BRANCH_OPTION="-b ${INPUT_BRANCH}"
fi

REMOTE_REPO="https://${GITHUB_ACTOR}:${INPUT_GITHUB_TOKEN}@github.com/${REPOSITORY}.git"

git clone --depth 1 ${_BRANCH_OPTION} ${REMOTE_REPO} ${_TEMP}
