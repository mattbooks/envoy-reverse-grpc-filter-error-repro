require 'sinatra'

post '/*' do
  halt 200, { 'X-Content-Length' => 0, 'Content-Type' => 'application/x-protobuf' }, Rack::BodyProxy.new(['']) { }
end
