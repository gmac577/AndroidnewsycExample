require 'calabash-android/abase'
require 'calabash-android/operations'

extend Calabash::Android::Operations

class StoryPage < Calabash::ABase
	
   
  def trait
    "* text:'Story Page'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end

def press_back_button
	#default_device.adb_command shell input keyevent 4
	system("adb shell input keyevent 4")
end

def press_browser_button
	#default_device.adb_command shell input tap 758 1287
	system("adb shell input tap 758 1287")
end

def enter_name
	system("adb shell input keyevent 51")
	system("adb shell input keyevent 29")
	system("adb shell input keyevent 53")
	system("adb shell input keyevent 66")
end

	#elements
	@@getmenu= "* id:'cnt_up'"
	@@yicon = "* id:'icv_up_indicator'"
	@@article = "* id:'tab_article'"
	@@refresh = "* id:'cnt_buttons'"
	@@threedots = "* id:'icv_overflow'"
	@@poster = "* id:'viewpager'"
	@@upvote = "* id:'btn_upvote'"
	@@txtpoints = "* id:'txt_points'"
	@@profile = "* id:'cnt_controls'"
	@@sharebtn = "* id:'icv_share'"
	@@browsebtn = "* id:'btn_browser'"
	@@cancelbtn = "* id:'btn_cancel'"
	@@sharetitle  = "* text:'Share story'"

	##############################################
	##   these elements cannot be used directly  #
	##   they must be used inside of methods     #
	##############################################
	##  @@articlebtn = query("* id:'txt'")[0]   ##
	##    @@hnpage = query("* id:'txt'")[1]     ##
	##  @@messagesbtn = query("* id:'txt'")[2]  ##
	##   @@memobtn = query("* id:'txt'")[5]     ##
	##   @@plusbtn = query("* id:'txt'")[7]     ##
	##############################################



def orig_article
	touch(@@article)
	sleep 2
end

def dancing_man
	touch(@@browsebtn)
end

def in_chrome
	press_browser_button
	sleep 2
end

def go_back
	press_back_button
	sleep 2
end

 def choose_story
	touch(query("* id:'cnt_story'")[3])
 end

def forward_article
	touch(@@sharebtn)
end

def share_options(choice)
	case choice
		when "Article" then touch(query("* id:'txt'")[0])
		when "HN Page" then touch(query("* id:'txt'")[1])
	end
end

def move_screen
	performAction('drag', 50, 50, 90, 70, 10)
end

def cancel
	touch(@@cancelbtn)
end

def title_check
	wait_for_elements_exist([@@sharetitle], :timeout => 20)
end

def y_touch
	touch(@@yicon)
end
end