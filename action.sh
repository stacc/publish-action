#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

# Parameters
CLIENT_ID=${CLIENT_ID:?'CLIENT_ID variable missing.'}
CLIENT_SECRET=${CLIENT_SECRET:?'CLIENT_SECRET variable missing.'}
VERSION=${VERSION:?'VERSION variable missing.'}

# Log in
stacc login -u $CLIENT_ID -p $CLIENT_SECRET

# Publish artifacts
stacc publish --version $VERSION .