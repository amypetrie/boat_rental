require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/dock'
require './lib/renter'

class TestDock < Minitest::Test

  def test_it_exists
    dock = Dock.new("The Rowing Dock", 3)

    assert_instance_of Dock, dock
  end

  def test_it_has_a_name_and_CC_number
    dock = Dock.new("The Rowing Dock", 3)

    assert_equal "The Rowing Dock", dock.name
    assert_equal 3, dock.max_rental_time
  end

end
