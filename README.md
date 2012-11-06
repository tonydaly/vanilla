# Vanilla

A Ruby interface to the Vanilla Forums API.

WIP

## Installation

Add this line to your application's Gemfile:

    gem 'vanilla'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vanilla

## Usage

### Configuration

The Vanilla Forums API requires that all API calls should be made against your forum’s ‘Vanilla URL’, for example: https://mycompany.vanillaforums.com.

To setup your global configuration you can pass options as a block to the `Vanilla.configure` method.

```ruby
Twitter.configure do |config|
  config.endpoint = "https://mycompany.vanillaforums.com"
  config.access_token = YOUR_ACCESS_TOKEN
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
