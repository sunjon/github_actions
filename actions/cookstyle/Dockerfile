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
  make=~4.2

# RUN apt-get update -qq && apt-get install -qqy --no-install-recommends \
#   curl=7.52* \
#   jq=1.5* \
#   bash=4.4* \
#   git=1:2.11* \
#   make=4.1* \
#   gcc=4:6.3* \
#   && rm -rf /var/lib/apt/lists/*

RUN gem install cookstyle

COPY lib.sh /lib.sh
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
