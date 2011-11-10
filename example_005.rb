require 'eventmachine'

long_operation = proc do 
  puts "#{Time.now} Sleeping for 5 seconds..."
  sleep 5
end

callback_for_long_operation = proc do
  puts "#{Time.now} Woke up from sleep."
  EM.stop
end

EM.run do
  EM.defer(long_operation, callback_for_long_operation)
end


