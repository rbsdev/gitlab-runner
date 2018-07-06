#!/bin/bash

GITLAB_TOKEN=${GITLAB_TOKEN:-}
GITLAB_URL=${GITLAB_URL:-"https://$GITLAB_SERVER"}
COMMA_SEPARATED_TAGS=${COMMA_SEPARATED_TAGS:-docker}

gitlab-runner unregister --all-runners

gitlab-runner register \
  --docker-disable-cache \
  --docker-volumes /var/run/docker.sock:/var/run/docker.sock \
  --non-interactive \
  --executor "docker" \
  --env "GIT_SSL_NO_VERIFY=${GIT_SSL_NO_VERIFY}" \
  --docker-image alpine \
  --url ${GITLAB_URL} \
  --registration-token ${GITLAB_TOKEN} \
  --tag-list "${COMMA_SEPARATED_TAGS}" \
  --run-untagged \
  --locked="false"
