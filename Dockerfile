FROM staccas/cli:0.6.13

WORKDIR /home/cli
COPY --chown=stacc action.sh action.sh

ENTRYPOINT ["/home/cli/action.sh"]
