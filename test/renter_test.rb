require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/dock'
require './lib/renter'

class TestRenter < Minitest::Test

  def test_it_exists
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_instance_of Renter, renter
  end

  def test_it_has_a_name_and_CC_number
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_equal "Patrick Star", renter.name
    assert_equal "4242424242424242", renter.credit_card_number
  end
end
