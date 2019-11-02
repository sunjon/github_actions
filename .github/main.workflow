workflow "on push" {
  on = "push"
  resolves = "linters"
}

action "linters" {
  needs = ["markdownlint", "shellcheck", "shfmt-lint", "rubocop", "kubeval", "hadolint"]
  uses = "actions/bin/sh@master"
      with:
      repo-token: ${{ secrets.GITHUB_TOKEN }}
  args = ["echo Linters ok"]
}

action "pr filter" {
  uses = "actions/bin/filter@master"
  args = "ref refs/pulls/*"
}

action "master filter" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

# Linters
action "bash-lint" {
  uses = "sunjon/actions/bash@master"
}

action "hadolint" {
  uses = "sunjon/actions/hadolint@master"
}

action "kubeval" {
  uses = "sunjon/actions/kubeval@master"
}

action "markdownlint" {
  uses = "sunjon/actions/markdownlint@master"
}

action "rubocop" {
  uses = "sunjon/actions/rubocop@master"
  needs = ["master filter"]
}

action "shellcheck" {
  uses = "sunjon/actions/shellcheck@master"
}

action "shfmt-lint" {
  uses = "sunjon/actions/shfmt@master"
  needs = ["master filter"]
}

action "yamllint" {
  uses = "sunjon/actions/yamllint@master"
}
