#!/usr/bin/env bash

set -e

echo Using CLI version: $(stacc --version)

# Inputs
CLIENT_ID=${STACC_CLIENT_ID:?'Client ID input missing.'}
CLIENT_SECRET=${STACC_CLIENT_SECRET:?'Client secret input missing.'}
VERSION=${VERSION:?'Version input missing.'}

# Log in
stacc login -u "$CLIENT_ID" -p "$CLIENT_SECRET"

# Publish artifacts
stacc publish --version $VERSION $MODULE_DIR
