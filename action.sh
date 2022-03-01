#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

# Parameters
CLIENT_ID=${clientId:?'clientId variable missing.'}
CLIENT_SECRET=${clientSecret:?'clientSecret variable missing.'}
VERSION=${version:?'version variable missing.'}

# Log in
stacc login -u $CLIENT_ID -p $CLIENT_SECRET

# Publish artifacts
stacc publish --version $VERSION $moduleDir