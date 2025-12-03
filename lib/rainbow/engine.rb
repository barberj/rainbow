# frozen_string_literal: true

require "rails/engine"

module Rainbow
  class Engine < ::Rails::Engine
    isolate_namespace Rainbow

    initializer "rainbow.assets" do |app|
      app.config.assets.paths << root.join("app", "assets", "stylesheets")
    end
  end
end
