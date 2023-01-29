# Git Crypt

Unlock git-crypt files.

## Usage

```yml
steps:
  - uses: Tarocch1/actions/git-crypt@main
    env:
      GIT_CRYPT_KEY: ${{ secrets.GIT_CRYPT_KEY }}
```

### Secrets

- `GIT_CRYPT_KEY` **Required** Base64 encoded git-crypt key file.

  ```sh
  git-crypt export-key ./tmp-key && cat ./tmp-key | base64 && rm ./tmp-key
  ```
