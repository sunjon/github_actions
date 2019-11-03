FROM koalaman/shellcheck-alpine:stable

LABEL "com.github.actions.name"="shellcheck"
LABEL "com.github.actions.description"="Provides linting using shellcheck"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/sunjon/github_actions"
LABEL "homepage"="https://github.com/sunjon/github_actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add \
  bash~=5 \
  fd@testing~=7.4 && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
