#!/bin/bash

SERVER=${GITLAB_SERVER:-gitlab.com}
PORT=${GITLAB_PORT:-443}
CERTIFICATE=${CERTIFICATE:-/etc/gitlab-runner/certs/${SERVER}.crt}
TMP_CERTIFICATE=/tmp/${SERVER}.crt

openssl s_client -connect ${SERVER}:${PORT} -showcerts </dev/null 2>/dev/null | sed -e '/-----BEGIN/,/-----END/!d' | tee ${TMP_CERTIFICATE} >/dev/null

# ls -la ${TMP_CERTIFICATE}
mkdir -p $(dirname ${CERTIFICATE})
mv ${TMP_CERTIFICATE} ${CERTIFICATE}

. /register.sh

. /entrypoint "$@"