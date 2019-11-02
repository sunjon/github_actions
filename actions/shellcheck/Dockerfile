FROM koalaman/shellcheck-alpine:stable

LABEL "com.github.actions.name"="shellcheck"
LABEL "com.github.actions.description"="Provides linting using shellcheck"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/sunjon/github_actions"
LABEL "homepage"="https://github.com/sunjon/github_actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

RUN apk --no-cache add \
  bash~=5 \
  fd
#   curl~=7 \
#   jq~=1.6 \
#   git~=2

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
