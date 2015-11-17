#############################
########                    #
########    General         #
########                    #
Given(/^I am on the Front Page screen$/) do
    page(HomePage).await
end

#############################
########                    #
########    00-LoginPage    #
########                    #
#############################

Given(/^I am on the Login screen$/) do
  page(LoginPage).nav_to
end

Given(/^I enter "(.*?)" login credentials$/) do |type|
  	page(LoginPage).login_to_system(type)
end

Given(/^I see the alert message "(.*?)"$/) do |alert|
  page(LoginPage).alerter(alert)
end

Given(/^I do not see the Front Page screen$/) do
  page(LoginPage).athome
end

###############################
########                      #
########  01-Front/Home Page  #
########                      #
###############################

Given(/^I select the Menu icon$/) do
  page(HomePage).choose_menu
end
Given(/^I touch (Menu|Refresh|Stack) on the tab bar$/) do |choice|
  page(HeaderTabBarPage).director(choice)
end
Given(/^I see the Hacker News App menu$/) do
  page(HeaderTabBarPage).menu_check
end
Given(/^I pause for 2 seconds$/) do
  sleep 2
end
Given(/^I see the screen contrast change$/) do
  page(HeaderTabBarPage).sun_screen
end
Given(/^I see the text size adjust$/) do
  page(HeaderTabBarPage).text_adjust
end

Given(/^I touch the story$/) do 
  page(HomePage).choose_row
end
################################
########                       #
########    04-Menu            #
########                       #
################################
Given(/^I touch the (Front Page|Ask|Best|Active|New|Submit|Settings|About|Login) button$/) do |choice|
  page(MenuPage).director(choice)
end

################################
########                       #
########    02-Search          #
########                       #
################################
Given(/^I touch the magnifying glass icon$/) do
  page(SearchPage).touch_glass
end
Given(/^I select Update on the Edit Profile screen$/) do 
  page(SearchPage).update.click
end
Given(/^I enter "(.*?)" into the Search field$/) do |text|
 page(SearchPage).search_criteria(text)
end
Given(/^I successfully enter search criteria$/) do
  page(SearchPage).searcher
end
Given(/^I successfully search$/) do
  page(SearchPage).tiny_search
end
##################################