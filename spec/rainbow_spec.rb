# frozen_string_literal: true

RSpec.describe Rainbow do
  it "has a version number" do
    expect(Rainbow::VERSION).not_to be nil
  end

  describe ".configuration" do
    it "returns a Configuration instance" do
      expect(Rainbow.configuration).to be_a(Rainbow::Configuration)
    end
  end

  describe ".configure" do
    it "yields the configuration" do
      Rainbow.configure do |config|
        expect(config).to be_a(Rainbow::Configuration)
      end
    end

    it "allows setting custom colors" do
      Rainbow.configure do |config|
        config.custom_colors = { primary: "#0ea5e9" }
      end

      expect(Rainbow.configuration.custom_colors).to eq({ primary: "#0ea5e9" })
    end
  end

  describe ".styles_path" do
    it "returns the path to the stylesheets directory" do
      expect(Rainbow.styles_path).to include("app/assets/stylesheets")
      expect(File.exist?(Rainbow.styles_path)).to be true
    end
  end
end
