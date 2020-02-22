# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require 'data_error/version'

# DataError.
# @abstract:
# A DataError interface and Abstract Base Class.
class DataError < ArgumentTypeError

  ACCEPTABLE_CORE_TYPES = [:Complex, :Float, :Integer, :Rational, :String,
                           :Bignum, :Fixnum, :NilClass, :Symbol, :Time].freeze()

  # self.acceptable?(unknown_argument).
  # @abstract:
  # Class method. Verifies an object is an acceptable data type.
  # @param [Object] unknown_argument: an unknown object.
  # @return: true in the case the argument type is an acceptable data type, and
  # false otherwise.
  def self.acceptable?(unknown_argument)
  end

  # initialize(message = nil).
  # @abstract:
  # The constructor.
  # @param [String] message: the message explaining the future raised exception.
  def initialize(message = nil)
  end

  # message().
  # @abstract:
  # Getter method. Gets and returns the explanation.
  # @return: the message explaining the raised exception.
  def message()
  end

  # raise_exception(argued_object).
  # @abstract:
  # In the case the argued object is an unacceptable data type instance, raises.
  # @param [Object] argued_object: an unknown typed object.
  def raise_exception(argued_object)
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. Sets the message attribute the argument explanation.
  # @param [String] explanation: explains the exception raised.
  def message=(explanation)
  end

end
