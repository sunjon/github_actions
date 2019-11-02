FROM garethr/kubeval:0.7.3 as kubeval
FROM alpine:3.8

LABEL "com.github.actions.name"="kubeval"
LABEL "com.github.actions.description"="Provides k8s linting using kubeval"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/sunjon/actions"
LABEL "homepage"="http://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

COPY --from=kubeval /kubeval /bin/kubeval

RUN apk --update add \
  curl~=7 \
  jq~=1.6 \
  bash~=4 \
  git~=2

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
