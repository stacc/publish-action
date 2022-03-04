FROM staccas/cli:0.6.12

COPY action.sh action.sh

ENTRYPOINT [ "sh", "action.sh" ]
