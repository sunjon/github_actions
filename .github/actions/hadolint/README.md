# hadolint action

## Validations on Push

This actions will check the formating of the Dockerfiles in the project, using [hadolint](https://github.com/hadolint/hadolint/)

## Example workflow

```hcl
workflow "on push" {
  on = "push"
  resolves = ["hadolint"]
}

action "hadolint" {
  uses = "sunjon/actions/hadolint@master"
}
```
