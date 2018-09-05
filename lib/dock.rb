require 'pry'
class Dock

  attr_reader :name,
              :max_rental_time,
              :revenue,
              :boats_rented,
              :boats_returned

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @revenue = 0
    @boats_rented = []
    @boats_returned = []
  end

  def rent(boat_obj, renter_obj)
    @boats_rented << boat_obj
    boat_obj.add_renter(renter_obj)
  end

  def log_hour
    @boats_rented.each do |boat|
      if boat.hours_rented < max_rental_time
        @revenue += boat.price_per_hour
        boat.add_hour
      end
    end
  end

  def return(boat_obj)
    @boats_rented.delete(boat_obj)
    @boats_returned << boat_obj
  end

  def charges
    hash = {}
    cc_number = []
    cc_number << @boats_returned.each do |boat|
      boat.renter.each do |renter|
        renter.credit_card_number
      end
    end
  end

  def total_hours_by_rental_type
  end

end
