FROM docker:20.10.3

LABEL "maintainer"="jill"
LABEL "repository"="jill-repo-test"

COPY docker-build.sh /docker-build.sh
COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache bash grep jq

ENTRYPOINT ["/entrypoint.sh"]
