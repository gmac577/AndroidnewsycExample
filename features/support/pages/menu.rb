require 'calabash-android/abase'

class MenuPage < Calabash::ABase
	
   
  def trait
    "* text:'Hacker News 2'"
  end

  def await(opts={})
    wait_for_elements_exist([trait])
    self
  end
		#elements
	@@getmenu= "* id:'cnt_up'"
	@@menulogin = "* id:'login_button'"
	@@hometitle = "* text:'Hacker News 2'"

 	@@sender = " "
  @@title = " "

	#--------------------------------------

	def director(choice)
        sleep 2
        wait_for_elements_exist([@@hometitle], :timeout => 20)

        case choice
            when "Front Page" then 
              @@sender = query("checkableView")[0]
              touch(@@getmenu)
              @@title = "Front Page"
            when "Ask" then 
              @@sender = query("checkableView")[1]
              @@title = "Ask"
            when "Best" then 
              @@sender = query("checkableView")[2]
              @@title = "Best"
            when "Active" then 
              @@sender = query("checkableView")[3]
              @@title = "Active"
            when "New" then 
              @@sender = query("checkableView")[4]
              @@title = "New"
            when "Submit" then 
              @@sender = query("checkableView")[5]
              @@title = "Login"
            when "Settings" then 
              @@sender = query("checkableView")[6]
              @@title = "Settings"
            when "About" then 
              @@sender = query("checkableView")[7]
              @@title = "About"
            when "Login" then 
              @@sender = query("checkableView")[8]
              @@title = "Login"
        end
            if @@title.include? "Front Page" then
              sleep 5
              @@gettitle = query("* id:'txt_actionbar_title'", :text)
            else
              touch @@sender
              sleep 5
              @@gettitle = query("* id:'txt_actionbar_title'", :text)
            end

           if @@gettitle.include? @@title then
              touch(@@getmenu)
            else
              fail
              puts "Title does not match menu entry!"
            end
        sleep 3
   end


   end