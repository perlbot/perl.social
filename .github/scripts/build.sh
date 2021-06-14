#!/usr/bin/env bash

echo Checking event \[${GITHUB_EVENT_NAME}\] and \[${GITHUB_BASE_REF} == ${SITE_BRANCH} \]

if [[ ${GITHUB_EVENT_NAME} == "pull_request" && ${GITHUB_BASE_REF} == ${SITE_BRANCH} ]]; then
  echo Detected pull request for pages, doing test build
  cd site/
  statocles build
else
  echo Not a pull request for website not testing builds
fi
