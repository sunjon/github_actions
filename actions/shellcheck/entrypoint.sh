#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
  shellcheck -type f -name '*.sh' -f json $(find '.') \
    jq -r '.[] | "\(.file):\(.line):\(.column):\(.level):\(.message) [SC\(.code)](https://github.com/koalaman/shellcheck/wiki/SC\(.code))"' \
    | reviewdog -efm="%f:%l:%c:%t%*[^:]:%m" -name="shellcheck" -reporter=github-pr-review -level="${INPUT_LEVEL}"
}

_lint_action "${@}"
