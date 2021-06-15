#!/usr/bin/env bash

echo Checking event \[${GITHUB_EVENT_NAME}\] and \[${GITHUB_REF} == ${SITE_BRANCH} \]

if [[ ${GITHUB_EVENT_NAME} == "push" && ${GITHUB_REF} == "refs/heads/${SITE_BRANCH}" ]]; then
  echo Running deploy job
  git stash -u
  cd site/
  statocles build
  statocles deploy
else
  echo Not a push to the site branch, not deploying
fi
