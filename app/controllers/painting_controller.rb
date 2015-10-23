class PaintingController < UIViewController
  #extend IB adds several methods to your controller, including outlet
  extend IB

  #Outlets allow you to connect objects to your controller in Interface Builder.

  outlet :black_button
  outlet :purple_button
  outlet :green_button
  outlet :blue_button
  outlet :white_button

  def select_color(sender)
  end

end
