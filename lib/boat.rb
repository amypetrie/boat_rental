class Boat

  attr_reader :type,
              :price_per_hour,
              :hours_rented,
              :renter

  def initialize(type, price_per_hour)
    @type = type
    @price_per_hour = price_per_hour
    @hours_rented = 0
    @renter = []
  end

  def add_hour
    @hours_rented += 1
  end

  def add_renter(renter_obj)
    @renter << renter_obj
  end

end
