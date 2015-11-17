

#require 'calabash-cucumber/launcher'


#APP_BUNDLE_PATH = "~/Library/Developer/Xcode/DerivedData/newsyc-hffmfirwfnwtebfqxieaxdiqmjko/Build/Products/Debug-iphonesimulator/newsyc.app"
# You may uncomment the above to overwrite the APP_BUNDLE_PATH
# However the recommended approach is to let Calabash find the app itself
# or set the environment variable APP_BUNDLE_PATH

Before do |scenario|
  ENV['RESET_BETWEEN_SCENARIOS'] = '1'
end

After do |scenario|
 
end

at_exit do
 
end
