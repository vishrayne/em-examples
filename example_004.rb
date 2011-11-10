require 'eventmachine'

EM.run do
  EM::Iterator.new(0..10, 2).each do |num, iter|
    puts num
    EM.add_timer(1) { iter.next }
  end
end

