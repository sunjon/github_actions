#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

lint() {
	mdl .
}

_lint_action markdownlint "${@}"
