describe Painting do
  before do
    @point1 = CGPoint.new(10, 40)
    @point2 = CGPoint.new(20, 35)
    @point3 = CGPoint.new(30, 30)
    @point4 = CGPoint.new(40, 20)

    @painting = Painting.new
  end

  describe "#start_stroke" do
    it "starts new strokes" do
      @painting.start_stroke(@point1, UIColor.redColor)
      @painting.start_stroke(@point2, UIColor.blueColor)

      @painting.strokes.length.should == 2

      @painting.strokes[0].points.should == [ @point1 ]
      @painting.strokes[0].color.should == UIColor.redColor
      @painting.strokes[1].points.should == [ @point2 ]
      @painting.strokes[1].color.should == UIColor.blueColor
    end
  end

  describe "#continue_stroke" do
    it "adds points to the current strokes" do
      @painting.start_stroke(@point1, UIColor.redColor)
      @painting.continue_stroke(@point2)
      @painting.start_stroke(@point3, UIColor.blueColor)
      @painting.continue_stroke(@point4)

      @painting.strokes[0].points.should == [ @point1, @point2 ]
      @painting.strokes[1].points.should == [ @point3, @point4 ]
    end
  end
end
