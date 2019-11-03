#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
  shellcheck -type f -name '*.sh'
}

_lint_action "${@}"
