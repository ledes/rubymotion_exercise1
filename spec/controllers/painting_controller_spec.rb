describe PaintingController do
  tests PaintingController, storyboard: "main", id: "PaintingController"

  describe "#black_button" do
    it "is connected in the storyboard" do
      controller.black_button.should.not.be.nil
    end
  end

  describe "#green_button" do
    it "is connected in the storyboard" do
      controller.green_button.should.not.be.nil
    end
  end

  describe "#purple_button" do
    it "is connected in the storyboard" do
      controller.purple_button.should.not.be.nil
    end
  end

  describe "#blue_button" do
    it "is connected in the storyboard" do
      controller.blue_button.should.not.be.nil
    end
  end

  describe "#white_button" do
    it "is connected in the storyboard" do
      controller.white_button.should.not.be.nil
    end
  end
end
