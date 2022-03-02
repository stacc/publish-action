FROM alpine:3.15.0

# For now, it's not the latest but w/e let's see if it works.
ENV STACC_CLI_VERSION="v0.6.11"

RUN apk update && apk add --no-cache bash nodejs npm yarn curl
RUN curl -sSLf https://github.com/stacc/cli-next/releases/download/$STACC_CLI_VERSION/stacc_${STACC_CLI_VERSION:1}_Linux_x86_64.tar.gz -o stacc-cli.tar.gz \
  && tar -xzf stacc-cli.tar.gz \
  && chmod +x stacc \
  && mv stacc /usr/local/bin/stacc

RUN addgroup -S cli && adduser -S cli -G cli
USER cli

WORKDIR /home/cli
ENV MODULEDIR $INPUT_MODULEDIR
COPY $MODULEDIR .
COPY --chown=cli action.sh action.sh
RUN chmod 744 action.sh

ENTRYPOINT [ "sh", "/home/cli/action.sh" ]