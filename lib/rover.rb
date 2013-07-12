class Rover
  attr_accessor :direction
  attr_writer   :position

  def initialize(options = {})
    @direction = options[:direction]
    @position  = options[:position]
  end
end
