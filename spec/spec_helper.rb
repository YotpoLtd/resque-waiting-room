require 'spork'
require 'rr'
require 'resque'
require 'resque/plugins/waiting-room'

Spork.prefork do
  spec_dir = File.dirname(__FILE__)
  lib_dir  = File.expand_path(File.join(spec_dir, '..', 'lib'))
  $:.unshift(lib_dir)
  $:.uniq!
  RSpec.configure do |config|
    config.mock_with :rr
  end
end
