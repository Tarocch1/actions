# GitHub Push

Push a directory to github.

## Usage

```yml
steps:
  - uses: Tarocch1/actions/github-push@main
    with:
      github_token: ${{ github.token }}
      branch: gh-pages
      directory: dist
```

### Inputs

| name         | type   | required | default                | description                 |
| ------------ | ------ | -------- | ---------------------- | --------------------------- |
| github_token | string | true     |                        | Token for the repo.         |
| repository   | string | false    | `${GITHUB_REPOSITORY}` | Repository name to push.    |
| branch       | string | false    | Github default branch. | Destination branch to push. |
| directory    | string | true     |                        | Directory to push.          |
