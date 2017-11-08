# AD

A wrapper around Ruby's net-ldap library to ease authentication and record finding

## Installation

Add this line to your application's Gemfile:

```ruby
  gem "ad", "~> 1.0.0"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ad

## Development

Install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/overview/)

Install dependecies with:

```bash
  docker-compose run app bundler install
```

Run tests with:
```bash
  docker-compose run app bin/rake
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/krists/ad.
