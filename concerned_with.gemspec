# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "concerned_with"
  s.version     = '0.0.1'
  s.authors     = ["Andresbravog"]
  s.email       = ["andresbravog@gmail.com"]
  s.homepage    = "http://github.com/andresbravog/concerned_with"
  s.summary     = %q{Concern pattern for rails 3.2}
  s.description = %q{Concern pattern for ralls 3 (3.2.13 supported).}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'actionmailer', '~> 3.2.13'
  s.add_dependency 'activerecord', '~> 3.2.13'
  s.add_development_dependency 'rspec', '~> 2.6.0'
  s.add_development_dependency 'sqlite3', '~> 1.3.4'

end
