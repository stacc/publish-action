#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

# Log in
stacc login -u $CLIENT_ID -p $CLIENT_SECRET

# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR