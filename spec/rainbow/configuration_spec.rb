# frozen_string_literal: true

RSpec.describe Rainbow::Configuration do
  subject(:configuration) { described_class.new }

  describe "#initialize" do
    it "initializes with empty custom_colors hash" do
      expect(configuration.custom_colors).to eq({})
    end

    it "initializes with empty custom_components array" do
      expect(configuration.custom_components).to eq([])
    end
  end

  describe "#custom_colors" do
    it "can be set" do
      configuration.custom_colors = { primary: "#0ea5e9" }
      expect(configuration.custom_colors).to eq({ primary: "#0ea5e9" })
    end
  end

  describe "#custom_components" do
    it "can be set" do
      configuration.custom_components = ["button", "card"]
      expect(configuration.custom_components).to eq(["button", "card"])
    end
  end
end
