#!/bin/bash

set -e

echo Using CLI version: $(stacc --version)

# Inputs
CLIENT_ID=${INPUT_CLIENTID:?'Client ID input missing.'}
CLIENT_SECRET=${INPUT_CLIENTSECRET:?'Client secret input missing.'}
VERSION=${INPUT_VERSION:?'Version input missing.'}

# Log in
stacc login -u "$CLIENT_ID" -p "$CLIENT_SECRET"

# Publish artifacts
stacc publish --version $VERSION $INPUT_MODULEDIR
