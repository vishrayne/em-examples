require 'eventmachine'


EM.run do
  EM.add_timer(8) { EM.stop }

  n = 0
  timer = EventMachine::PeriodicTimer.new(1) do
    puts "the time is #{Time.now}"
    if (n+=1) > 5
      puts "the timer has been cancelled"
      timer.cancel
    end
  end
end


