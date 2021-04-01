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
  date=$(date -u)
  echo 'Start to commit and push.'
  git commit -m "deploy: 🤖 ${date} ${GITHUB_SHA}"
  git push
else
  echo 'There are no change, exit.'
fi
