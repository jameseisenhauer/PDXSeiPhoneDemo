class HubPage


def initialize(driver)
@driver = driver
end



# page elements
def hub_link
   @driver.find_element(:link, "Hub")
end
def challenges_link
   @driver.find_element(:link, "Challenges")
end
def motion_link
   @driver.find_element(:link, "Motion")
end
def signOut_link
   @driver.find_element(:link, "Sign Out")
end





# page methods/actions

def sign_out
	self.hub_link.click
	self.signOut_link.click
end

end


