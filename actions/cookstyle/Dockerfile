FROM ruby:2.6.5-alpine

LABEL "com.github.actions.name"="cookstyle"
LABEL "com.github.actions.description"="Provides linting and fixes for Chef cookbooks using cookstyle"
LABEL "com.github.actions.icon"="user-check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/sunjon/actions"
LABEL "homepage"="https://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

RUN apk --no-cache add \
  bash=~5 \
  gcc=~8.3 \
  libc-dev=~0.7 \
  make=~4.2

RUN gem install cookstyle

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
