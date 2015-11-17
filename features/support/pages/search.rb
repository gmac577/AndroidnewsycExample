require 'calabash-android/abase'

class SearchPage < Calabash::ABase
	
   
  def trait
    "* text:'Front Page'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end
		#elements
	@@getmenu= "* id:'cnt_up'"
	@@menulogin = "* id:'login_button'"
	@@hometitle = "* text:'Front Page'"
	@@getstory = " "
	

