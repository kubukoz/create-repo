#!/usr/bin/env bash

readonly SCRIPT_ROOT=$(dirname "$0")

source "${SCRIPT_ROOT}/token.secret"

readonly REPO_NAME=\"$1\"
readonly DATA=$(echo '{"name":' ${REPO_NAME}', "private": "true"}')

curl -X POST "https://api.github.com/user/repos?access_token=${TOKEN}" -d "${DATA}"
