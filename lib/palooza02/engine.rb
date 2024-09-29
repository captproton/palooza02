module Palooza02
  class Engine < ::Rails::Engine
    isolate_namespace Palooza02

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end

    initializer "palooza02.assets.precompile" do |app|
      app.config.assets.precompile += %w( palooza02/application.css palooza02/application.js )
    end
  end
end
