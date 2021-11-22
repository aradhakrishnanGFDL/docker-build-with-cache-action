FROM docker:20.10.3

LABEL "maintainer"="aradhakrishnanGFDL, credit repo from which orig is forked"
LABEL "repository"="https://github.com/aradhakrishnanGFDL/docker-build-with-cache-action"

COPY docker-build.sh /docker-build.sh
COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache bash grep jq

ENTRYPOINT ["/entrypoint.sh"]
