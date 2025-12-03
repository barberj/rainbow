# frozen_string_literal: true

module Rainbow
  class Configuration
    attr_accessor :custom_colors, :custom_components

    def initialize
      @custom_colors = {}
      @custom_components = []
    end
  end
end
