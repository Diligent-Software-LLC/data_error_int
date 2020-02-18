# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require "data_error/version"

class DataError < ArgumentTypeError

  # self.acceptable?(argument_value).
  # @abstract:
  # Class method. Verifies an object is an acceptable data type.
  # @return: true in the case the argument is acceptable data, and false
  # otherwise.
  def self.acceptable?(argument_value)
  end

  # initialize(message = nil)
  # @abstract:
  # The constructor.
  def initialize(message = nil)
  end

  # message().
  # @abstract:
  # Getter method. Gets and returns the explanation.
  def message()
  end

  # raise_exception(argument_type).
  # @abstract:
  # In the case the object is a data type instance, raises.
  # @param argument_type: an unknown type object.
  def raise_exception(argument_type)
  end

  private

  # message=(explanation).
  # @abstract:
  # Setter method. Sets the message attribute the argument explanation.
  # @param explanation: a String. Explains the exception raised.
  def message=(explanation)
  end

end
