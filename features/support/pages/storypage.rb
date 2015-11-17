require 'calabash-android/abase'

class StoryPage < Calabash::ABase
	
   
  def trait
    "* text:'Front Page'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

 end