# Rainbow

A Ruby gem for sharing Tailwind CSS styles and configurations between Rails applications. Rainbow helps you maintain consistent styling across multiple Rails projects by providing a centralized location for your shared Tailwind CSS components, utilities, and theme configurations.

## Features

- 🎨 Share Tailwind CSS styles across multiple Rails applications
- 🔧 Centralized Tailwind configuration management
- 📦 Easy integration with Rails asset pipeline
- 🎯 Organized style layers (base, components, utilities)
- ⚙️ Configurable color palettes and component libraries

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rainbow'
```

And then execute:

```bash
bundle install
```

## Usage

### Basic Setup

1. Import the Rainbow styles in your application's CSS file:

```css
/* app/assets/stylesheets/application.tailwind.css */
@import "rainbow";
```

2. Configure Rainbow in an initializer (optional):

```ruby
# config/initializers/rainbow.rb
Rainbow.configure do |config|
  config.custom_colors = {
    primary: "#0ea5e9",
    secondary: "#8b5cf6"
  }
  config.custom_components = ["button", "card", "form"]
end
```

### Extending Tailwind Configuration

You can extend your application's `tailwind.config.js` with Rainbow's configuration:

```javascript
// tailwind.config.js
const rainbowConfig = require('./node_modules/rainbow/lib/rainbow/tailwind.config.js')

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      ...rainbowConfig.theme.extend
    }
  },
  plugins: [...rainbowConfig.plugins]
}
```

### Custom Styles

Rainbow organizes styles into three layers:

- **Base styles** (`rainbow/_base.css`): Global base styles and resets
- **Components** (`rainbow/_components.css`): Reusable component styles
- **Utilities** (`rainbow/_utilities.css`): Custom utility classes

You can customize these by modifying the files in your gem installation or by creating your own styles that build upon Rainbow's foundation.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/barberj/rainbow.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
