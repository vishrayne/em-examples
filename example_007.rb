require 'eventmachine'

random_numbers_queue = EM::Queue.new

cube = proc do |item|
  puts "#{Time.now} Popped from queue #{item} and computed cube => #{item ** 3}"
  random_numbers_queue.pop(&cube) # <= recursive proc
end

EM.run do
  EM::PeriodicTimer.new(0.5) { random_numbers_queue.push(rand) }
  EM.add_timer(10)         { EM.stop }
  random_numbers_queue.pop(&cube)
end


