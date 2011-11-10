require 'eventmachine'

module LsHandler
  def initialize(arg)
    @arg = arg
  end

  def post_init
    send_data "#{@arg}\n"
  end

  def receive_data(data)
    puts "Output: #{data.split.inspect}"
  end

  def unbind
    puts "Command `ls #{@arg}` exited with status: #{get_status.exitstatus}"
  end
end

EM.run do
  EM.add_timer(2) { EM.stop }
  EM.popen("ls", LsHandler, ".")
end
