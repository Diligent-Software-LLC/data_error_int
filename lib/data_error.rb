# Copyright (C) 2019 Diligent Software LLC. All rights reserved. Released
# under the MIT License.

require "data_error/version"

class DataError < ArgumentTypeError

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
