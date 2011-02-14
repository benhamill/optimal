# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "optimal/version"

Gem::Specification.new do |s|
  s.name        = "optimal"
  s.version     = Optimal::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mando Escamilla", 'Ben Hamill']
  s.email       = ["no."]
  s.homepage    = "http://rubygems.org/gems/optimal"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "optimal"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rspec'
end
