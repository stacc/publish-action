#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

export STACC_CONFIG=$PWD/.staccrc
# Log in
whoami
stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET
echo "------------------"
stat $STACC_CONFIG
echo "------------------"
ls -l $STACC_CONFIG

# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR
