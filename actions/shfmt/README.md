# shfmt action

## Validations on Push

This actions will check the formatting of the shell in the project, using
[mvdan/sh](https://github.com/mvdan/sh/)

## Fixes on Pull Request review

This action provides automated fixes using Pull Request review comments.

If the comment starts with `fix $action_name` or `fix shfmt`, a new commit will
be added to the branch with the automated fixes applied.

**Supports**: autofix on push

## Example workflow

```hcl
workflow "on push" {
  on = "push"
  resolves = ["shfmt"]
}

# Used for fix on review
# Don't enable if you plan using autofix on push
# Or there might be race conditions
workflow "on review" {
  resolves = ["shfmt"]
  on = "pull_request_review"
}

action "shfmt" {
  uses = "bltavares/actions/shfmt@master"
  # Enable autofix on push
  # args = ["autofix"]
  # Used for pushing changes for `fix` comments on review
  secrets = ["GITHUB_TOKEN"]
}
```

## Environment Variables

* `SHFMT_ARGS` Additional command-line parameters passed to shfmt
