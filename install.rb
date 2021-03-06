# This is the post install hook for when Loggr is installed as a plugin.
require 'fileutils'
  
# puts IO.read(File.join(File.dirname(__FILE__), 'README'))

config_file = File.expand_path("#{File.dirname(__FILE__)}/../../../config/loggr.yml")
example_config_file = "#{File.dirname(__FILE__)}/loggr.yml"

if File::exists? config_file
  puts "Loggr config file already exists. Please ensure it is up-to-date with the current format."
  puts "See #{example_config_file}"
else  
  puts "Installing default Loggr config."
  puts "  From #{example_config_file}"
  puts "For loggr to work you need to configure your API key."
  puts "  See #{example_config_file}"
  puts "If you don't have an API key, get one at http://loggr.net/."
  FileUtils.copy example_config_file, config_file
end
