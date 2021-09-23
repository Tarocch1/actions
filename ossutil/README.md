# GitHub Push

使用阿里云 ossutil.

## Usage

```yml
steps:
  - uses: Tarocch1/actions/ossutil@main
    with:
      keyid: ${{ secrets.ALIYUN_OSS_KEYID }}
      secret: ${{ secrets.ALIYUN_OSS_SECRET }}
      args: ls
```

### Inputs

| name   | type   | required | default                      | description       |
| ------ | ------ | -------- | ---------------------------- | ----------------- |
| keyid  | string | true     |                              | Aliyun keyID.     |
| secret | string | true     |                              | Aliyun secret.    |
| region | string | false    | oss-cn-hongkong.aliyuncs.com | Aliyun region.    |
| args   | string | true     |                              | Args for ossutil. |
