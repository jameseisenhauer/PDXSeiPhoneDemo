class PageNamePage


def initialize(driver)
	@driver = driver
end



# page elements
def elementname_field
    @driver.find_element(:id, "elementid")
end



# page methods/actions

def actionname
	@driver.get "#{::MSITE}/somepage"

	
end




end