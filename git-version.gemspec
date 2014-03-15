# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "git-version/version"

Gem::Specification.new do |s|
  s.name        = "git-version"
  s.version     = GitVersion::VERSION
  s.authors     = ["Darrin Holst"]
  s.email       = ["darrinholst@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Add current git commit as a rails endpoint}
  s.description = %q{Add current git commit hash as a rails endpoint bound to /version}

  s.rubyforge_project = "git-version"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
