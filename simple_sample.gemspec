$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_sample/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_sample"
  s.version     = SimpleSample::VERSION
  s.authors     = ["Kevin Rocker"]
  s.email       = ["kevin.j.rocker@gmail.com"]
  s.homepage    = "https://kevinrocker.com"
  s.summary     = "Extend ActiveRecord with .sample"
  s.description = "Add a .sample method to all ActiveRecord models"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.0"

  s.add_development_dependency "sqlite3"
end
