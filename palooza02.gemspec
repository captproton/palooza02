require_relative "lib/palooza02/version"

Gem::Specification.new do |spec|
  spec.name        = "palooza02"
  spec.version     = Palooza02::VERSION
  spec.authors     = ["captproton"]
  spec.email       = ["carl@wdwhub.net"]
  spec.homepage    = "https://github.com/captproton/palooza02"
  spec.summary     = "A Rails engine to create and manage paloozas, similar to blog posts."
  spec.description = "Palooza02 is a Rails engine that allows users to create, read, update, and delete paloozas, which are similar to blog posts. It provides a simple interface to manage paloozas within a Rails application."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/captproton/palooza02"
  spec.metadata["changelog_uri"] = "https://github.com/captproton/palooza02/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.1"
  spec.add_dependency "acts_as_tenant"

  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "factory_bot_rails"
end
