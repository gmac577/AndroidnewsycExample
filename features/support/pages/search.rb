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
	@@magnifier = "* id:'icv_search'"
	@@magglass = "* id:'cnt_buttons'"
	@@hometitle = "* text:'Front Page'"
	@@searchbox = "* id:'edit_search'"
	@@searchterm = "Microsoft"
	@@sortbtn = " "
	@@searchtype = " "
	@@datebtn = "* marked:'Date'"
	@@relevancebtn = "* marked:'Relevance'"
	@@allbtn = "* marked:'All'"
	@@storybtn = "* marked:'Stories'"
	@@commentsbtn = "* marked:'Comments'"
	@@usersbtn = "* marked:'Users'"
	@@errorbtn = "* id:'btn_error'"
	
#--------------------------------------------->

def searcher
	touch_glass
	search_criteria
end

def touch_glass
	touch(@@magnifier)
end

def search_criteria
	touch(@@searchbox)
 	enter_text(@@searchbox, @@searchterm)
 	sleep 2
 	touch query("fontText")[1]
 	sleep 2
 	touch(@@datebtn)
 	sleep 2
 	touch (@@allbtn)
 	sleep 2
 	touch(@@storybtn)
 	sleep 2
 	touch(@@magglass)
 	sleep 2
end 

def tiny_search
	touch(@@searchbox)
 	enter_text(@@searchbox, @@searchterm)
 	sleep 2
 	touch(@@magnifier)
 	sleep 2
end 


end