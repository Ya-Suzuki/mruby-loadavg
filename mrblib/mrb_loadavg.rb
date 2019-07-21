class Loadavg
  attr_reader :one_minute, :five_minutes, :fifteen_minutes

  def initialize
    result = File.open('/proc/loadavg', 'r').readline.split(' ')
    @one_minute = result[0]
    @five_minutes = result[1]
    @fifteen_minutes = result[2]
  end
end
