# connect-proto

## Testing

- `irb -I lib -I lib/connect_proto/build -I lib/extensions`
- `require './lib/primary_connect_proto'`

## Compile

Install [version `24`](https://github.com/protocolbuffers/protobuf/releases/tag/v24.4) of Protobuffers .

```bash
PROTOC_VERSION=24.4
PROTOC_ZIP=protoc-${PROTOC_VERSION}-osx-x86_64.zip

curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/$PROTOC_ZIP
sudo unzip -o $PROTOC_ZIP -d /usr/local bin/protoc
sudo unzip -o $PROTOC_ZIP -d /usr/local 'include/*'
rm -f $PROTOC_ZIP
```
[_ref_](https://google.github.io/proto-lens/installing-protoc.html)

- Eval the shell so it picks up changes with `. ~/.zshrc` or restart your terminal

- Check that `protoc --version` outputs **libprotoc 3.21.12**

Then, run:

- `bundle exec rake`
- Or `bundle exec rake build:watch`

## Publishing changes

- Update version in `connect_proto/version.rb`
- Update `CHANGELOG.md`
- Push to Github
- Build gem

  ```
  gem build connect_proto.gemspec
  ```

- Publish gem

  ```
  gem push primary_connect_proto-X.X.X.gem
  ```

- Cleanup

  ```
  rm primary_connect_proto-X.X.X.gem
  ```

- Bump version in dependent projects (client, integration testing, connect, health)
