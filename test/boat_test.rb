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

  def test_it_defaults_to_zero_hours_rented
    kayak = Boat.new(:kayak, 20)

    assert_equal 0, kayak.hours_rented
  end

  def test_it_increments_hours_rented_when_you_add_hour
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    kayak.add_hour

    assert_equal 3, kayak.add_hour
  end

  def test_adding_hours_changes_hours_rented
    kayak = Boat.new(:kayak, 20)
    kayak.add_hour
    kayak.add_hour
    kayak.add_hour

    assert_equal 3, kayak.hours_rented
  end

end
