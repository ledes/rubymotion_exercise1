class Stroke
  attr_reader :points, :color

  def initialize(start_point, color)
    @points = [ start_point]
    @color = color
  end

  def add_point(point) # It add points to the Stroke object
    points << point
  end

  def start_point
    points.first
  end
end
