# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

# DataErrorInt.
# @abstract
# @class_description
#   A DataError exception class interface.
# @attr message [String]
#   An error explanation.
class DataErrorInt < TypeError

  DEFAULT_MESSAGE = "The argument was neither a Numeric, FalseClass, " +
      "TrueClass, Symbol, or NilClass object.".freeze()

  # initialize(message = DEFAULT_MESSAGE).
  # @description
  #   Initializes an error.
  # @param message [String]
  #   An error explanation. Defaults the default message.
  # @return [DataError]
  #   The error instance.
  def initialize(message = DEFAULT_MESSAGE)
  end

  # message().
  # @description
  #   Gets message.
  # @return [String]
  #   The error message reference.
  def message()
  end

  private

  # message=(explanation = nil).
  # @description
  #   Sets message.
  # @param explanation [String]
  #   The error message.
  # @raise [ArgumentError]
  #   In the case the explanation is not a String instance.
  def message=(explanation = nil)
  end

end
