#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

export STACC_CONFIG=$PWD/.staccrc
# Log in
stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET
chown -R 1001:1001 $STACC_CONFIG
# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR
