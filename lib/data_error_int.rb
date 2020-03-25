# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require_relative 'data_error_int/version'

# DataErrorInt.
# @abstract
#   A DataError exception class interface.
class DataErrorInt < TypeError

  ACCEPTABLE_TYPES = ['Numeric', 'FalseClass', 'TrueClass', 'Symbol',
                      'String', 'Time', 'NilClass'].freeze()
  DEFAULT_MESSAGE  = "The argument was neither a Numeric, FalseClass, " +
      "TrueClass, Symbol, String, Time, or NilClass object.".freeze()

  # initialize(message = DEFAULT_MESSAGE).
  # @abstract
  #   Constructor. Initializes an error object.
  # @param [String] message
  #   An error explanation. Defaults the default message.
  # @return [DataError]
  #   The error instance.
  def initialize(message = DEFAULT_MESSAGE)
  end

  # message().
  # @abstract
  #   Gets the error message.
  # @return [String] message
  #   The error message.
  def message()
  end

  private

  # message=(explanation = nil).
  # @abstract
  #   Sets the error's message.
  # @param [String] explanation
  #   The error message. In the case the explanation is not a String
  # instance, raises an ArgumentError.
  def message=(explanation = nil)
  end

end
