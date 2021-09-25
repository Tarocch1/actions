set -e

if [ ! -f "/usr/local/bin/ossutil64" ]; then
  wget -P /usr/local/bin http://gosspublic.alicdn.com/ossutil/1.7.7/ossutil64
  chmod 755 /usr/local/bin/ossutil64
fi

ossutil64 config -e ${INPUT_REGION} -i ${INPUT_KEYID} -k ${INPUT_SECRET}
ossutil64 ${INPUT_ARGS}
