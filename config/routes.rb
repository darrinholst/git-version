GitVersion::Engine.routes.draw do
  root :to => proc { |env|
    version = ENV['COMMIT_HASH'] || `git rev-parse HEAD`
    [200, {'Content-Type' => 'text/plain'}, [version]]
  }
end

Rails.application.routes.draw do
  mount GitVersion::Engine => "/version"
end

