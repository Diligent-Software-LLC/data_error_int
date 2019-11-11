# DataError
Defines a DataError exception class interface, subclassing ArgumentTypeError. The class is an Abstract Factory. There are six method signatures. Three signatures are public, and three are private.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_error'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_error

## Usage
There are six total method signatures, all instance signatures. Three signatures are public, and three are private.

### Public methods
The three public signatures are the constructor, message(), and try(argument_type)

#### initialize(message = nil)
The constructor.

#### message()
Getter method. Gets and returns the explanation.

#### try(argument_type)

### Private methods

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/data_error. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataError project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/data_error/blob/master/CODE_OF_CONDUCT.md).
