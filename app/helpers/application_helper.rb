module ApplicationHelper
  def total
    total = 0
    @bookings.for_each do |booking|
      total += booking.material.price
    end
    return total
  end
end
