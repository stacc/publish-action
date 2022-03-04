FROM staccas/cli:0.6.12

COPY $INPUT_MODULEDIR .
COPY action.sh action.sh

ENTRYPOINT [ "sh", "action.sh" ]
