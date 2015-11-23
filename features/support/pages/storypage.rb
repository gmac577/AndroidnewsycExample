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
	@@thetitle = " "
	@@abouttab = "* id:'tab_about'"
	@@subtab = "* id:'tab_submissions'"
	@@threadstab = "* id:'tab_threads'"

############################################
##                                        ##
##  Methods for running scenarios go here ##
##                                        ##
############################################
def read_article
	orig_article
	dancing_man
	in_chrome
	go_back
	go_back
end
#------------------------------------------->
def share_story
	forward_article
	title_check
	share_options("Article")
	share_options("HN Page")
	move_screen
	cancel
	y_touch
end
#------------------------------------------->
def profile_look
	profile_touch
	mnu_check("Submissions")
	view_header("Submissions")
	mnu_check("Threads")
	view_header("Threads")
	mnu_check("About")
	view_header("About user")
	go_back
	go_back
end
#------------------------------------------->
#############################################
def orig_article
	touch(@@article)
	sleep 2
end

def dancing_man
	touch(@@browsebtn)
end

def profile_touch
	touch(@@profile)
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
	perform_action('drag', 50, 50, 90, 70, 10)
end

def cancel
	touch(@@cancelbtn)
end

def title_check
	wait_for_elements_exist([@@sharetitle], :timeout => 20)
end

def view_header(check)
	case check
	when "About user" then
		@@thetitle = "About user"
	when "Submissions"
		@@thetitle = "Submissions"
	when "Threads"
		@@thetitle = "Threads"
   end

	@@gettitle = query("* id:'txt_actionbar_title'",:text)
	
	@@thetitle = @@thetitle.to_s
	@@gettitle = @@gettitle.to_s

	if @@gettitle.include? @@thetitle then
       puts @@gettitle
    else
       fail
       puts "Title does not match menu entry!"
    end
end


def mnu_check(check)
	case check
	when "About" then
		touch(@@abouttab)
	when "Submissions"
		touch(@@subtab)
	when "Threads"
		touch(@@threadstab)
	end
end

def y_touch
	touch(@@yicon)
end
end