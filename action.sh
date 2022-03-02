#!usr/bin/bash bash
set -e

echo Using CLI version: $(stacc --version)

export STACC_CONFIG=$PWD/.staccrc
# Log in

export INPUT_CLIENTID=service-catalog-admin
export INPUT_CLIENTSECRET=4d37fc99-5082-4dca-889f-a38b28145908
export INPUT_VERSION=1.0.0
export INPUT_MODULEDIR=./module

stacc login -u $INPUT_CLIENTID -p $INPUT_CLIENTSECRET
whoami
echo "------------------"
stat $STACC_CONFIG
echo "------------------"
ls -l $STACC_CONFIG

# Publish artifacts
stacc publish --version $INPUT_VERSION $INPUT_MODULEDIR
