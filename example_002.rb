# Check if the reactor is running
require 'rubygems'
require 'eventmachine'

class SomeRandomLibrary
  def self.function
    raise "The EM reactor is not running" unless EM.reactor_running?
    puts "The reactor is running. Now press Ctrl-C."
  end
end

begin
  SomeRandomLibrary::function
rescue => e
  puts "Error: #{e.class} Message: #{e.message}"
  puts
  puts "Starting eventmachine"
  puts
  EM.run do
    SomeRandomLibrary::function
  end
end
