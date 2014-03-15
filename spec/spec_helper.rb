require 'bundler/setup'
Bundler.setup

class Rails
  class << self
    attr_accessor :root
  end
end

RSpec.configure do |config|
end

