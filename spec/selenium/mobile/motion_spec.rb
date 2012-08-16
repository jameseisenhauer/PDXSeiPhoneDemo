require 'spec_helper'
require_relative 'pages/signIn_page'
require_relative 'pages/hub_page'
require_relative 'pages/motion_page'


describe "Mobile Web Motion Test" do
    attr_reader :driver
    

   # create all page objects instances for this test here
   before(:all) do
    @signInPage = SignInPage.new(@driver)
    @hubPage = HubPage.new(@driver)
    @motionPage = MotionPage.new(@driver)
   end
   

#start tests here

	it "Can sign-in" do
	@signInPage.sign_in('hbhtst+hans@gmail.com','password')
	@hubPage.signOut_link.displayed?.should == true
	end

   
  it "Can view Motion Track" do
  @hubPage.motion_link.click
  @motionPage.history_btn.displayed?.should == true
  end

  it "Can view Motion Compare" do
  @motionPage.compare_link.click
  @motionPage.compare_today_link.displayed?.should == true
  end

  it "Can view Motion Settings" do
  @motionPage.settings_link.click
  @motionPage.settings_dailygoal_link.displayed?.should == true
  end




  it "Can sign-out" do
	@hubPage.sign_out
	@signInPage.email_field.displayed? == true



    end
    

end