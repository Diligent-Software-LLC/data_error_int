# DataError [![Gem Version](https://badge.fury.io/rb/data_error.svg)](https://badge.fury.io/rb/data_error) ![Gem](https://img.shields.io/gem/dt/data_error)
Defines a DataError exception class interface, subclassing ArgumentTypeError. 
The class is an Abstract Factory. There are four method signatures. Three 
signatures are `public`, and one is `private`.

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
There are four total method signatures, all instance signatures. Three 
signatures are `public`, and one is `private`.

### Public methods
The three public signatures are the constructor, `message()`, and 
`raise_exception(argument_type)`.

#### `initialize(message = nil)`
The constructor.

#### `message()`
Getter method. Gets and returns the explanation.

#### `raise_exception(argument_type)`
In the case the object is a data type instance, and is an acceptable type, 
raises. Takes an unknown type object.

### Private methods
The `private` method signature is `message=(explanation)`.

#### `message=(explanation)`
Setter method. Sets the message attribute the argued explanation 
String.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, 
run `rake test` to run the tests. You can also run `bin/console` for an 
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at 
https://github.com/scientist8202/data_error. This project is intended to be a 
safe, welcoming space for collaboration, and contributors are expected to 
adhere to the 
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DataError project’s codebases, issue trackers, 
chat rooms and mailing lists is expected to follow the 
[code of conduct](https://github.com/[USERNAME]/data_error/blob/master/CODE_OF_CONDUCT.md).
