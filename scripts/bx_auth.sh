#!/bin/bash -e

BLUEMIX_ORG="Developer Advocacy"
BLUEMIX_SPACE="dev"

if [[ -z "$BLUEMIX_AUTH" ]]; then
    echo -e "\033[0;33mFork detected; not authenticating to Bluemix.\033[0m"
    exit 0
fi

echo "Authenticating to Bluemix"
bx login -a https://api.ng.bluemix.net

echo "Targeting Bluemix org and space"
bx target -o "$BLUEMIX_ORG" -s "$BLUEMIX_SPACE"

echo "Initializing Bluemix Container Service"
bx cs init
