# before
FROM stacc.azurecr.io/cli:0.5.26
# after

RUN apk update && apk add --no-cache bash nodejs npm yarn

RUN addgroup -S cli && adduser -S cli -G cli
USER cli

WORKDIR /home/cli

COPY --chown=cli action.sh action.sh
RUN chmod 744 action.sh

ENTRYPOINT [ "/home/cli/action.sh" ]
