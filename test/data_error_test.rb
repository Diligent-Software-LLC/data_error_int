require "test_helper"

class DataErrorTest < Minitest::Test

def test_that_it_has_a_version_number
    refute_nil ::DataError::VERSION
  end

end
