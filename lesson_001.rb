require 'eventmachine'

EM.run do
  puts "The eventmachine reactor started. Press Ctrl-C."
end

puts "This will never be printed."

