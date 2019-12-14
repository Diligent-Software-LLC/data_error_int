# DataError [![Gem Version](https://badge.fury.io/rb/data_error.svg)](https://badge.fury.io/rb/data_error) ![Gem](https://img.shields.io/gem/dt/data_error)
Defines a DataError exception class interface, subclassing ArgumentTypeError. 
There are five method signatures. Four signatures are `public`, and one is 
`private`. One `public` signature is also a class method.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_error', '~> 1.1.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_error -v 1.1.0

## Usage
There are five total method signatures. Four are instance signatures, and one 
is a class signature. Four signatures are `public`, and one is `private`.

### Public methods
The four public signatures are `self.acceptable?(argument_value)`, the 
constructor, `message()`, and `raise_exception(argument_type)`.

#### `self.acceptable?(argument_value)`
Class method. Verifies an object is an acceptable data type. Returns true in 
the case the argument is acceptable data, and false otherwise.

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
