module Palooza02
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      def copy_initializer
        template "initializer.rb", "config/initializers/palooza02.rb"
      end

      def add_routes
        route 'mount Palooza02::Engine => "/paloozas", as: "paloozas"'
      end
    end
  end
end
