FROM python:3.7.4-alpine

LABEL version="0.0.1"
LABEL "repository"="http://github.com/sunjon/actions"
LABEL "homepage"="http://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

LABEL "com.github.actions.name"="yamllint"
LABEL "com.github.actions.description"="Provides linting and fixes using yamllint"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"

RUN pip install --quiet --no-cache-dir yamllint

RUN apk --no-cache add \
  curl~=7 \
#   jq~=1.6 \
  bash~=5 \
  # git~=2

ADD lib.sh /lib.sh
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
