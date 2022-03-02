# #!usr/bin/bash bash
# set -e

# echo Using CLI version: $(stacc --version)

# # Log in
# stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET

# # Publish artifacts
# stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR


#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"