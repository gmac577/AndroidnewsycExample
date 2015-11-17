require 'calabash-android/abase'

class LoginPage < Calabash::ABase
	
   
  def trait
    "* id:'txt_actionbar_title'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end
		#elements
	@@username= "* id:'edit_username'"
	@@password = "* id:'edit_password'"
	@@loginbtn = "* id:'btn_login'"
	@@logoutbtn = "* text:'Logout'"
	@@message= "* id:'message'"
	@@alerter = "Login failed. Please check your network connection, username, and password, then try again."
	@@title= "* id:'txt_actionbar_title'"
	@@getmenu= "* id:'cnt_up'"
	@@menulogin = "* id:'login_button'"
	@@hometitle = "* text:'Front Page'"
	@@validname = "waynegee211"
	@@validpass = "geeBiz211"
	@@invalidname = "waynegeezy211"
	@@invalidpass = "geeBizNiz211"
	@@blankname = ""
	@@blankpass = ""


 def nav_to
 	wait_for_elements_exist(@@hometitle)
 	sleep 2
 	touch(@@getmenu)
 	sleep 2
 	touch(@@menulogin)
 	sleep 2
 end

 def login_to_system(type)
 	 case type
        when "valid" then
            puts "valid"
 			vname = @@validname
	 		vpass = @@validpass
 	    when "invalid" then
 			puts "invalid"
 			vname = @@invalidname
 			vpass = @@invalidpass
 		when "blank" then
 			puts "blank"
 			vname = @@blankname
 			vpass = @@blankpass
 		end
	touch(@@username)
 	enter_text(@@username, vname)
 	sleep 2
 	performAction('drag', 50, 50, 90, 70, 10)
 	touch(@@password)
 	enter_text(@@password, vpass)
 	sleep 2
 	performAction('drag', 50, 50, 90, 70, 10)
 	touch(@@loginbtn)
end

 	def alerter(alert)
 		if not alert.include? @@alerter
 	  	fail
 	end
end

	def athome
		wait_for_elements_exist(@@title)
	end


end