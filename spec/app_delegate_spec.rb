
describe AppDelegate do
  describe "#application:didFinishLaunchingWithOptions:" do

    before do
      @app = UIApplication.sharedApplication
    end

    it "creates the window" do
      @app.windows.size.should == 1
    end

    it "makes the window key" do
      @app.windows.first.isKeyWindow.should.be.true
    end

    it "sets the root view controller" do
      @app.windows.first.rootViewController.should.be.instance_of UIViewController
    end
  end
end
