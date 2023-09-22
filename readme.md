To reproduce:

1. Install envoy and grpcurl
2. in either broken or working directory, run `bundle exec ruby app.rb -s Puma -p 3000`
3. in another terminal, run `envoy -c envoy.yaml`
4. in a 3rd terminal, run `grpcurl -import-path . -proto example.proto -plaintext -vv -d '{}' localhost:8000 test.Test/Test`
