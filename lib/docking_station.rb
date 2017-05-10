require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_a_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock_a_bike(bike)
    fail 'No space available' if @bike
    @bike = bike
  end
end
