#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
        yamllint "${GITHUB_WORKSPACE}/**/*.yml"
}

fix() {
        yamllint "${GITHUB_WORKSPACE}/**/*.yml --fix"
}

_lint_and_fix_action yamllint "${@}"
