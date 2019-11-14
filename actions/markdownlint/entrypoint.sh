#!/bin/sh

cd "$GITHUB_WORKSPACE"

export REVIEWDOG_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"
mdl . \
  | reviewdog -efm="%f:%l:%c: %m" -name="markdownlint" -reporter=github-pr-check -level="${INPUT_LEVEL}"
