require 'grit'

GitVersion::Engine.routes.draw do
  root :to => proc {|env| [200, {}, [Grit::Repo.new(Rails.root + '.git').commits.first.id[0...6]]]}
end

Rails.application.routes.draw do
  mount GitVersion::Engine => "/version"
end

