#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
  shellcheck -f checkstyle ${INPUT_SHELLCHECK_FLAGS:-'--external-sources'} $(find "${INPUT_PATH:-'.'}" -not -path "${INPUT_EXCLUDE}" -type f -name "${INPUT_PATTERN:-'*.sh'}") \
  | reviewdog -f="checkstyle" -name="shellcheck" -reporter=github-pr-check -level="${INPUT_LEVEL}"
}

_lint_action "${@}"
