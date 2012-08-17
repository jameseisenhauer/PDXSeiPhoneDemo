require 'spec_helper'
require_relative 'pages/signIn_page'
require_relative 'pages/hub_page'


describe "Mobile Web Sign-In Test" do
    attr_reader :driver
    

   # create all page objects instances for this test here
   before(:all) do
    @signInPage = SignInPage.new(@driver)
    @hubPage = HubPage.new(@driver)
   end
   

#start tests here

	it "Can sign-in" do
	@signInPage.sign_in('hbhtst+hans@gmail.com','passpass')
	@hubPage.signOut_link.displayed?.should == true
	end

    



    it "Can sign-out" do
	@hubPage.sign_out
	@signInPage.email_field.displayed? == true



    end
    

end