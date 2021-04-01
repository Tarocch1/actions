# GitHub Push

Push a directory to github.

## Usage

```yml
steps:
  - uses: Tarocch1/actions/github-push@main
    with:
      branch: gh-pages
      directory: dist
```

### Inputs

| name       | type    | required | default                    | description                              |
| ---------- | ------- | -------- | -------------------------- | ---------------------------------------- |
| token      | string  | false    | `${{ github.token }}`      | Token for the repo.                      |
| repository | string  | false    | `${{ github.repository }}` | Repository name to push.                 |
| branch     | string  | false    | Github default branch.     | Destination branch to push.              |
| directory  | string  | true     |                            | Directory to push.                       |
| sha        | boolean | false    | `true`                     | Whether to add sha at the end of commit. |
