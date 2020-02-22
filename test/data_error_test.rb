require 'test_helper'

class DataErrorTest < Minitest::Test

  # setup().
  # @abstract:
  # Set fixtures.
  def setup()
    @plain_fixture       = DataError.new()
    @data_error_constant = DataError
    @acceptable_types    = DataError::ACCEPTABLE_CORE_TYPES
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

    assert(@acceptable_types.include?(:Complex))
    assert(@acceptable_types.include?(:Float))
    assert(@acceptable_types.include?(:Integer))
    assert(@acceptable_types.include?(:Rational))
    assert(@acceptable_types.include?(:String))
    assert(@acceptable_types.include?(:Bignum))
    assert(@acceptable_types.include?(:Fixnum))
    assert(@acceptable_types.include?(:NilClass))
    assert(@acceptable_types.include?(:Symbol))
    assert(@acceptable_types.include?(:Time))

  end

end
