$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "bird_migration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bird_migration"
  s.version     = BirdMigration::VERSION
  s.authors     = ["rafael"]
  s.email       = ["skcc321@gmail.com"]
  s.homepage    = "http://github.com"
  s.summary     = "Summary of BirdMigration."
  s.description = "Description of BirdMigration."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_runtime_dependency 'rails', '~> 5.2', '>= 5.2.0'

  s.add_development_dependency "sqlite3", '~> 0'
end
