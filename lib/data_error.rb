require "data_error/version"

class DataError < ArgumentTypeError

  # initialize(message = nil)
  # @abstract: the constructor.
  def initialize(message = nil)
  end

  # message().
  # @abstract: getter method. Gets and returns the explanation.
  def message()
  end

  # try(argument_type).
  # @abstract: in the case the object is a data type instance, raises.
  # @param argument_type: an unknown type object.
  def try(argument_type)
  end

  private

  # message=(explanation).
  # @abstract: setter method. Sets the message attribute the argument explanation.
  # @param explanation: a String. Explains the exception raised.
  def message=(explanation)
  end

  # choose(explanation).
  # @abstract: choose the appropriate explanation. In the case no message was
  # argued, the default message is the message.
  # @param explanation: a String. Explains the exceptions.
  def choose(explanation)
  end

  # type?(presumed_data).
  # @abstract: boolean method. In the case the presumed data object is an
  # unacceptable data type or a data structure, returns false. Otherwise,
  # returns true.
  # @param presumed_data: an unknown type object.
  def type?(presumed_data)
  end

end
