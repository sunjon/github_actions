FROM ruby:2.6.5-alpine

LABEL version="0.0.1"
LABEL "repository"="http://github.com/sunjon/actions"
LABEL "homepage"="http://github.com/sunjon/actions"
LABEL "maintainer"="Delta Projects <connect+githubactions@sunjon.com>"

LABEL "com.github.actions.name"="markdownlint"
LABEL "com.github.actions.description"="Provides linting and fixes using markdownlint"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="purple"

RUN apk --no-cache add bash~=5 
RUN gem install mdl

ADD lib.sh /lib.sh
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
