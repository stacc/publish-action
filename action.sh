#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

export STACC_CONFIG=$PWD/.staccrc
# Log in
stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET

# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR
