FROM python:3.7.4-alpine

LABEL version="0.0.1"
LABEL "repository"="http://github.com/sunjon/actions"
LABEL "homepage"="http://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

LABEL "com.github.actions.name"="yamllint"
LABEL "com.github.actions.description"="Provides linting and fixes using yamllint"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"

RUN apk --update add \
  bash~=5 && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

RUN pip install --disable-pip-version-check --quiet --no-cache-dir yamllint

ADD lib.sh /lib.sh
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
