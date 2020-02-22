# DataError [![Gem Version](https://badge.fury.io/rb/data_error.svg)](https://badge.fury.io/rb/data_error) ![Gem](https://img.shields.io/gem/dt/data_error) ![Travis (.com) branch](https://img.shields.io/travis/com/Diligent-Software-LLC/data_error/master)
Defines a DataError exception class interface.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "data_error", "~> 1.1.3"
```

And then execute:

    $ bundle install
    
### Versioning

The gem abides the [Semantic Versioning](https://www.semver.org) system:

"Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make [backwardly] incompatible API changes,
- MINOR version when you add functionality in a backwards compatible manner, and
- PATCH version when you make backwards compatible bug fixes.

Additional labels for pre-release and build metadata are available as
extensions to the MAJOR.MINOR.PATCH format."

**All versions 0.0.x, where x is a natural number, are unstable or incomplete.**

## Usage

### Attributes

- [String] message: the default message explaining a raised exception. 

### Public methods

The four public signatures are `self.acceptable?(unkonwn_argument)`, the 
constructor, `message()`, and `raise_exception(argued_object)`.

#### `self.acceptable?(unknown_argument)`

Class method. Verifies an object is an acceptable data type. Returns true in 
the case the argument is acceptable data, and false otherwise.

#### `initialize(message = nil)`

The constructor. Takes a String argument, message, explaining the default
 message raised in STDERR.

#### `message()`

Getter method. Gets and returns the message.

#### `raise_exception(argued_object)`

In the case the object is an unacceptable data type instance, raises. Takes
 an unknown typed object.

## Development

The source code is available at Github, or through Rubygems.org. Fork and
 clone the repository. The component depends on bundler 2.1.x, where x >= 2
 , so in the case the installed version is different, run `$ bundle update
  --bundler`. Follow the update with `$ bundle install` to install the
remaining dependencies. Modify the "spec.authors" line in the gem
 specification file, and include ones name. When ready, submit a pull request.

## Contributing

Pull requests are welcome on GitHub at 
https://github.com/Diligent-Software-LLC/data_error. This project is intended
 to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

### Code Format

### Code of Conduct

Everyone interacting in the DataError project’s codebases
, issue trackers, chat rooms and mailing lists is expected to follow the
 [code of conduct](https://github.com/Diligent-Software-LLC/data_error/blob/master/CODE_OF_CONDUCT.md).

### Bug reports

### Pull requests

## License

The gem is available as open source under the terms of the 
[MIT License](https://opensource.org/licenses/MIT).
