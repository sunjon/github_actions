# `yamllint` action

## Validations on Push

This actions will check YAML files using
[yamllint](https://github.com/adrienverge/yamllint)

## Fixes on Pull Request review

This action provides automated fixes using Pull Request review comments.

If the comment starts with `fix $action_name` or `fix yamllint`, a new commit will
be added to the branch with the automated fixes applied.

**Supports**: autofix on push

## Example Workflow

```hcl
name: "Lint"

on: [push]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master

      - name: yamllint
        uses: sunjon/github_actions/actions/yamllint@master
```

```hcl
# Used for fix on review
# Don't enable if you plan using autofix on push
# Or there might be race conditions
name: "Fix"

on: [pull_request_review]

jobs:
  lint:
    runs-on: ubuntu-latest
    steps:

      - uses: actions/checkout@master

      - name: yamllint
        uses: sunjon/github_actions/actions/yamllint@master
      # Enable autofix on push
      # args = ["autofix"]
      # Used for pushing changes for `fix` comments on review
      secrets: ${{ secrets.GITHUB_TOKEN }}
}
```
