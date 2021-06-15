#!/usr/bin/env bash

echo Checking event \[${GITHUB_EVENT_NAME}\] and \[${GITHUB_REF} == ${SITE_BRANCH} \]

if [[ ${GITHUB_EVENT_NAME} == "push" && ${GITHUB_REF} == "refs/heads/${SITE_BRANCH}" ]]; then
  echo Running deploy job
  git stash -u
  mkdir rendered/
  cp -av .git rendered/
  (
  	cd rendered/
	git fetch --all
	git symbolic-ref HEAD refs/heads/${PUBLISH_BRANCH}
	git reset --hard HEAD
	rm -vr *
	git clean -fd
  )
  (cd site/ && statocles deploy)
  (cd rendered/ && git add -A && git commit -m "Update gh-pages: ${GIT_COMMIT_MESSAGE}" && git push --force origin ${PUBLISH_BRANCH} )
else
  echo Not a push to the site branch, not deploying
fi
