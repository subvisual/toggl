require 'rubygems'
require 'rspec'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'toggl'

file_name = "configs.yml"
if File.exist?(file_name)
  TOGGL_TOKEN = YAML.load_file(file_name)["toggl_token"]
end

