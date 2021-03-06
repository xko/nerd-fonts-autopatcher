#!/usr/bin/env bash

set -x 
set -e

[ -n "`git status --porcelain`" ] 

git config user.name || git config user.name "robot"
git config user.email || git config user.email "$GITHUB_ACTOR-the-robot@users.noreply.github.com"

[ -n "$GITHUB_RUN_ID" ]\
    && COMMIT_MSG="$GITHUB_SERVER_URL/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID"\
    || COMMIT_MSG="patched"

git add -A patched
git commit  -m "$COMMIT_MSG"