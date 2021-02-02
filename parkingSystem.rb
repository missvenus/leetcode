class ParkingSystem

=begin
    :type big: Integer
    :type medium: Integer
    :type small: Integer
=end
  def initialize(big, medium, small)
    @big = big
    @medium = medium
    @small = small
  end


=begin
    :type car_type: Integer
    :rtype: Boolean
=end
  def add_car(car_type)
    if car_type == 1 && @big > 0
      @big -= 1
      true
    elsif car_type == 2 && @medium > 0
      @medium -= 1
      true
    elsif car_type == 3 && @small > 0
      @small -= 1
      true
    else
      false
    end
  end
end

output = []

output << parkingSystem = ParkingSystem.new(1,1,0)
output << parkingSystem.add_car(1)
output << parkingSystem.add_car(2)
output << parkingSystem.add_car(3)
output << parkingSystem.add_car(1)

puts output
