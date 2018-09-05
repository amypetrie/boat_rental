require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class TestBoat < Minitest::Test

  def test_it_exists
    kayak = Boat.new(:kayak, 20)

    assert_instance_of Boat, kayak
  end

  def test_it_returns_type
    kayak = Boat.new(:kayak, 20)

    assert_equal :kayak, kayak.type
  end

  def test_it_returns_price_per_hour
    kayak = Boat.new(:kayak, 20)

    assert_equal 20, kayak.price_per_hour
  end

end
