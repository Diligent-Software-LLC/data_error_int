require 'test_helper'

class DataErrorTest < Minitest::Test

  # setup().
  # @abstract:
  # Set fixtures.
  def setup()
    @plain_fixture       = DataError.new()
    @data_error_constant = DataError
    @acceptable_types    = DataError::ACCEPTABLE_CORE_TYPES
    @default_message     = DataError::DEFAULT_MESSAGE
    @interface           = DataError::INTERFACE
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  # The gem defined a version number.
  def test_that_it_has_a_version_number()
    refute_nil ::DataError::VERSION
  end

  # test_responds_to_acceptable?().
  # @abstract:
  # The interface declares a class method acceptable?().
  def test_responds_to_acceptable?()
    responds = @data_error_constant.respond_to?(:acceptable?)
    assert(responds)
  end

  # test_responds_to_new().
  # @abstract:
  # The constructor was declared.
  def test_responds_to_new()
    response = @data_error_constant.new('test')
    assert_instance_of(DataError, response)
  end

  # test_responds_to_message().
  # @abstract:
  # The message attribute getter was declared.
  def test_responds_to_message()
    responds = @plain_fixture.respond_to?(:message)
    assert(responds)
  end

  # test_responds_to_raise().
  # @abstract:
  # The exception raising method was declared.
  def test_responds_to_raise()
    responds = @plain_fixture.respond_to?(:raise_exception)
    assert(responds)
  end

  # test_acceptable_types_declared().
  # @abstract:
  # The ACCEPTABLE_CORE_TYPES constant was declared.
  def test_acceptable_types_declared()
    refute_nil(@acceptable_types)
  end

  # test_acceptable_types().
  # @abstract:
  # The acceptable types are Complex, Float, Integer, Rational, String,
  # Bignum, Fixnum, NilClass, Symbol, and Time.
  def test_acceptable_types()

    assert_includes(@acceptable_types, 'Numeric')
    assert_includes(@acceptable_types, 'FalseClass')
    assert_includes(@acceptable_types, 'TrueClass')
    assert_includes(@acceptable_types, 'Symbol')
    assert_includes(@acceptable_types, 'String')
    assert_includes(@acceptable_types, 'Time')

  end

  # test_default_message_declared().
  # @abstract
  # The DEFAULT_MESSAGE constant was declared.
  def test_default_message_declared()
    assert(@data_error_constant.const_defined?('DEFAULT_MESSAGE'))
  end

  # test_interface_was_declared().
  # @abstract
  # INTERFACE was declared.
  def test_interface_was_declared()
    assert(@data_error_constant.const_defined?('INTERFACE'))
  end

  # test_interface_is_class().
  # @abstract
  # The interface constant is DataError.
  def test_interface_is_class()
    assert_same(@interface, @data_error_constant)
  end

end
