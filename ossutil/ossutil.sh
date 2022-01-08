set -e

ossutil64 config -e ${INPUT_REGION} -i ${INPUT_KEYID} -k ${INPUT_SECRET}
ossutil64 ${INPUT_ARGS}
