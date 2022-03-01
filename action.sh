#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

echo $INPUT_CLIENTID
echo $INPUT_CLIENTSECRET
echo $INPUT_MODULEDIR
echo $INPUT_VERSION

# Log in
stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET

# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR