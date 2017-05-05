$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_sample/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_sample"
  s.version     = SimpleSample::VERSION
  s.authors     = ["Kevin Rocker"]
  s.email       = ["kevin.j.rocker@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SimpleSample."
  s.description = "TODO: Description of SimpleSample."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.0"

  s.add_development_dependency "sqlite3"
end
