#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

# Log in
stacc login -u $2 -p $3

# Publish artifacts
stacc publish --version $1 $4