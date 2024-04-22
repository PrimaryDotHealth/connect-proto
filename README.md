# connect-proto

## Testing

- `irb -I lib -I lib/connect_proto/build -I lib/extensions`
- `require './lib/primary_connect_proto'`

## Compile

- `brew install protobuf@21`
  - That should install version 3.21.x
 
Make sure you also add the above lines on your `~/.bashrc` or `~/.zshrc`

```bash
export PATH="/opt/homebrew/opt/protobuf@21/bin:$PATH"

# For compilers to find protobuf@21 you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/protobuf@21/lib"
export CPPFLAGS="-I/opt/homebrew/opt/protobuf@21/include"

# For pkg-config to find protobuf@21 you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/protobuf@21/lib/pkgconfig"
```

- Eval the shell so it picks up changes with `. ~/.zshrc` or restart your terminal

- Check that `protoc --version` outputs **libprotoc 3.21.12**

Then, run:

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
