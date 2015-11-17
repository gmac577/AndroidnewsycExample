require 'calabash-android/abase'

class HomePage < Calabash::ABase
	
   
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
	

def choose_menu
	page(HeaderTabBarPage).director("Menu")
	page(HeaderTabBarPage).menu_check
	page(HeaderTabBarPage).director("Menu")
	page(HomePage).await
end

 def choose_row
 		article_name =  query("* id:'txt_title'", :text)[3]
		touch(query("* id:'cnt_story'")[3])
 		verify_title(article_name)
 end

def verify_title(article_name)
	sleep 2
	title = query("* id:'txt_title'", :text)[0]
   	sleep 5
    wait_for(:timeout => 10,:timeout_message => "Name of '#{article_name}' not found.  It says '#{title}'") do
           if title == article_name then
           	sleep 2
           	touch(@@getmenu)
           	await
           else
           	puts "Title does not match!"
           break
          end
       end
end



end