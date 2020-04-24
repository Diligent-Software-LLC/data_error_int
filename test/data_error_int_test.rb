require_relative 'test_helper'

# DataErrorIntTest.
# @class_description
#   Tests the DataError interface.
class DataErrorIntTest < Minitest::Test

  # Constants
  CLASS = DataErrorInt

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   version.rb defined a version number.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
    @plain = CLASS.new()
  end

  # test_constants_declared().
  # @description
  #   DEFAULT_MESSAGE was defined.
  def test_constants_declared()
    refute_nil(CLASS::DEFAULT_MESSAGE)
  end

  # test_methods_declared().
  # @description
  #   The initialize, message, and message= methods were declared.
  def test_methods_declared()

    assert_respond_to(CLASS, 'new')
    assert_respond_to(@plain, 'message')
    assert_includes(@plain.private_methods(), :message=)

  end

  # teardown().
  # @description
  #   Cleans memory.
  def teardown()
  end

end
