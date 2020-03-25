require_relative 'test_helper'

# DataErrorIntTest.
# @abstract
#   Tests the DataError interface.
class DataErrorIntTest < Minitest::Test

  # test_conf_doc_f_ex().
  # @abstract
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and
  #   README.md files exist.
  def test_conf_doc_f_ex()
    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  #   version.rb defined a version number.
  def test_that_it_has_a_version_number()
    refute_nil ::DataErrorInt::VERSION
  end

  # setup().
  # @abstract:
  #   Set fixtures.
  def setup()
    @plain = DataErrorInt.new()
  end

  # test_constants_declared().
  # @abstract
  #   DEFAULT_MESSAGE and ACCEPTABLE_TYPES were defined.
  def test_constants_declared()
    refute_nil(::DataErrorInt::ACCEPTABLE_TYPES)
    refute_nil(::DataErrorInt::DEFAULT_MESSAGE)
  end

  # test_methods_declared().
  # @abstract
  #   The initialize, message, and message= methods were declared.
  def test_methods_declared()
    assert_respond_to(DataErrorInt, 'new')
    assert_respond_to(@plain, 'message')
    assert_includes(@plain.private_methods(), :message=)
  end

  # teardown().
  # @abstract
  #   Cleans memory.
  def teardown()
  end

end
