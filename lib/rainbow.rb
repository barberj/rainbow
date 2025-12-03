# frozen_string_literal: true

require_relative "rainbow/version"
require_relative "rainbow/engine" if defined?(Rails)
require_relative "rainbow/configuration"

module Rainbow
  class Error < StandardError; end

  class << self
    attr_writer :configuration

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end

    def styles_path
      File.expand_path("../app/assets/stylesheets", __dir__)
    end
  end
end
