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

Given(/^I see the alert message$/) do
  page(LoginPage).alerter
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

################################
########                       #
########    03-Story           #
########                       #
################################
Given(/^I touch the Original Article icon$/) do
  page(StoryPage).orig_article
end
Given(/^I touch the Dancing Man Icon$/) do 
  page(StoryPage).dancing_man
end
Given(/^I touch Just once$/) do
  page(StoryPage).in_chrome
end
Given(/^I touch the back button$/) do
  page(StoryPage).go_back
end
Given(/^I choose the story I want to read$/) do
  page(StoryPage).choose_story
end
Given(/^I touch the Forward Article icon$/) do
  page(StoryPage).forward_article
end
Given(/^I touch the (Article|HN Page) button$/) do |choice|
  page(StoryPage).share_options(choice)
end
Given(/^I scroll through the options$/) do
  page(StoryPage).move_screen
end
Given(/^I touch the X$/) do
  page(StoryPage).cancel
end
Given(/^I am on the Share story screen$/) do
  page(StoryPage).title_check
end
Given(/^I see the (About user|Submissions|Threads) header$/) do |check|
  page(StoryPage).view_header(check)
end
Given(/^I touch the Y icon$/) do
  page(StoryPage).y_touch
end
Given(/^I see the Profile icon$/) do
  page(StoryPage).profile_touch
end
Given(/^I tap the (Submissions|Threads|About) button$/) do |check|
  page(StoryPage).mnu_check(check)
end
Given(/^I navigate to the article$/) do
  page(StoryPage).read_article
end
Given(/^I successfully share the story$/) do
  page(StoryPage).share_story
end
Given(/^I navigate to the poster's profile$/) do
  page(StoryPage).profile_look
end
##################################