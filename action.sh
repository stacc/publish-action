#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

# Log in
stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET

echo "module absolute path" $PWD
echo "module path"  $INPUT_MODULEDIR

# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR
