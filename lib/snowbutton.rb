require "snowbutton/version"
require "compass"

base_directory = File.join(File.dirname(__FILE__))
Compass::Frameworks.register('pixie_sass', :path => base_directory)

module Snowbutton
  # Your code goes here...

end
