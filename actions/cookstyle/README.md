# `cookstyle` action

## Validations on Push

This action will check the formating of Chef cookbook files in the project, using
[cookstyle](https://github.com/chef/cookstyle)

## Fixes on Pull Request review

This action provides automated fixes using Pull Request review comments.

If the comment starts with `fix $action_name` or `fix rubocop`, a new commit will
be added to the branch with the automated fixes applied.

**Supports**: autofix on push

## Example Workflow

```hcl
workflow "on push" {
  on = "push"
  resolves = ["cookstyle"]
}

# Used for fix on review
# Don't enable if you plan using autofix on push
# Or there might be race conditions
workflow "on review" {
  resolves = ["cookstyle"]
  on = "pull_request_review"
}

action "cookstyle" {
  uses = "sunjon/actions/cookstyle@master"
  # Enable autofix on push
  # args = ["autofix"]
  # Used for pushing changes for `fix` comments on review
  secrets = ["GITHUB_TOKEN"]
}
```
