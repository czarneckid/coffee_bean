# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'coffee_bean/version'

Gem::Specification.new do |s|
  s.name        = "coffee_bean"
  s.version     = CoffeeBean::VERSION
  s.authors     = ["David Czarnecki"]
  s.email       = ["me@davidczarnecki.com"]
  s.homepage    = "https://github.com/czarneckid/coffee_bean"
  s.summary     = %q{A ruby gem for kickstarting a CoffeeScript project}
  s.description = %q{A ruby gem for kickstarting a CoffeeScript project}

  s.rubyforge_project = "coffee_bean"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('thor')

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
end
