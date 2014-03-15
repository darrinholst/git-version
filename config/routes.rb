GitVersion::Engine.routes.draw do
  root :to => proc {|env| [200, {'Content-Type' => 'text/plain'}, [GitVersion::Finder.new.find]]}
end

Rails.application.routes.draw do
  mount GitVersion::Engine => "/version"
end

