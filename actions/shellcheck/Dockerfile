FROM koalaman/shellcheck-alpine:stable

LABEL "com.github.actions.name"="shellcheck"
LABEL "com.github.actions.description"="Provides linting using shellcheck"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/sunjon/github_actions"
LABEL "homepage"="https://github.com/sunjon/github_actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

RUN apk --update add\
  bash~=5 \
  jq~=1.6 && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ v0.9.13

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
