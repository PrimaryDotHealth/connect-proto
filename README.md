# connect-proto

## Testing

- `irb -I lib -I lib/connect_proto/build -I lib/extensions`
- `require './lib/primary_connect_proto'`

## Compile

- `brew install protobuf`
  - NOTE: If you already have protobuf installed or plan to install using a different method, please ensure you install version 3.21.x
- `rake`
- Or `rake build:watch`

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
