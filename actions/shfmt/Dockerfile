FROM mvdan/shfmt:v2.6.3 as shfmt
FROM alpine:3.8

LABEL "com.github.actions.name"="shfmt"
LABEL "com.github.actions.description"="Provides linting and fixes using shfmt"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="http://github.com/sunjon/actions"
LABEL "homepage"="http://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

COPY --from=shfmt /bin/shfmt /bin/shfmt

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
