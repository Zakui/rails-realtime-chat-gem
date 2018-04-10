$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chat_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chat_engine"
  s.version     = ChatEngine::VERSION
  s.authors     = ["a17100262"]
  s.email       = ["maueezahmed@gmail.com"]
  # s.homepage    = "TODO"
  s.summary     = "A chat engine for real time chat"
  # s.description = "TODO: Description of ChatEngine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "sidekiq"
  s.add_development_dependency "redis"
end
