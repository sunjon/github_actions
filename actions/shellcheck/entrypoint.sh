#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
  # Use fd (https://github.com/sharkdp/fd) instead of the default find
  fd --exclude ".git" --type f --extension sh . --exec shellcheck -a {} +
}

_lint_action "${@}"
