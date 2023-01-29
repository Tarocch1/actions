FROM alpine

WORKDIR /opt/project

COPY entrypoint.sh .

RUN set -e \
  chmod 755 /opt/project/entrypoint.sh \
  apk --update add git-crypt git-lfs

ENTRYPOINT ["/opt/project/entrypoint.sh"]
