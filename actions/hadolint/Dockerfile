FROM hadolint/hadolint:v1.15.0 as hadolint
FROM alpine:3.8

LABEL "com.github.actions.name"="hadolint"
LABEL "com.github.actions.description"="Provides Dockerfile linting using hadolint"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/sunjon/actions"
LABEL "homepage"="http://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

COPY --from=hadolint /bin/hadolint /bin/hadolint

RUN apk --update add \
  curl~=7 \
  jq~=1.6 \
  bash~=4 \
  git~=2 && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
