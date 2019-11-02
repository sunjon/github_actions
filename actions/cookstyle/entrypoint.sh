#!/bin/bash

set -euo pipefail

# shellcheck disable=SC1091
source /lib.sh

fix() {
	cookstyle --safe-auto-correct
}

lint() {
	cookstyle
}

_lint_and_fix_action cookstyle "${@}"
