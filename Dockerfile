FROM alpine:3.15

RUN apk update && apk add --no-cache bash nodejs npm yarn curl jq
RUN export STACC_CLI_VERSION=$(curl "https://api.github.com/repos/stacc/cli-next/releases/latest" --silent | jq .tag_name -r); \
  curl -sSLf https://github.com/stacc/cli-next/releases/download/$STACC_CLI_VERSION/stacc_${STACC_CLI_VERSION:1}_Linux_x86_64.tar.gz -o stacc-cli.tar.gz && \
  tar -xzf stacc-cli.tar.gz && \
  chmod +x stacc && \
  mv stacc /usr/local/bin/stacc

WORKDIR /home/cli

COPY action.sh action.sh

ENTRYPOINT [ "/home/cli/action.sh" ]
