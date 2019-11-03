#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
  # shellcheck -type f -name '*.sh'
  fd --exclude ".git" --extension sh --exec shellcheck {}
}

_lint_action "${@}"
